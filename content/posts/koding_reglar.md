+++
title = "Koding i Emacs - godt å hugse på"
author = ["Aasmund Kvamme"]
date = 2025-10-27
draft = false
+++

## Innleiing {#innleiing}

Her samlar eg ein del nyttige ting om å skrive (og utføre) koding i Emacs.


## Oppsett {#oppsett}

I oppsettet av Emacs må eg ha på plass Babel. Det installerer eg som alle andre pakker via `package-list-packages` (leit etter `babel` og `ob-ipython`). Eg må også vite korleis eg skal få tak i Python-programmet (er det rett namn?); det er alltid litt krøkkete. Inntil vidare bruker eg denne kommandoen:

```text
(setq org-babel-python-command "C:/Users/aasmu/AppData/Local/Programs/Python/Python313/python.exe")
```

Og så må eg fortelje Emacs kva koder eg vil bruke:

```text
(org-babel-do-load-languages
 'org-babel-load-languages
   '(
      (python . t)
      (emacs-lisp . t)
      (calc . t)
      ;; Include other languages here...
    )
)
```


## Bruk {#bruk}

Eg skriv koden inne i ein _kodeblokk_:

```text
#+begin_src python

#+end_src
```

Den lettaste måten å skrive ein blokk er ved snarvegen `C-c C-,` og så velje blant dei ulike alternativa (`s` i dette tilfellet). (Det har tidlegare også vore ein snarveg `<sTAB`, men den har ein lei tendens til å legge att ein `>` på slutten, og då virker ingen ting.)


### Utdata {#utdata}

Eg kan få skrevet utdata ved å bruke

1.  `print` (som vanleg)
2.  `IPython` evaluering


#### 1. `print` {#1-dot-print}

Legg inn `:results output` i starten av blokka. Dette sikrer at alle `print`-setningar kjem ut etter koden.

```text
#+begin_src python :results output
  for i in range(4):
    print(i)
#+end_src
```


#### 2. "return" frå ein funksjon {#2-dot-return-frå-ein-funksjon}

Alternativt kan vi "eksportere" resultatet ved hjelp av `return` (som om blokka er ein funksjon i Python). Dersom eg berre vil vise resultatet i fortløpande tekst treng eg ikkje `:results`-parameteren:

```text
#+begin_src python
    a = 3
    return(a)
#+end_src
```

Og så kjem det fine: dersom eg eksporterer resultatet med parameteren `:results value` kan eg gjenbruke verdien i ein seinare blokk. Og på same måte som med ein funksjon i Python så er det _blokka_ som får verdien av `return`, så eg må gi blokka eit _namn_:

```text
#+name: akv
#+begin_src python
  a = 9
  return(a**2)
#+end_src
```

I neste blokk kan eg så bruke denne variabelen (`akv`):

```text
#+begin_src python :var x=akv
  return(x*2)
#+end_src
```

Resultatet av første blokk (her: \\(81\\)) vert skrevet i teksten under og lagra i variabelen `akv`. Det vert så tatt inn i neste blokk, og resultatet av denne (\\(162\\)) skrevet til teksten rett etter blokka.
