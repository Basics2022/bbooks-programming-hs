(statistics-hs:inference)=
# Statistica inferenziale

La statistica inferenziale si occupa di stabilire le caratteristiche di una popolazione dall'osservazione di un suo campione, usando gli strumenti del calcolo delle probabilità. 
<!-- La statistica inferenziale usa gli strumenti del calcolo delle probabilità, per svolgere il compito inverso -->
Esistono (almeno) due approcci alla statistica inferenziale:
- l'apporccio classico **frequentista**, 
- l'approccio **bayesiano**

*Del secondo, ci si limita a dire che usa delle *conoscenze pregresse* sul fenomeno e che è stato reso praticabile dai recenti sviluppi nelle capacità di calcolo a disposizione.* **todo** *aggiungere sezione sull'approccio bayesiano?* **todo** *esempi con variabili discrete di dimensione limitata, senza introdurre i problemi sulle scelte di priori-posteriori*

Tra le applicazioni della statistica inferenziale si possono distinguere due applicazioni principali:
````{only} html
```{dropdown} [Stima](statistics-hs:inference:estimate)
Stima di parametri di una popolazione, noto un campione di essa:
- **valori puntuali**, come ad esempio la media o la varianza di una popolazione
- **intervalli**, come ad esempio gli intervalli di confidenza
```
```{dropdown} [Verifica ipotesi](statistics-hs:inference:hp-test)
La verifica delle ipotesi è un'attività intimamente connessa al metodo sperimentale e alla formazione della conoscenza nella storia umana secondo criteri logici. Nonostante sia poco sensata una classificazione rigida delle attività che coinvolgono la verifica delle ipotesi (seguendo la documentazione di $\texttt{scipy.stats}$), si possono distinguere
- test su **campioni singoli** o **coppie di campioni**: $t$-test, $\chi^2$-test, $Z$-test, Wilcoxon,...
- test di **correlazione**: regressione lineare e generalizzata, Pearson $r$-test, Spearman $r$-test,...
- test di **indipendenza**, verifica se i campioni provengono dalla stessa popolazione (e quindi dalla stessa distribuzione), o da popolazioni con distribuzioni con proprietà in comune: ANOVA, Tukey, Kruskal-Wallis H-test, Mann-Whitney U-test,...
- **ri-campionamento** e metodi MC: per valutare $p$-value e intervalli di confidenza test di validità di ipotesi
- *ipotesi multiple*

```
````

**todo** *Scelta modello? Serve una discuterne? Rimandato a ML?*

````{only} latex
- [**stima**](statistics-hs:inference:estimate) di parametri di una popolazione, noto un campione di essa:
  - **valori puntuali**, come ad esempio la media o la varianza di una popolazione
  - **intervalli**, come ad esempio gli intervalli di confidenza
- [**verifica ipotesi**](statistics-hs:inference:hp-test). La verifica delle ipotesi è un'attività intimamente connessa al metodo sperimentale e alla formazione della conoscenza nella storia umana secondo criteri logici. Nonostante sia poco sensata una classificazione rigida delle attività che coinvolgono la verifica delle ipotesi (seguendo la documentazione di $\texttt{scipy.stats}$), si possono distinguere
  - test su **campioni singoli** o **coppie di campioni**: $t$-test, Wilcoxon,...
  - test di **correlazione**: LS, Pearson $r$-test, Spearman $r$-test,
  - test di **indipendenza**, verifica se i campioni provengono dalla stessa popolazione (e quindi dalla stessa distribuzione), o da popolazioni con distribuzioni con proprietà in comune: ANOVA, Kruskali-Wallis, Tukey
  - **ri-campionamento** e metodi MC: per valutare $p$-value e intervalli di confidenza test di validità di ipotesi
  - *ipotesi multiple*
````

<!--
  - ...
  - correlazione tra due variabili: Pearson (correlazione lineare, approssimazione lineare), Spearman (correlazione, tra due variabili con relazione monotona);
  - Wilcoxon: campioni non indipendenti;
  - Mann-Withney: campioni indipendenti; vengono dalla stessa popolazione?
  - Kruskas-Wallis: campioni indipendenti; vengono dalla stessa popolazione?
  - Tukey range method:
-->

<!--
- **stima (puntuale)**.
  - **Metodi.**
    - MLE (minimi quadrati,...)
    - Metodo dei momenti

  - **Approcci.**
    - Maximum Likelihood Method (MLE). Date $N$ osservazioni di un campione $\mathbf{x} = \{ x_n \}_{n=1:N}$, e ipotizzata una funzione di probabilità della grandezza osservata relativa alla popolazione, $p(x| \symbf{\theta})$ che dipende dai parametri $\mathbf{\theta}$, si vuole determinare il valore dei parametri che rende massima la probabilità condizionata di aver osservato il campione,
    
      $$\max_{\symbf{\theta}} \, f(\mathbf{x}|\symbf{\theta}) \ .$$
   
      Se è possibile supporre che le osservazioni siano tra di loro statisticamente indipendenti si può scrivere,
   
      $$f(\mathbf{x}|\symbf{\theta}) = \prod_{n=1}^N p(x_n|\symbf{\theta}) \ .$$
   
    - Maximum a posteriori (MAP). I parametri $\theta$ vengono trattati come variabili casuali con distribuzioni a priori $g(\theta)$, ... **todo**
  
    $$f_{\theta|X}(\theta|x) = \frac{f_{X|\theta}(x|\theta) f_{\theta}(\theta) }{f_X(x)} \ ,$$
-->


