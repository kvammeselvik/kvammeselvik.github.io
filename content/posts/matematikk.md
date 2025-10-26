+++
title = "Matematikk på nettsider"
author = ["Aasmund Kvamme"]
date = 2025-10-26
draft = false
+++

## Innleiing {#innleiing}

Det er notorisk vanskeleg å skrive matematikk og tekst saman. Vanleg tekst er _eindimensjonal_ i den forstand at teksten flyt i ei retning (langs tekstlina). At vi bryt teksten inn i separate liner gjer ingen ting; alle linene er like høge, så tekstbiletet vert uniformt og harmonisk. Ingen bokstavar / symbol / teikn går høgare enn dei andre, eller lågare enn dei andre.

Når vi får inn ein matematisk formel vert alt litt annleis. Det er svært få matematiske uttrykk som held seg innanfor øvre og nedre grense for bokstavane. Berre sjå på dette: \\(\frac{1}{2}\\)x eller denne: \\(\int\_0^k f(x)dx\\). Det eit godt typografisk verktøy (som \\(\LaTeX\\) gjer er å gje dei linene som treng det litt ekstra plass over og under, slik at ingen av dei matematiske formlane "stanger" borti kvarandre.

Men det store problemet kjem når vi skal vise matematiske formlar på nettsider. Då må vi bruke JavaScriptet [MathJax](https://www.mathjax.org). Men det er notorisk vanskeleg å setje opp, ser det ut som. Eg har lest [Hugos offisielle manual](https://gohugo.io/content-management/mathematics/#engines), men det som viste seg var at trengte dette (kvar fekk eg den frå?):

1.  I temaet som eg nyttar (mainroad) er det ei fil `themes\mainroad\layouts\partials\mathjax.html`.
2.  I `config.toml` set eg parameteren `mathjax = true` og `mathjaxPath = https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.6/MathJax.js`

Dette fungerer ikkje. Men så byta eg `mathjaxPath` ut med `https://cdn.jsdelivr.net/npm/mathjax@4/tex-mml-chtml.js` (som er den lenka [MathJax sjølv skriv om](https://www.mathjax.org/#gettingstarted)). Og no fungerer det strålande. MathJax skriv at "If you use the snippet above, you will not need to change the version number in the src attribute every time the version of MathJax changes." - det tolkar eg til at eg ikkje treng å gjere noko?  Uansett: det fungerer.
