E' giunto il momento di aumentare il carico. Il seguente comando creerà un ambiente entro il quale eseguire una serie di richieste continuata al servizio *php-apache*.

`kubectl run --generator=run-pod/v1 -it --rm load-generator --image=busybox /bin/sh`{{execute}}

nella shell appena apparsa scriviamo il seguente script.

`while true; do wget -q -O- http://php-apache.default.svc.cluster.local; done`{{execute}}
