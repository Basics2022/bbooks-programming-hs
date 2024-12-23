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

   $$\begin{bmatrix} N-1 & 0 \\ 0 & N \end{bmatrix} \begin{bmatrix} a \\ b \end{bmatrix} = \begin{bmatrix} (N-1) r_{XY} \\ 0 \end{bmatrix} \ ,
   $$

   la cui soluzione è $a^* = r_{XY}$, $b^* = 0$. La forma della regressione lineare in termini delle variabili normalizzate è

   $$\hat{y}(x) = r_{XY} x \ .$$

   L'errore quadratico minimo nelle variabili normalizzate vale

   $$\begin{aligned}
     e^* & = \sum_{n=1}^N ( a^* x_n + b^* - y_n )^2 = \\
         & = \sum_{n=1}^N ( r_{XY} x_n - y_n )^2 = \\
         & = r^2_{XY} (N-1) - 2 (N-1) r_{XY} r_{XY} + (N-1) = \\
         & = (N-1) \left( 1 - r^2_{XY} \right) \ .
   \end{aligned}$$

   Il modello nelle variabili originali diventa

   $$\begin{aligned}
     \hat{Y}(X) & = \mu_Y + S_Y r_{XY} \frac{X - \mu_X}{S_X} = \\
                & = r_{XY} \frac{S_Y}{S_X} X + \mu_Y - \mu_X r_{XY} \frac{S_Y}{S_X} = \\
                & = \frac{S^2_{XY}}{S^2_X} X + \mu_Y - \mu_X \frac{S^2_{XY}}{S^2_X} 
   \end{aligned}$$

```

```{dropdown} Regressione lineare come MLE
:open:

La regressione lineare può essere interpretata come risultato di un metodo di Maximum Likelihood Estimation, supponendo che ogni osservazione $y_n$ sia il risultato del modello lineare lineare $a x_n + b$ con l'aggiunta di un errore $\varepsilon_n$,

$$y_n = a x_n + b + \varepsilon_n \ ,$$

di variabili gaussiane indipendenti non correlate, identicamente distribuite a media nulla e varianza $\sigma^2$,

  $$\varepsilon_n \sim \mathscr{N}(0, \sigma^2) \sim \frac{1}{\sqrt{2 \pi \sigma^2}} \exp\left[ - \frac{x^2}{2 \sigma^2} \right]$$

  $$\mathbb{E}[\varepsilon_m \varepsilon_n] = \sigma^2 \delta_{mn} \ .$$

Assumendo le $x_n$, $a$, $b$ osservazioni e parametri deterministici, senza incertezza, segue che

$$y_n \sim \mathscr{N}(a x_n + b, \sigma^2) \ .$$

I parametri ottimi del modello $a$, $b$, $\sigma^2$ rendono massima la probabilità,

$$p(\mathbf{x},\mathbf{y}|\theta) = \prod_{n=1}^N \frac{1}{\sqrt{2 \pi \sigma^2}} \exp\left[ -\frac{(a x_n + b - y_n)^2}{2\sigma^2} \frac{}{} \right] \ ,$$

nel caso in cui le osservazioni siano indipendenti e quindi valga $p(\mathbf{x},\mathbf{y}|\theta) = \prod_{n=1}^N p(x_n,y_n|\theta)$, o il suo logaritmo

$$\ln p(\mathbf{x},\mathbf{y}|\theta) = - \frac{N}{2} \ln (2\pi \sigma^2) - \sum_{n=1}^N \frac{(a x_n + b - y_n)^2}{2 \sigma^2} \ .$$

L'annullamento delle derivate parziali produce il sistema lineare

$$\begin{cases}
 0 & = \frac{\partial p}{\partial a}        = \sum_{n=1}^N ( a x_n + b - y_n ) x_n \\
 0 & = \frac{\partial p}{\partial b}        = \sum_{n=1}^N ( a x_n + b - y_n ) \\
 0 & = \frac{\partial p}{\partial \sigma^2} = -\frac{N}{2}\frac{1}{\sigma^2} + \sum_{n=1}^N \frac{( a x_n + b - y_n )^2}{2 \sigma^4} \\
\end{cases}$$

la cui soluzione, ipotizzando di aver normalizzato i campioni sulle medie e varianze campionarie,

$$\begin{aligned}
  a^* = r_{XY} \quad , \quad b^* = 0 \quad , \quad \sigma^{2*} = \frac{1}{N} \sum_{n=1}^N \left( a x_n + b - y_n  \right)^2 = \frac{e^*}{N} = \frac{N-1}{N} (1 - r^2_{XY})
\end{aligned}$$


```

```{dropdown} Statistiche $\ \chi^2 \ $ e $\ t \ $
:open:

