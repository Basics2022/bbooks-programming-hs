(statistics-hs:linear-regression)=
# Regressione lineare

Nella sua forma elementare, la regressione lineare è un'approssimazione (stimatore) lineare

  $$\hat{Y}(X|\theta) = a X + b \ ,$$

tra una coppia di campioni $\{ X_n \}_{n=1:N}$, $\{ Y_n \}_{n=1:N}$ estratti dalle popolazioni $X$, $Y$, i cui parametri $\theta = (a,b)$ rendono minimo l'errore quadratico medio

$$e:= \sum_{n=1}^{N} ( \hat{y}(X_n) - Y_n )^2 = \sum_{n=1}^N ( a \, X_n + b - Y_n )^2 \ ,$$

il cui valore permette di stimare la significatività dell'approssimazione lineare.

```{dropdown} Algoritmo

L'algoritmo base consiste nella:
- normalizzazione dei campioni:
  - vengono calcolate le medie e le varianze campionarie

    $$\begin{aligned}
      \mu_x = \frac{1}{N} \sum_{n=1}^N X_n \qquad & , \qquad S^2_x = \frac{1}{N-1} (X_n - \mu_x)^2 \\
      \mu_y = \frac{1}{N} \sum_{n=1}^N Y_n \qquad & , \qquad S^2_y = \frac{1}{N-1} (Y_n - \mu_y)^2
    \end{aligned}$$

  - vengono definiti i campioni normalizzati
    
    $$x_n = \frac{X_n - \mu_x}{S_x} \qquad , \qquad y_n = \frac{Y_n - \mu_y}{S_y}$$

    che hanno media nulla e varianza campionaria unitaria.

- calcolo dei valori ottimi dei parametri $\theta = (a, b)$ del modello applicato ai dati scalati,

   $$\hat{y}(x|\theta) = a x + b$$

   che rendono minimo l'errore quadratico,

   $$e:= \sum_{n=1}^{N} ( \hat{y}(x_n) - y_n )^2 = \sum_{n=1}^N ( a \, x_n + b - y_n )^2 \ .$$

   L'errore quadratico è una funzione definita positiva con un unico minimo in corrispondenza del sistema lineare formato dalle condizioni di derivate parziali nulle,

   $$\begin{cases}
     0 & = \dfrac{\partial e}{\partial a} = 2 \sum_{n=1}^N ( a \, x_n + b - y_n ) x_n \\
     0 & = \dfrac{\partial e}{\partial b} = 2 \sum_{n=1}^N ( a \, x_n + b - y_n )     \\
   \end{cases}$$

   che ha forma diagonale e, introducendo il coefficiente di correlazione dei campioni,

   $$r^2_{XY} = \frac{S^2_XY}{S_X S_Y} \qquad , \qquad S^2_{XY} = \frac{1}{N-1} \sum_{n=1}^N (X_n - \mu_X)(Y_n - \mu_Y) \ ,$$

   e usando il fomralismo matriciale può essere riscritto come,

   $$\begin{bmatrix} N-1 & 0 \\ 0 & N \end{bmatrix} \begin{bmatrix} a \\ b \end{bmatrix} = \begin{bmatrix} (N-1) r^2_{XY} \\ 0 \end{bmatrix} \ ,
   $$

   la cui soluzione è $a = r^2_{xy}$, $b = 0$. La forma della regressione lineare in termini delle variabili normalizzate è

   $$\hat{y}(x) = r^2_{XY} x \ ,$$

   e nelle variabili originali

   $$\begin{aligned}
     \hat{Y}(X) & = \mu_Y + S_Y r^2_{XY} \frac{X - \mu_X}{S_X} = \\
                & = r^2_{XY} \frac{S_Y}{S_X} X + \mu_Y - \mu_X r^2_{XY} \frac{S_Y}{S_X} = \\
                & = \frac{S^2_{XY}}{S^2_X} X + \mu_Y - \mu_X \frac{S^2_{XY}}{S^2_X} 
   \end{aligned}$$

```

```{dropdown} Regressione lineare come MLE
:open:

La regressione lineare può essere interpretata come risultato di un metodo di Maximum Likelihood Estimation, supponendo che ogni osservazione $Y_n$ sia il risultato del modello lineare lineare $a X_n + b$ con l'aggiunta di un errore $\varepsilon_n$,

$$Y_n = a X_n + b + \varepsilon_n \ ,$$

di variabili gaussiane indipendenti non correlate, identicamente distribuite a media nulla e varianza $\sigma^2$,

  $$\varepsilon_n \sim \mathscr{N}(0, \sigma^2) \sim \frac{1}{\sqrt{2 \pi \sigma^2}} \exp\left[ - \frac{\varepsilon^2}{2 \sigma^2} \right]$$

  $$\mathbb{E}[\varepsilon_m \varepsilon_n] = \sigma^2 \delta_{mn} \ .$$

Assumendo le $X_n$, $a$, $b$ osservazioni e parametri deterministici, senza incertezza, segue che

$$Y_n \sim \mathscr{N}(a X_n + b, \sigma^2) \ .$$

La ricerca dei parametri ottimi $a$, $b$, $\sigma^2$ prevede che ottimizzino la distribuzione di probabilità

$$p(x|\theta)$$


```
