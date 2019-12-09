
Ora possiamo creare l'HPA.
Il seguente comando creerà un HPA che mantiene tra 1 e 10 repliche dei pod controllati dal deployment *php-apache* che abbiamo creato in precedenza. In parole povere, HPA aumenterà e diminuirà il numero di repliche (tramite la distribuzione) per mantenere un utilizzo medio della CPU su tutti i pod del 50% (poiché ogni pod richiede 200 milli-core per kubectl, ciò significa un utilizzo medio della CPU di 100 milli-cores).

`kubectl -n example autoscale deployment php-apache --cpu-percent=50 --min=1 --max=10`{{execute}}

Possiamo controllare lo stato del HPA attraverso il seguente comando:

`kubectl -n example get hpa`{{execute}}