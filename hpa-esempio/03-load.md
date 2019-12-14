E' giunto il momento di aumentare il carico. Il seguente comando creerà un ambiente entro il quale eseguire una serie di richieste continuata al servizio *php-apache*. Questo porterà ad un aumento del lavoro della CPU. Eseguiamo il seguente comando entro un altro terminale che possiamo aprire cliccando il tasto più.

`kubectl -n example run --generator=run-pod/v1 -it --rm load-generator --image=busybox /bin/sh`{{execute}}

nella shell appena apparsa scriviamo il seguente script. Lo script non fa altro che generare un numero infinito di chiamate al servizio in cascata. Il risultato sarà la stampa dell'indirizzo del POD che risponde alla chiamata.

`while true; do wget -q -O- http://php-apache.example.svc.cluster.local; echo; done`{{execute}}

Osserviamo in un'altra finestra le metriche tramite il comando:

`watch -n 2 kubectl -n example top pod`{{execute}}