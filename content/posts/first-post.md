+++
title = "Emacs orgmode og Hugo"
author = ["Aasmund Kvamme"]
date = 2025-10-25
draft = false
+++

## Om det tekniske oppsettet for bloggen {#om-det-tekniske-oppsettet-for-bloggen}

Oppsettet av prosessen Emacs orgmode -&gt; Hugo -&gt; Github er ikkje heilt rett fram, men i prinsippet går det slik:


### Emacs {#emacs}

Eg må ha dette installert:

-   [orgmode](https://orgmode.org) (for skrivinga)
-   ox-hugo (for eksporten til [Hugos](https://gohugo.io) markdown-format)


### Hugo {#hugo}

Det lettaste er å installere det i WSL: `sudo apt install hugo`


### Github {#github}

Her var det flest problem, men det løyser seg til slutt. For mange kommandoar til å liste kort her.


### MathJax {#mathjax}

Dette vart løyst; sjå denne.


## Vidare utvikling (i Emacs) {#vidare-utvikling--i-emacs}

Eg kan tenkje meg å utvikle snarvegar for <code>[0/2]</code>

-   [ ] Automatisering av "front matter". No må eg
    -   Opne ei fil i rett sti (`//wsl.localhost/Ubuntu-22.04/home/aasmund/kvammeselvik/content`)
    -   Kopiere inn "front matter" frå ei anna fil
    -   Rette opp felta #+TITLE og #+Date
-   [ ] Enklare git til Github. No må eg køyre dei tre kommandoane
    -   `git add .`
    -   `git commit -m "Tekst"`
    -   `git push`


## Ting å sjekke ut <code>[2/4]</code> {#ting-å-sjekke-ut}

-   [ ] Korleis kan eg lenke mellom ulike postar?
-   [ ] Korleis setje inn bilete?
-   [X] Korleis kan eg endre versjon av Ubuntu i WSL frå heimePC til jobbPC?
-   [X] Korleis kan eg autorisere meg frå jobbPC?
