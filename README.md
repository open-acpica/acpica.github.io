# acpica.github.io
ACPICA webpage sources hosted on github

The pages are rendered from markdown with pandoc (see build.sh) and deployed
by the .github/workflows/static.yml workflow. To preview locally:

    ./build.sh && xdg-open _site/index.html
