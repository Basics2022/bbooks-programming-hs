(statistics-hs:inference:hp-test)=
# Test di verifica delle ipotesi

**Popper.** Filosofia della scienza e principio di falsificabilità.

**Fisher.** Viene formulata un'ipotesi falsificabile, chiamata **ipotesi nulla**, $\text{H}_{0}$, che viene ritenuta vera fino a prova contraria. Il test di verifica delle ipotesi ha l'obiettivo di verificare se i dati disponibili, riassunti in una variabile test, possono smentire l'ipotesi con una probabilità desiderata.

```{dropdown} Test di verifica di Fisher
Il test di verifica di un’ipotesi di Fisher si ispira al principio di falsificabilità di Popper, e può essere riassunto nei seguenti passaggi:
1. formulazione di un’ipotesi falsificabile, definita **ipotesi nulla**, $\text{H}_0$, da verificare e che viene ritenuta vera fino a prova contraria
2. scelta di una **statistica test**, $x$, o variabile esplicativa, un parametro disponibile rilevante per il fenomeno indagato e di cui è nota - o approssimabile, sotto ipotesi ragionevoli sul fenomeno - la distribuzione di probabilità condizionata alla validità dell'ipotesi nulla,

  $$p(x|\text{H}_0) \ .$$

3. scelta del test statistico (es. una coda o due code,...), in base anche alle caratteristiche del fenomeno indagato
4. scelta del livello di **significatività**, $\alpha$, del test; il valore del livello di significatività traduce "il livello di evidenza richiesto" per falsificare l’ipotesi e - insieme alle caratteristiche del fenomeno e del test - determina le *regioni di rifiuto*, $A_r(\alpha)$, e di *accettazione dell’ipotesi*, $A_a(\alpha)$, gli intervalli di valori della statistica test che determinano se l’ipotesi è stata falsificata o meno;

5. raccolta dati e calcolo statistica test sul campione, $x_s$
6. confronto del valore calcolato della statistica test con gli intervalli di rifiuto e accettazione della variabile soggetta all’ipotesi nulla, e verdetto sull’ipotesi,

    $$\begin{aligned}
      x_s \in A_r(\alpha) \qquad & \rightarrow \qquad \text{ il test falsifica $\text{H}_0$, che deve essere scartata} \\
      x_s \in A_a(\alpha) \qquad & \rightarrow \qquad \text{ il test non falsifica $\text{H}_0$} \\
    \end{aligned}$$

    All'aumentare del livello di significatività del test richiesto, si riduce la regione di falsificazione e quindi diventano più stringenti i requisiti sul test per scartare l'ipotesi di partenza.
```

**Risultati ed errori.** Un test di ipotesi può portare a due tipi di errore:
- **tipo I, falso positivo**: rifiuto di un'ipotesi $\text{H}_0$ valida
- **tipo II, falso negativo**: mancato rifiuto di un'ipotesi $\text{H}_0$ non valida

```{prf:example} Giudizio di un imputato
In un tribunale, si vuole decidere se l'imputato è innocente. Si considera come ipotesi nulla $\text{H}_0$: "l'imputato è innocente". Le indagini svolte cercano di valutare lo stato dell'imputato e portano alla decisione di condanna o assoluzione. Un errore di **tipo I** corrisponde alla condanna di un imputato innocente; un errore di tipo II corrisponde all'assoluzione di un imputato colpevole.
```

```{prf:example} Test medico
**todo** *Definire potenza*, $\beta$, di un test in presenza di un'ipotesi alternativa. Fare esempio con falsi positivi, e affidabilità tamponi Covid.

- $\text{H}_0$ nulla vera: $\alpha$: probabilità di rifiutare $\text{H}_0$; $1-\alpha$: probabilità di non rifiutare $\text{H}_0$
- $\text{H}_1$ alternativa vera: $1-\beta$: probabilità di rifiutare $\text{H}_0$; $\beta$: probabilità di non rifiutare $\text{H}_0$


```

Usando questo approccio, è possibile distinguere diversi test a seconda dei dati disponibili (numero di campioni, dimensione dei campioni, distribuzione attesa delle osservazioni,...), della variabile test utilizzata, e dell'obiettivo del test. Una classificazione rigida dettagliata rischierebbe di risultare poco pratica e imperfetta.

````{only} html
**Usi frequenti.**
- Test su campioni singoli o coppie di campioni
- Test di correlazione tra campioni diversi
- Test di indipendenza tra campioni, intesa come verifica della possibilità che i campioni disponibili provengano dalla stessa popolazione o da popolazioni con distribuzioni simili
<!--
```{dropdown} Test su campioni singoli o coppie di campioni
- ...
- Algoritmi: $t$-test, $\chi^2$-test, $Z$-test, Wilcoxon,...
```
```{dropdown} Test di correlazione
- ...
- Algoritmi: regressione lineare, correlazione di Pearson, correlazione di Spearman,...
```
```{dropdown} Test di indipendenza
- ....
- Algoritmi: $t$-test per campioni indipendenti e Welch $t$-test, ANOVA, Tukey test, Kruskal-Wallis H-test, Mann-Whitney U-test,...
```
-->
````

````{only} latex
**Usi frequenti.**
- Test su campioni singoli o coppie di campioni
- Test di correlazione tra campioni diversi
- Test di indipendenza tra campioni, intesa come verifica della possibilità che i campioni disponibili provengano dalla stessa popolazione o da popolazioni con distribuzioni simili
````

<!--
**Algoritmi - esempi.**
- proprietà di campioni singoli o coppie di campioni
  - $\chi^2$-test
  - $t$-test
  - wilcoxon
- correlazione tra campioni diversi
  - regressione lineare
  - correlazione di Pearson
  - correlazione di Spearman
- indipendenza di campioni
  - $t$-test per campioni indipendenti e Welch $t$-test
  - ANOVA
  - Tukey test
  - Kruskal-Wallis H-test
-->

<!--
Più in particolare, viene scelta come **statistica test** $x$ un parametro disponibile, rilavante per il fenomeno indagato e di cui è nota la distribuzione di probabilità - o una sua ragionevole approssimazione/attesa - sotto l'ipotesi nulla,

$$p(x|\text{H}_0) \ .$$

In base alle caratteristiche del fenomeno indagato vengono scelte le caratteristiche del test; in base all'evidenza richiesta contro l'ipotesi $\text{H}_0$ viene scelto il **livello di significatività**, $\alpha$, del test che - insieme alle caratteristiche del test - determina le **regioni di rifiuto** e, per differenza, **di accettazione** dell'ipotesi.

Una volta raccolti i dati, si calcola la statistica scelta con i dati disponibili, si verifica se il suo valore appartiene alle regioni di rifiuto o di accettazione dell'ipotesi, per concludere rispettivamente se l'ipotesi $\text{H}_{0}$ è stata falsificata o non è stata falsificata e quindi va ritenuta ancora valida.

A partire dalla formulazione generale del test di verifica delle ipotesi secondo Fisher, vengono poi definiti diversi test:
- $Z$-test: test di Fisher sulla media del campione
- $t$-test: test di Fisher sulla media del campione di una popolazone con media e varianza sconosciuti che, sotto opportune ipotesi, è una variabile casuale che segue una distribuzione di probabilità $t$-Student
- $ANOVA$
-->
