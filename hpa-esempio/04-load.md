E' giunto il momento di aumentare il carico. Il seguente comando creerà un ambiente entro il quale eseguire una serie di richieste continuata al servizio *php-apache*. Questo porterà ad un aumento del lavoro della CPU e quindi farà scattare l'HPA che provvederà a replicare l'applicazione per gestire il carico in aumento fino al raggiungimento del numero massimo consentito di repliche.

`kubectl run --generator=run-pod/v1 -it --rm load-generator --image=busybox /bin/sh`{{execute}}

nella shell appena apparsa scriviamo il seguente script. Lo script non fa altro che generare un numero infinito di chiamate al servizio in cascata. Il risultato sarà la stampa dell'indirizzo del POD che risponde alla chiamata.

`while true; do wget -q -O- http://php-apache.default.svc.cluster.local; done`{{execute}}

Osservate cosa succede dopo un po' di tempo ... l'indirizzo del POD cambierà perchè l'HPA replicherà l'applicazione generando una serie di repliche per far fronte al carico crescente basandosi sui limiti della CPU fissati nel deployment.