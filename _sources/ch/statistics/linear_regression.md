(statistics-hs:linear-regression)=
# Regressione lineare

Nella sua forma elementare, la regressione lineare è un'approssimazione (stimatore) lineare

  $$\hat{y}(x|\theta) = a x + b \ ,$$

tra una coppia di campioni $\{ X_n \}_{n=1:N}$, $\{ Y_n \}_{n=1:N}$ estratti dalle popolazioni $X$, $Y$, i cui parametri $\theta = (a,b)$ rendono minimo l'errore quadratico medio

$$e:= \sum_{n=1}^{N} ( \hat{y}(X_n) - Y_n )^2 = \sum_{n=1}^N ( a \, X_n + b - Y_n )^2 \ ,$$

il cui valore permette di stimare la significatività dell'approssimazione lineare.

```{dropdown} Algoritmo
:open:
L'algoritmo base consiste nella:
- normalizzazione dei campioni:
  - vengono calcolate le medie e le varianze campionarie

    $$\begin{aligned}
      \mu_x = \frac{1}{N} \sum_{n=1}^N X_n \qquad & , \qquad S^2_x = \frac{1}{N-1} (X_n - \mu_x)^2 \\
      \mu_y = \frac{1}{N} \sum_{n=1}^N Y_n \qquad & , \qquad S^2_y = \frac{1}{N-1} (Y_n - \mu_y)^2
    \end{aligned}$$

  - vengono definite i campioni normalizzati
    
    $$x_n = \frac{X_n - \mu_x}{S_x} \qquad , \qquad y_n = \frac{Y_n - \mu_y}{S_y}$$
```
