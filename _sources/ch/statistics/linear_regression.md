(statistics-hs:linear-regression)=
# Regressione lineare

Nella sua forma elementare, la regressione lineare è un'approssimazione (stimatore) lineare

  $$\hat{y}(x|\theta) = a x + b \ ,$$

tra una coppia di campioni $\{ X_n \}_{n=1:N}$, $\{ Y_n \}_{n=1:N}$ estratti dalle popolazioni $X$, $Y$, i cui parametri $\theta = (a,b)$ rendono minimo l'errore quadratico medio

$$e:= \sum_{n=1}^{N} ( \hat{y}(X_n) - Y_n )^2 = \sum_{n=1}^N ( a \, X_n + b - Y_n )^2 \ ,$$

il cui valore permette di stimare la significatività dell'approssimazione lineare. 

