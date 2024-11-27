(statistics-hs:inference:estimate)=
# Stima

## Stimatori 
Uno stimatore $\hat{\theta}(\mathbf{x})$ è una statistica, funzione dei dati del campione osservato, che è usata per dedurre il valore di un parametro della distribuzione di probabilità, $p(x|\theta)$ della popolazione.

**Bias**. Il bias di uno stimatore è la differenza tra il valore atteso dello stimatore $E[ \hat{\theta} ]$ e il valore del parametro $\theta$,

$$B(\hat{\theta}) := E[ \hat{\theta} ] - \theta \ .$$

### Media e varianza campionaria senza bias
Dato un campione $\mathbf{x} = \{ x_n \}_{n=1:N}$, la media campionaria $\bar{X}$ e la varianza campionaria corretta $S^2$,

$$\overline{X} := \frac{1}{N} \sum_{n = 1}^{N} X_n \qquad , \qquad S^2 := \frac{1}{n-1} \sum_{n=1}^N (X_n - \bar{X})^2 \ ,$$

sono stimatori senza bias della media, $\hat{\mu}$, e della varianza della popolazione, $\hat{\sigma^2}$.

```{dropdown} Dimostrazione per la media
:open:
Dato un campione di $n$ variabili indipendenti $\{ X_n \}_n{1:N}$ osservate in una popolazione con media $\mu = E[X]$, e varianza $\sigma^2 = E\left[ (X-\mu)^2 \right]$, allora la media campionaria $\overline{X}$ è uno stimatore senza bias $\hat{\mu}$ della media $\mu = E[X]$ della popolazione. Il valore atteso della media campionaria coincide con la media della popolazione,

$$\begin{aligned}
  E[\overline{X}] 
  & = E\left[ \frac{1}{N} \sum_{n=1}^N X_n \right]
    = \frac{1}{N} \sum_{n=1}^N E\left[ X_n \right] = \frac{1}{N} \, N \, \mu = \mu \ .
\end{aligned}$$

e quindi il bias di questo stimatore è nullo, $B(\hat{mu}) = E[\hat{mu}] - \mu = 0$.

```
```{dropdown} Dimostrazione per la varianza
:open:

Dato un campione di $n$ variabili indipendenti $\{ X_n \}_n{1:N}$ osservate in una popolazione con media $\mu = E[X]$, e varianza $\sigma^2 = E\left[ (X-\mu)^2 \right]$, allora la varianza campionaria corretta $S^2$ è uno stimatore senza bias $\hat{\sigma^2}$ della varianza $\sigma^2 = E[(X-\mu)^2]$ della popolazione. Il valore atteso della varianza campionaria corretta convide con la varianza della popolazione,

$$\begin{aligned}
  (N-1) E[S^2] 
  & = E\left[ \sum_{n=1}^N ( X_n - \overline{X} )^2 \right] = \\
  & = E\left[ \sum_{n=1}^N \left( X_n - \frac{1}{N} \sum_{m=1}^N X_m \right)^2 \right] = \\
\end{aligned}$$

e quindi il bias di questo stimatore è nullo, $B(\hat{\sigma^2}) = E[\hat{\sigma^2}] - \sigma^2 = 0$.

```

