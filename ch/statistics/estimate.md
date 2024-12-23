(statistics-hs:inference:estimate)=
# Stima

Una delle attività principali della statistica inferenziale è la stima di parametri o valori di una popolazione $X$ della quale è disponibile solo un campione $\mathbf{X} = \{ X_n \}_{n=1:N}$. E' possibile stimare valori puntuali, come la media o la varianza, o intervalli, come intervalli di confidenza. **todo** *come stimare gli intervalli di confidenza? Serve conoscenza o ipotesi sulla distribuzione? Gaussiana per un numero sufficiente di campioni, per teorema del limite centrale?*

(statistics-hs:inference:estimate:estimators)=
## Stimatori 
Uno stimatore $\hat{\theta}(\mathbf{X})$ è una statistica, funzione dei dati del campione osservato $\mathbf{X} = \{ X_n \}_{n=1:N}$, che viene usata per dedurre il valore di un parametro della distribuzione di probabilità della popolazione, $p(X|\theta)$, funzione del parametro.

**Bias**. Il bias di uno stimatore è la differenza tra il valore atteso dello stimatore $\mathbb{E}[ \hat{\theta} ]$ e il valore del parametro $\theta$,

$$B(\hat{\theta}) := \mathbb{E}[ \hat{\theta} ] - \theta \ .$$

(statistics-hs:inference:estimate:sample-estimators)=
### Media e varianza campionaria senza bias
Dato un campione $\mathbf{X} = \{ X_n \}_{n=1:N}$ di $N$ osservazioni indipendenti estratto da una popolazione, $X$, la media campionaria $\bar{X}$ e la varianza campionaria corretta $S^2$,

$$\bar{X} := \frac{1}{N} \sum_{n = 1}^{N} X_n \qquad , \qquad S^2 := \frac{1}{N-1} \sum_{n=1}^N (X_n - \bar{X})^2 \ ,$$

sono stimatori senza bias della media, $\hat{\mu}$, e della varianza della variabile osservata della popolazione, $\hat{\sigma^2}$. Le singole osservazioni possono essere dei dati generati in maniera indipendente con uguale distribuzione di probabilità.

**todo** **oss.** Dalle dimostrazioni, sembra che l'identica distribuzione non sia strettamente necessaria, ma che siano richieste: indipendenza (e non correlazione) delle variabili che producono l'ossservazione; variabili con stesso valore di media e di varianza, indipendentemente dalla "forma" della distribuzione di probabilità.

