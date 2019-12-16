Un deployment in kubernetes è un oggetto che contiene tutto quello che serve alla nostra applicazione per girare. Con il seguente comando genereremo un deployment usando l'immagine creata al passo precedente.

Per prima cosa creaiamo un **namespace** che fungerà da swimlane per la nostra applicazione. Digitiamo il seguente comando nel terminale.

`kubectl create namespace example`{{execute}}

Prima di creare il deployment dobbiamo importare l'immagine appena creata in microk8s. Per fare questo dobbiamo prima salvarla in un archivio tar e poi importare l'archivio.
Per salvare usiamo il comando *save* di docker.

`docker save php-apache:local > php-apache.tar`{{execute}}

A questo punto possiamo importarlo.

`microk8s.ctr --namespace k8s.io image import php-apache.tar`{{execute}}

L'immagine verrà importata in microk8s con il nome: *docker.io/library/php-apache:local*
A questo punto possiamo eseguire il nostro deployment all'interno del namespace specificandolo con il parametro *--namespace=example*

`kubectl run php-apache --image-pull-policy=Never --image=docker.io/library/php-apache:local --namespace=example --requests=cpu=200m --limits=cpu=300m --expose --port=80`{{execute}}

Il comando che abbiamo appena dato è in realtà più complesso di quello che sembra. Andiamo a vedere cosa è successo nel nostro cluster digitando il seguente comando:

`kubectl get all -n example`{{execute}}

Come si può vedere sono stati creati diversi oggetti di kubernetes: deployment, pod, service, replicaSet.

