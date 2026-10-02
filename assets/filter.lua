-- Pandoc filter used by build.sh
--
-- 1. Rewrite relative links to .md files so they point to the generated
--    .html pages (index.md -> index.html, foo.md#bar -> foo.html#bar).
-- 2. Convert pandoc's GitHub alert divs (> [!NOTE] etc.) to the markup
--    expected by github-markdown-css.

local alerts = {
  note = true, tip = true, important = true, warning = true, caution = true,
}

function Link(el)
  if not el.target:match("^%a[%w+.-]*:") then
    el.target = el.target:gsub("%.md$", ".html"):gsub("%.md#", ".html#")
  end
  return el
end

function Div(el)
  local kind = el.classes[1]
  if not alerts[kind] then
    return nil
  end

  local blocks = el.content
  local first = blocks[1]
  if first and first.t == "Div" and first.classes[1] == "title" then
    local title = pandoc.utils.stringify(first)
    blocks[1] = pandoc.RawBlock("html",
      '<p class="markdown-alert-title">' .. title .. '</p>')
  end

  return pandoc.Div(blocks,
    pandoc.Attr("", {"markdown-alert", "markdown-alert-" .. kind}))
end
