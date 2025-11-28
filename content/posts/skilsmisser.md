+++
title = "Skilsmisser og fødselsdato"
author = ["Aasmund Kvamme"]
date = 2025-11-28
draft = false
+++

## Skilsmisserate og fødselsdatoar {#skilsmisserate-og-fødselsdatoar}

Denne teorien kom eg over på _Den sorte diamant_ i København, på utstillinga "[Mellem Himmel og Jord](https://www.kb.dk/arrangementer/udstillinger/mellem-himmel-og-jord)" - om magiens og overtruas historie.
Den går i korte trekk ut på at _skilsmisseraten er størst for ektepar der det er 90 dagar mellom fødselsdatoane_ til ektefellane. I diskusjonen vidare kaller eg avstanden mellom fødselsdatoar for _datodifferanse_, og dersom eg skulle finne på å lage ein matematisk formeel som inneheld denne så vil symbolet vere \\(D\_d\\).

Dersom den eine ektefellen er fødd 17. mai og den andre 25. mai vil altså datodifferansen vere åtte dagar, og med symbol \\(D\_d = 25-17=8\\). Og då teksten berre ser på datodifferanser mellom 0 og 180 tolker eg det slik at datodifferansen mellom 27. desember og 3. januar er sju dagar, ikkje 358.


### Datagrunnlaget {#datagrunnlaget}

Data skal vere basert på "den omfattende amerikanske undersøgelse af 10.000 skilsmisser." (Men utan andre opplysingar om undersøkinga. Ingen årstal, ingen kjelder, ingen ting.) Og framstillinga av dataer høgst suspekt, med fleire inkonsekvensar:


#### Inkonsekvens 1 {#inkonsekvens-1}

Ut frå teksten ser det ut som at vi kan samanfatte data i ein tabell:

| Dagar mellom fødselsdatoane | Antal skilsmisser i % |
|-----------------------------|-----------------------|
| 45                          | 17                    |
| 90                          | 40                    |
| 135                         | 15                    |
| 180                         | 14                    |
| Sum                         | 86                    |

Ut frå tabellen skulle altså 14 % av alle skilte par ha ein datodifferanse på noko anna enn desse fire verdiane. Men i teksten står det også at "9.700 af de nævnte skilsmisser [har en datodifferanse på] 45, 90, 135 eller 180". Den einaste måten dette kan stemme med tabellen er dersom 86 % av 10.000 er 9.700. Det var den første uoverenstemmelsen.


#### Inkonsekvens 2 {#inkonsekvens-2}

Det er også ei grafisk framstilling av data, som tydeleg viser at det er "toppar" og "botnar" i data, noko som understreker at det er eit "mønster" her. Men ut frå grafen ser den enkle tabellen slik ut:

| Dagar mellom fødselsdatoane | Antal skilsmisser i % |
|-----------------------------|-----------------------|
| 45                          | 36                    |
| 90                          | 55                    |
| 135                         | 32                    |
| 180                         | 28                    |
| Sum                         | 151                   |

Ja ha? 151 % av alle par som skiller seg har ein datodifferanse på 45, 90, 135 eller 180? Og i tillegg er er det ein drøss andre datodifferanser (65 ulike verdiar i alt) som har sin "prosentdel". Så det er tydeleg at skalaen på grafen ikkje er i prosent. Det var inkonsekvens nummer 2.


#### Skala på grafen {#skala-på-grafen}

Kva skala er det då som skal brukast på andreaksen ("y-aksen" eller "ordinataksen")? Kanskje det er "antal"? Det går an å sjekke. Eg kan lese av alle punkta som er markert, og gi kvart punkt ein verdi som er \\(k\cdot y\_i)\\) der \\(y\_i\\) er verdien på prosentskalaen. Så summerer eg alle desse, og set summen lik 10 000:

\\[
\sum\_{i=1}^{65}k\cdot y\_i = k\cdot \sum\_{i=1}^{65}y\_i = 10000
\\]
Då kan eg finne \\(k\\) frå denne likninga som
\\[
k = \frac{10000}{\sum\_{i=1}^{65}y\_i}
\\]
og så setje denne inn. Då får eg:

| Datodifferanse | Verdi på y-aksen |
|----------------|------------------|
| 0              | 3                |
| 2              | 3                |
| 6              | 2                |
| 8              | 6                |
| 10             | 2                |
| 16             | 2                |
| 20             | 4                |
| 24             | 4                |
| 28             | 6                |
| 30             | 0                |
| 34             | 4                |
| 45             | 36               |
| 52             | 2                |
| 56             | 2                |
| 60             | 0                |
| 64             | 2                |
| 66             | 6                |
| 68             | 2                |
| 72             | 7                |
| 74             | 2                |
| 77             | 19               |
| 79             | 17               |
| 80             | 21               |
| 82             | 25               |
| 84             | 34               |
| 86             | 34               |
| 90             | 55               |
| 94             | 26               |
| 96             | 32               |
| 99             | 18               |
| 102            | 18               |
| 104            | 6                |
| 106            | 12               |
| 107            | 4                |
| 109            | 4                |
| 110            | 2                |
| 112            | 4                |
| 114            | 2                |
| 120            | 3                |
| 122            | 2                |
| 104            | 6                |
| 106            | 4                |
| 109            | 14               |
| 131            | 20               |
| 136            | 32               |
| 140            | 10               |
| 143            | 2                |
| 146            | 8                |
| 147            | 3                |
| 150            | 10               |
| 152            | 0                |
| 154            | 6                |
| 155            | 5                |
| 156            | 10               |
| 158            | 2                |
| 160            | 7                |
| 161            | 3                |
| 164            | 12               |
| 167            | 6                |
| 170            | 18               |
| 172            | 18               |
| 174            | 26               |
| 176            | 22               |
| 180            | 28               |