```{dropdown} La media campionaria è stimatore senza bias della media della popolazione, $\ \mathbb{E}[\bar{X}] = \mu_X$

Dato un campione di $n$ variabili indipendenti $\{ X_n \}_n{1:N}$ osservate in una popolazione con media $\mu = \mathbb{E}[X]$, e varianza $\sigma^2 = \mathbb{E}\left[ (X-\mu)^2 \right]$, allora la media campionaria $\bar{X}$ è uno stimatore senza bias $\hat{\mu}$ della media $\mu = \mathbb{E}[X]$ della popolazione. Il valore atteso della media campionaria coincide con la media della popolazione,

$$\begin{aligned}
  \mathbb{E}[\bar{X}] 
  & = \mathbb{E}\left[ \frac{1}{N} \sum_{n=1}^N X_n \right]
    = \frac{1}{N} \sum_{n=1}^N \mathbb{E} \left[ X_n \right] = \frac{1}{N} \, N \, \mu = \mu \ .
\end{aligned}$$

e quindi il bias di questo stimatore è nullo, $B(\hat{\mu}) = \mathbb{E}[\hat{\mu}] - \mu = 0$.

```
```{dropdown} La varianza campionaria è stimatore senza bias della varianza della popolazione, $\ \mathbb{E}[S^2] = \sigma_X^2$

Dato un campione di $n$ variabili indipendenti $\{ X_n \}_n{1:N}$ osservate in una popolazione con media $\mu = \mathbb{E}[X]$, e varianza $\sigma^2 = \mathbb{E}\left[ (X-\mu)^2 \right]$, allora la varianza campionaria corretta $S^2$ è uno stimatore senza bias $\hat{\sigma^2}$ della varianza $\sigma^2 = \mathbb{E}[(X-\mu)^2]$ della popolazione. Per dimostrare questa affermazione, si usa la proprietà della covarianza

$$\mathbb{E}[(X_i-\mu_i)(X_j-\mu_j)] = \mathbb{E}[X_i X_j] - \mu_i \mathbb{E}[X_j] - \mu_j \mathbb{E}[X_i] + \mu_i \mu_j = \mathbb{E}[X_i X_j] - \mu_i \mu_j \ ,$$

che, nel caso di variabili indipendenti non correlate con uguale varianza, si riduce a

$$ \mathbb{E}[X_i X_j] = \sigma^2 \delta_{ij} + \mu_i \mu_j$$


Il valore atteso della varianza campionaria corretta convide con la varianza della popolazione,


$$\begin{aligned}
  (N-1) \mathbb{E}[S^2] 
  & = \mathbb{E}\left[ \sum_{n=1}^N ( X_n - \bar{X} )^2 \right] = \\
  & = \mathbb{E}\left[ \sum_{n=1}^N \left( X_n - \frac{1}{N} \sum_{m=1}^N X_m \right)^2 \right] = \\
  & = \mathbb{E}\left[ \sum_{n=1}^N X_n^2 + \sum_{m=1}^N \left( - \frac{2}{N} X_n X_m + \frac{2}{N^2} \sum_{p \ne m} X_m X_p + \frac{X_m^2}{N^2} \right) \right] = \\
  & = \sum_{n=1}^N \mathbb{E}[X_n^2] + \sum_{n,m=1}^N \left( -\frac{2}{N} \mathbb{E}[X_n X_m] + \frac{1}{N^2}\mathbb{E}[X_m^2] \right) - \frac{2}{N^2} \sum_{n,m=1}^N \sum_{p > m} E [ X_m X_p ] = \\
  & = \sum_{n=1}^N ( \sigma^2 + \mu^2 ) + \sum_{n,m=1}^N \left( -\frac{2}{N} \left( \sigma^2 \delta_{nm} + \mu^2 \right) + \frac{1}{N^2} \left( \sigma^2 + \mu^2 \right) \right) + \frac{2}{N^2} \sum_{n,m=1}^N \sum_{p > m} \left( \sigma^2 \delta_{mp} + \mu^2 \right) = \\
  & = N (\sigma^2 + \mu^2) - \frac{2}{N} \left( N \sigma^2 + N^2 \mu^2 \right) + \frac{1}{N^2} N^2 (\sigma^2 + \mu^2) + \frac{2}{N^2} \frac{N^2(N-1)}{2} \mu^2 = \\
  & = \sigma^2 (N-1) + \mu^2 \left( N - 2N + 1 + N - 1 \right) \\
  & = \sigma^2 (N-1) \ . \\ 
\end{aligned}$$

e quindi, dividendo per il fattore $N-1$ entrambi i termini, segue la dimostrazione che la varianza campionaria corretta per la varianza della popolazione è uno stimatore con bias nullo, $B(\hat{\sigma^2}) = \mathbb{E}[\hat{\sigma^2}] - \sigma^2 = 0$.

<!--
$$\begin{aligned}
  (N-1) \mathbb{E}[S^2] 
  & = \mathbb{E}\left[ \sum_{n=1}^N ( X_n - \bar{X} )^2 \right] = \\
  & = \mathbb{E}\left[ \sum_{n=1}^N ( X_n - \mu - \bar{X} + \mu )^2 \right] = \\
  & = \mathbb{E}\left[ \sum_{n=1}^N \left( ( X_n- \mu ) - \frac{1}{N} \sum_{m=1}^N ( X_m - \mu) \right)^2 \right] = \\
  & = \sum_{n=1}^N \mathbb{E}\left[ (X_n - \mu)^2 - \frac{2}{N} (X_n-\mu)( X_m -\mu) \right. \\
  & \qquad \left. - \frac{2}{N^2} \sum_{m=1:N, p \ne m} (X_m - \mu)(X_p - \mu) + \sum_{m=1}^N \frac{(X_m^2-\mu)}{N^2}  \right] = \\
  & = N \, \mathbb{E}[(X-\mu)^2] - 2 \, \mathbb{E}[(X-\mu)^2] + \mathbb{E}[(X-\mu)^2] = \\
  & = (N-1) \mathbb{E}[(X-\mu)^2] \\
\end{aligned}$$
-->

```

