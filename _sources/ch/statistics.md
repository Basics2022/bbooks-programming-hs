(book:statistics-hs)=
# Metodi per la statistica

La statistica si occupa dello studio dei fenomeni in condizioni di incertezza o di non determinismo, determinate da una conoscenza incompleta del modello. 

<!--
*Questo può essere dovuto sia all'impossibilità di costruire un modello deterministico, sia alla scarsa praticabilità di un modello deterministico di dimensioni enormi, vedi termodinamica classica vs. meccanica statistica* **todo** *fare riferimento, con esempio*.
-->

`````{only} html
**Contenuti.** I contenuti seguono l'ordine logico di un approccio alla statistica: dopo aver introdotto la statistica descrittiva e la rappresnetazione dei dati, vengono fornite delle basi di teoria della probabilità necessarie alla deduzione e alle conclusioni tipiche di un'analisi statistica inferenziale.

````{dropdown} [Statistica descrittiva](statistics-hs:descriptive)
````
````{dropdown} [Teoria della probabilità](statistics-hs:probability)
```{dropdown} [Teoria della probabilità: variabili casuali](statistics-hs:random-variables)
```
```{dropdown} [Teoria della probabilità: processi casuali](statistics-hs:random-processes)
```
````
````{dropdown} [Statistica inferenziale](statistics-hs:inference)
- [Stima](statistics-hs:inference:estimate)
- [Verifica ipotesi](statistics-hs:inference:hp-test)
- *campionamento*...
- ...
````

`````

La statistica è applicabile in **diversi (tutti?) gli ambiti**: dalla scienze naturali, alle scienze sociali,...
Secondo uno studio, i 12 metodi statistici (cos'è un metodo statistico?) più usati sono: ANOVA, $\chi^2$-test, $t$-test, regressione lineare, coefficiente di correlazione di Pearson, Mann-Whitney U-test, Kruskal-Wallis test, Shannon's diversity index, Turkey's range test, cluster analysis, Spearman's rank correlation coefficient, and PCA.

La statistica è uno strumento fondamentale del **metodo scientifico**, e si occupa dell'intero processo di:
- progetto dell'esperimento
- svolgimento esperimento e raccolta dati
- analisi dati

A seconda dell'uso dei dati raccolti, si riconoscono due approcci alla statistica:
- **statistica descrittiva**: riassume i dati raccolti in statistiche riassuntive, senza voler dedurre conclusioni riguardo alla popolazione della quale è stato analizzato il campione; una **rappresentazione grafica** dei dati e delle statistiche sintetiche risulta molto efficiente per la mente umana

  **todo** *dati di sintesi, non ci sono ipotesi sulle dimensioni di campione e popolazione; una volta disponibili i dati, quelli sono e quelli si riassumono*

- **statistica inferenziale**: usa i dati raccolti per dedurre proprietà di una popolazione ampia della quale è stato analizzato un campione ristretto. Le deduzioni si possono spesso riassumere in:
  - **stima** di distribuzioni di probabilità o valori
  - **test di ipotesi**


**todo** *uniformare diverse applicazioni allo stesso metodo statistico, ad esempio come diverse interpretazioni che possono essere date allo stesso metodo*
- stime: regressione lineare e lineare generalizzata, minimi quadrati,...
- ...

**todo** Statistica e ML:
- SL: regressione e classificazione
- UL: clustering, dimension reduction
- ML: otpimization and control

