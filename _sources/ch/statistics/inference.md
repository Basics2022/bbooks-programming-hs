(statistics-hs:inference)=
# Statistica inferenziale

La statistica inferenziale si occupa di stabilire le caratteristiche di una popolazione dall'osservazione di un suo campione, usando gli strumenti del calcolo delle probabilità. 
<!-- La statistica inferenziale usa gli strumenti del calcolo delle probabilità, per svolgere il compito inverso -->

**Esempi di applicazioni.**
- **verifica ipotesi**.
- **stima**.
  - Maximum Likelihood Method (MLE). Date $N$ osservazioni di un campione $\mathbf{x} = \{ x_n \}_{n=1:N}$, e ipotizzata una funzione di probabilità della grandezza osservata relativa alla popolazione, $p(x| \symbf{\theta})$ che dipende dai parametri $\mathbf{\theta}$, si vuole determinare il valore dei parametri che rende massima la probabilità condizionata di aver osservato il campione,
    
    $$f(\mathbf{x}|\symbf{\theta})$$

