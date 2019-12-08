Rieseguiamo il load generator (il crash avrà fatto chiudere il POD e quindi lo si deve rigenerare).

`kubectl -n example run --generator=run-pod/v1 -it --rm load-generator --image=busybox /bin/sh`{{execute}}

... e rieseguiamo lo script per generare il carico sulla CPU.

`while true; do wget -q -O- http://php-apache.example.svc.cluster.local; done`{{execute}}

Questa volta il container non si fermerà e potremmo osservare che l'indirizzo del POD cambierà perchè l'HPA replicherà l'applicazione generando una serie di cloni per far fronte al carico crescente basandosi sui limiti della CPU fissati nel deployment.
In un altro terminale eseguiamo il seguente comando per vedere che il numero di POD è aumentato e il carico è stato distribuito.

`kubectl -n example top pod`{{execute}}