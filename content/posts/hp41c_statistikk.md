+++
title = "Statistikk på HP41C"
author = ["Aasmund Kvamme"]
date = 2025-12-11
tags = ["hp41", "statistikk"]
categories = ["kalkulator"]
draft = false
+++

## Statistikk på HP41C {#statistikk-på-hp41c}


### Innleiing {#innleiing}

I utgangspunktet har HP-kalkulatorane frå slutten av 70- og tidleg 80-tal ikkje så veldig mange innebygde funksjonar for deskriptiv statistikk. Men dei har eit sinnrikt system for å akkumulere data, og så kan eg sjølv rekne ut det eg treng.

Det er satt av seks  dataregistre spesielt til dette:

| Register | Innhald                     |
|----------|-----------------------------|
| R11      | \\(\Sigma X\_i\\)           |
| R12      | \\(\Sigma X\_i^2\\)         |
| R13      | \\(\Sigma Y\_i\\)           |
| R14      | \\(\Sigma Y\_i^2\\)         |
| R15      | \\(\Sigma X\_i\cdot Y\_i\\) |
| R16      | \\(n\\)                     |

No kan eg rekne ut dei ulike tinga eg treng ved å kombinere desse:


### Utrekningar {#utrekningar}

| Funksjon           | Formel                       | Taster              |
|--------------------|------------------------------|---------------------|
| \\(\overline{X}\\) | \\(\frac{1}{n}\Sigma X\_i\\) | `RCL 11, RCL 15, /` |
| \\(\overline{Y}\\) | \\(\frac{1}{n}\Sigma Y\_i\\) | `RCL 12, RCL 15, /` |
