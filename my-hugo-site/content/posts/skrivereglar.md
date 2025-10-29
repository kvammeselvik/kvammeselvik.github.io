+++
title = "Skrivereglar My New Post"
author = ["Aasmund Kvamme"]
date = 2025-10-28
draft = false
+++

## Ulike skrivereglar i Orgmode {#ulike-skrivereglar-i-orgmode}


### Front matter {#front-matter}

Dette er kommandoar eg kan skrive i orgmode for å ein tilsvarande kommando i front matter i .md-fila.

| .md                         | .org                        |
|-----------------------------|-----------------------------|
| #+title: My New Post        | title = "My New Post"       |
| #+date: 2025-10-27          | date = 2025-10-27           |
| #+hugo_draft: true          | draft = true                |
| #+hugo_tags: emacs, orgmode | tags = ["emacs", "orgmode"] |
|                             |                             |

\#+

This is a draft post — it won’t be published until I set
\`#+hugo_draft: false\` or remove that line.

~~+~~

date = 2025-10-27
draft = true

~~+~~
