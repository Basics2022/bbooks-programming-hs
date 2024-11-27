(statistics-hs:inference)=
# Statistica inferenziale

La statistica inferenziale si occupa di stabilire le caratteristiche di una popolazione dall'osservazione di un suo campione, usando gli strumenti del calcolo delle probabilità. 
<!-- La statistica inferenziale usa gli strumenti del calcolo delle probabilità, per svolgere il compito inverso -->

**(almeno) Due approcci.**
- frequentista, classica
- bayesiana

**Esempi di applicazioni.**
- **verifica ipotesi**. Classificazione seguendo la documentazione di $\texttt{scipy.stats}$
  - test su campioni singoli o coppie di campioni: $t$-test, Wilcoxon
  - correlazione: LS, Pearson $r$-test, Spearman $r$-test,
  - indipendenza: verifica se i campioni provengono dalla stessa popolazione (e quindi dalla stessa distribuzione), o da popolazioni con distribuzioni con proprietà in comune: ANOVA, Kruskal, Tukey
  - ri-campionamento e metodi MC: per valutare $p$-value e intervalli di confidenza test di validità di ipotesi
  - ipotesi multiple

<!--
  - ...
  - correlazione tra due variabili: Pearson (correlazione lineare, approssimazione lineare), Spearman (correlazione, tra due variabili con relazione monotona);
  - Wilcoxon: campioni non indipendenti;
  - Mann-Withney: campioni indipendenti; vengono dalla stessa popolazione?
  - Kruskas-Wallis: campioni indipendenti; vengono dalla stessa popolazione?
  - Tukey range method:
-->

- **stima (puntuale)**.
  - MLE (minimi quadrati,...)
  - Metodo dei momenti

**Approcci.**
  - Maximum Likelihood Method (MLE). Date $N$ osservazioni di un campione $\mathbf{x} = \{ x_n \}_{n=1:N}$, e ipotizzata una funzione di probabilità della grandezza osservata relativa alla popolazione, $p(x| \symbf{\theta})$ che dipende dai parametri $\mathbf{\theta}$, si vuole determinare il valore dei parametri che rende massima la probabilità condizionata di aver osservato il campione,
  
    $$\max_{\symbf{\theta}} \, f(\mathbf{x}|\symbf{\theta}) \ .$$

    Se è possibile supporre che le osservazioni siano tra di loro statisticamente indipendenti si può scrivere,

    $$f(\mathbf{x}|\symbf{\theta}) = \prod_{n=1}^N p(x_n|\symbf{\theta}) \ .$$

  - Maximum a posteriori (MAP). I parametri $\theta$ vengono trattati come variabili casuali con distribuzioni a priori $g(\theta)$, ... **todo**

    $$f_{\theta|X}(\theta|x) = \frac{f_{X|\theta}(x|\theta) f_{\theta}(\theta) }{f_X(x)} \ ,$$



