(statistics-hs:inference:estimate)=
# Stima

## Stimatori 
Uno stimatore $\hat{\theta}(\mathbf{x})$ è una statistica, funzione dei dati del campione osservato, che è usata per dedurre il valore di un parametro della distribuzione di probabilità, $p(x|\theta)$ della popolazione.

**Bias**. Il bias di uno stimatore è la differenza tra il valore atteso dello stimatore $E[ \hat{\theta} ]$ e il valore del parametro $\theta$,

$$B(\hat{\theta}) := E[ \hat{\theta} ] - \theta \ .$$

### Media e varianza campionaria senza bias
Dato un campione $\mathbf{x} = \{ x_n \}_{n=1:N}$, la media campionaria $\bar{X}$ e la varianza campionaria corretta $S^2$,

$$\overline{X} := \frac{1}{N} \sum_{n = 1}^{N} X_n \qquad , \qquad S^2 := \frac{1}{n-1} \sum_{n=1}^N (X_n - \bar{X})^2 \ ,$$

sono stimatori senza bias della media, $\hat{\mu}$ e della varianza della popolazione, $\hat{\sigma^2}$.

```{dropdown} Dimostrazione per la media
:open:
Dato un campione di $n$ variabili indipendenti $\{ X_n \}_n{1:N}$ osservate in una popolazione con media $\mu = E[X]$, e varianza $\sigma^2 = E\left[ (X-\mu)^2 \right]$,

$$\begin{aligned}
  E[\overline{X}] & = E\left[ \frac{1}{N} \sum_{n=1}^N X_n \right] \\
\end{aligned}$$

```
```{dropdown} Dimostrazione per la varianza
:open:
```

