(statistics-hs:proofs)=
# Dimostrazioni

Questa sezione contiene le dimostrazioni usate all'interno del bbook. Le dimostrazioni vengono fornite per completezza, ma vengono raccolte qui per non appesantire inutilmente le altre sezioni. Alcune di esse possono richiedere qualche strumento che va oltre gli strumenti del valore atteso degli strumenti messi a disposizione dalla preparazione fornita da una scuola superiore.

La distinzione da una raccolta di appunti personali potrebbe non essere così definita.

(proof:gauss-independent-sum)=
## Somma di variabili gaussiane indipendenti
```{dropdown}
:open:

Date due variabili casuali gaussiane indipendenti, $X_1 \sim \mathscr{N}(\mu_1,\sigma^2_1)$, $X_2 \sim \mathscr{N}(\mu_2, \sigma^2_2)$, si valuta la distribuzione della variabile casuale $X_1 + X_2$. La funzione distribuzione di probabilità congiunta delle due variabili casuali indipendenti è

$$\begin{aligned}
 f_{X_1 X_2}(x_1,x_2)
 & = f_{X_1}(x_1) f_{X_2}(x_2) = \\
 & = \frac{1}{\sqrt{2 \pi  \sigma_1^2}} \exp\left[-\frac{(x_1-\mu_1)^2}{2 \sigma_1^2} \right] \, \frac{1}{\sqrt{2 \pi  \sigma_2^2}} \exp\left[-\frac{(x_2-\mu_2)^2}{2 \sigma_2^2} \right] = \\\
\end{aligned}$$

```

(proof:t-test-gaussian)=
## Distribuzione della statistica $t \sim t_{N-1}$ nel $t$-test per campioni singoli
```{dropdown} Dimostrazione
Dati $N$ campioni $\{ X_n \}_{n=1:N}$ iid con distribuzinone gaussiana $X_n \sim \mathscr{N}(\mu, \sigma^2)$ allora la statistica $t$ dei $t$-test per singolo campione o per coppie di campioni, costruita con la media campionaria $\bar{X}$ e la varianza campionaria $S$ segue una distribuzione $t$-Student con $N-1$ gradi di libertà,

$$t:= \frac{\bar{X}-\mu}{\frac{S}{\sqrt{N}}} \sim t_{N-1} \ .$$

Questa affermazione risulta vera poiché la statistica test $t$ può essere riportata alla [definizione di una distribuzione $t_{\nu}$-Student](),

$$t_{\nu} \sim T = \frac{Z}{\sqrt{\frac{V}{\nu}}} \ ,$$

con $Z \sim N(0,1)$ e $V \sim \chi^2_{\nu}$, con $\nu = N-1$. Infatti:
- la media campionaria è gaussiana con varianza $\frac{\sigma^2}{N}$. Si definisice quindi la variabile $Z$ con distribuzione normale di media nulla e varianza unitaria, $Z := \frac{\bar{X} - \mu}{\frac{\sigma}{\sqrt{n}}} \sim \mathscr{N}(0,1)$
- la somma $V := \sum_{n=1}^N \left(\frac{X_n - \bar{X}}{\sigma^2}\right)^2$ è una somma di $N$ variabili normali, di cui solo $N-1$ sono indipendenti (poiché è stata usata la media campionaria e non il valore medio "vero" della distribuzione), $V \sim \chi^2_{N-1}$. La variabile $V$ può essere espressa in termini della varianza campionaria, $V = (N-1) \frac{S^2}{\sigma^2}$
- per definizione della distribuzione di $t$-Student, $\frac{Z}{\sqrt{V}{N-1}} \sim \chi^2_{N-1}$
- questo rapporto coincide alla statistica test, infatti:

  $$t_{N-1} \sim \frac{Z}{\sqrt{\frac{V}{N-1}}} = \frac{\frac{(\bar{X}-\mu)\sqrt{N}}{\sigma}}{\sqrt{\frac{S^2}{\sigma^2}}} = \frac{\bar{X} - \mu}{\frac{S}{\sqrt{N}}} =: t \ .$$

```

(proof:independence-sample-estimators-norm)=
## Indipendenza di media campionaria e varianza campionaria per variabili gaussiane iid
```{dropdown} Dimostrazione

```
(proof:s2-chi2-gauss)=
## $S^2 \sim \chi^2_{N-1}$ per variabili gaussiane iid
```{dropdown} Dimostrazione
```


