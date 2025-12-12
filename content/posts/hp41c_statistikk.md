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

| Funksjon           | Formel                                                                           | Taster                                                             |
|--------------------|----------------------------------------------------------------------------------|--------------------------------------------------------------------|
| \\(\overline{X}\\) | \\(\frac{1}{n}\Sigma X\\)                                                        | `RCL 11, RCL 16, /`                                                |
| \\(\overline{Y}\\) | \\(\frac{1}{n}\Sigma Y\\)                                                        | `RCL 13, RCL 16, /`                                                |
| \\(S\_X\\)         | \\(\sqrt{\frac{\Sigma X^2-n\cdot\overline{X}^2}{n-1}}\\)                         | `RCL 12, RCL 11, X^2, RCL 16, /, -, RCL 16, 1, -, /, SQRT, STO 17` |
| \\(S\_Y\\)         | \\(\sqrt{\frac{\Sigma Y^2-n\cdot\overline{Y}^2}{n-1}}\\)                         | `RCL 14, RCL 13, X^2, RCL 16, /, -, RCL 16, 1, -, /, SQRT, STO 18` |
| \\(S\_{XY}\\)      | \\(\frac{1}{n-1}\left(\Sigma X\cdot Y-\frac{1}{n}\Sigma X\cdot\Sigma Y\right)\\) | `RCL 15, RCL 11, RCL 13, *, RCL 16, /, -, RCL 16, 1, -, /, STO 19` |
| \\(\rho\_{XY}\\)   | \\(\frac{S\_{XY}}{S\_X\cdot S\_Y}\\)                                             | `RCL 19, RCL 17, RCL 18, *, /, STO 20`                             |

Her har eg utvida lista over registre for å lagre \\(S\_X\\), \\(S\_Y\\), \\(S\_{XY}\\) og \\(\rho\_{XY}\\).

Komandoane i tabellen er lett å legge inn i eit program.
