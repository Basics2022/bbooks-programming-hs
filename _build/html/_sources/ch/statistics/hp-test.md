(statistics-hs:inference:hp-test)=
# Test di verifica delle ipotesi

**Popper.** Filosofia della scienza e principio di falsificabilità.

**Fisher.** Viene formulata un'ipotesi falsificabile, chiamata **ipotesi nulla**, $\text{H}_{0}$, che viene ritenuta vera fino a prova contraria. Il test di verifica delle ipotesi ha l'obiettivo di verificare se i dati smentiscono l'ipotesi.

Vengono presentati alcuni esempi:
- moneta truccata
- moneta truccata, revisited
- coniglio ludopatico e bosone di Higgs
- ...

Più in particolare, viene scelta come **statistica test** $x$ un parametro disponibile, rilavante per il fenomeno indagato e di cui è nota la distribuzione di probabilità - o una sua ragionevole approssimazione/attesa - sotto l'ipotesi nulla,

$$p(x|\text{H}_0) \ .$$

In base alle caratteristiche del fenomeno indagato vengono scelte le caratteristiche del test; in base all'evidenza richiesta contro l'ipotesi $\text{H}_0$ viene scelto il **livello di significatività**, $\alpha$, del test che - insieme alle caratteristiche del test - determina le **regioni di rifiuto** e, per differenza, **di accettazione** dell'ipotesi.

Una volta raccolti i dati, si calcola la statistica scelta con i dati disponibili, si verifica se il suo valore appartiene alle regioni di rifiuto o di accettazione dell'ipotesi, per concludere rispettivamente se l'ipotesi $\text{H}_{0}$ è stata falsificata o non è stata falsificata e quindi va ritenuta ancora valida.

A partire dalla formulazione generale del test di verifica delle ipotesi secondo Fisher, vengono poi definiti diversi test:
- $Z$-test: test di Fisher sulla media del campione
- $t$-test: test di Fisher sulla media del campione di una popolazone con media e varianza sconosciuti che, sotto opportune ipotesi, è una variabile casuale che segue una distribuzione di probabilità $t$-Student
- $ANOVA$
