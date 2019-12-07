Un deployment in kubernetes è un oggetto che contiene tutto quello che serve alla nostra applicazione per girare. Con il seguente comando genereremo un deployment usando l'immagine creata al passo precedente.

Per prima cosa creaiamo un **namespace** che fungerà da swimlane per la nostra applicazione. Digitiamo il seguente comando nel terminale.

`kubectl create namespace example`{{execute}}

A questo punto possiamo eseguire il nostro deployment all'interno del namespace specificandolo con il parametro *--namespace=example*

`kubectl run php-apache --generator=run-pod/v1 --image=hpa-example --image-pull-policy=Never --namespace=example --requests=cpu=200m --limits=cpu=500m --expose --port=80`{{execute}}

Il comando che abbiamo appena dato è in realtà più complesso di quello che sembra. Andiamo a vedere cosa è successo nel nostro cluster digitando il seguente comando:

`kubectl get all -n example`{{execute}}

