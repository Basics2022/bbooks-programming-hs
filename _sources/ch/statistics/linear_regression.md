(statistics-hs:linear-regression)=
# Regressione lineare

Nella sua forma elementare, la regressione lineare è un'approssimazione lineare

  $$\hat{y}(x) = a x + b$$

tra una coppia di campioni $\{ X_n \}_{n=1:N}$, $\{ Y_n \}_{n=1:N}$ estratti dalle popolazioni $X$, $Y$, che rende minimo l'errore quadratico medio

$$e:= \sum_{n=1}^{N} ( \hat{y}(X_n) - Y_n )^2 = \sum_{n=1}^N ( a \, X_n + b - Y_n )$$