Siano $y_n$ delle variabili gaussiane con varianza $\sigma^2$ e media $a x_n + b$, con $b = 0$ e 

$$\begin{aligned}
  a = r
    & = \frac{S^2_{XY}}{S_X S_Y} = \\
    & = \frac{\frac{1}{N-1} \sum_{n=1}^{N} (X_n - \bar{X})(Y_n - \bar{Y})}{\sqrt{\frac{1}{N-1} \sum_{n=1}^{N} (X_n - \bar{X})^2} \sqrt{\frac{1}{N-1} \sum_{n=1}^{N} (Y_n - \bar{Y})^2}} = \\
    & = \frac{1}{N-1} \sum_{n=1}^N \left( \frac{X_n - \bar{X}}{S_X} \right)  \left(  \frac{Y_n - \bar{Y}}{S_Y} \right) = \\
    & = \frac{1}{N-1} \sum_{n=1}^N x_n \, y_n 
\end{aligned}$$

$$\mathbb{E}[a] = \frac{1}{N-1} \sum_{m=1}^{N} x_m \mathbb{E}[y_m]$$


$$\varepsilon_n := y_n - a x_n \sim \mathscr{N}(0, \sigma^2) \ .$$
$$0 = \mathbb{E}[\varepsilon_n] = \mathbb{E}[y_n] - \mathbb{E}[a] \, x_n$$


$$\begin{aligned}
  \sigma^2 \delta_{mn}
  & = \mathbb{E}\left[ \varepsilon_m \varepsilon_n \right] = \\
  & = \mathbb{E}\left[ (y_m - a x_m) (y_n - a x_n) \right] = \\
  & = \mathbb{E}\left[ y_m y_n \right] - x_m \mathbb{E} \left[ a y_n \right] -  y_m \mathbb{E} \left[ a x_n \right] + x_n \, x_m \mathbb{E}[ a^2 ] = \\
\end{aligned}$$

$$\begin{aligned}
  \mathbb{E}[y_m y_n] 
  & = \mathbb{E}[ (\bar{y}_m + \delta y_m) ( \bar{y}_n + \delta y_n )] = \\
  & = \bar{y}_m \bar{y}_n + \mathbb{E}[ \delta y_m \delta y_n ] = \\
  & = \bar{y}_m \bar{y}_n + \sigma^2 \delta_{mn} \\
\end{aligned}$$


$$\begin{aligned}
  \mathbb{E}\left[ \sum_{n=1}^{N} (y_n - a x_n)^2 \right] 
  & = \mathbb{E}\left[ \sum_{n=1}^{N} \left(y_n - \frac{1}{N-1} \sum_{m=1}^N y_m x_m x_n \right)^2 \right] = \\
  & = \sum_{n=1}^{N} \mathbb{E}\left[ y^2_n - \frac{2}{N-1} \sum_{m=1}^{N} y_n y_m x_m x_n + \frac{2}{(N-1)^2} \sum_{m=1}^{N} \sum_{p > m} y_m y_p x_m x_p x_n^2 + \frac{1}{(N-1)^2} \sum_{m=1}^{N} y_m^2 x_m^2 x_n^2 \right] = \\
  & = \sum_{n=1}^{N} ( \bar{y}_n^2 + \sigma^2 ) - \frac{2}{N-1} \sum_{n,m=1}^N (\bar{y}_m \bar{y}_n + \sigma^2 \delta_{mn}) x_m x_n + \frac{2}{(N-1)^2} \sum_{n,m=1}^N \sum_{p>m} (\bar{y}_m \bar{y}_p + \sigma^2 \delta_{mp}) x_m x_p x_n^2 + \frac{1}{(N-1)^2} \sum_{n,m=1}^N \left( \bar{y}_m^2 + \sigma^2 \right) x_m^2 x_n^2   = \\
  & = \bar{a}^2 \sum_{n=1}^N x_n^2 + N \sigma^2 - \frac{2 \bar{a}^2}{N-1} \sum_{m,n=1}^{N} x_m^2 x_n^2 - \frac{2}{N-1} \sigma^2\sum_{n=1}^{N} x_n^2 + \\
  & \quad + \frac{2}{(N-1)^2} \sum_{n,m=1}^{N} \sum_{p>m} x_m^2 x_p^2 x_n^2 + \frac{\bar{a}^2}{(N-1)^2} \sum_{m,n=1}^N x_m^4 x_n^2 + \frac{1}{(N-1)^2} \sigma^2 \sum_{m,n=1}^{N} x_m^2 x_n^2 = \\
  & = \bar{a}^2 (N-1) + N \sigma^2 - 2 \bar{a}^2 (N-1) - 2 \sigma^2 + 2 \sum_{p \dots} \dots + \dots \bar{a}^2 \sum_{\dots} x_m^4 + \sigma^2
\end{aligned}$$

```
