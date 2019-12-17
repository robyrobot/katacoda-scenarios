accediamo al sito: https://microk8s.io/docs/ e seguiamo i passi per installare microk8s oppure usiamo i comandi seguenti:

Step 1: Installare microk8s usando il package manager *snap*. 

`snap install microk8s --classic`{{execute}}

Step 2: Creiamo un alias per evitare di scrivere sempre microk8s.kubectl. 

`snap alias microk8s.kubectl kubectl`{{execute}}

Step 3: Installare gli addon per il DNS, le metriche e la dashboard di kubernetes. 

`microk8s.enable dns metrics-server dashboard`{{execute}}

Step 4: Configuriamo la dashbaord

Per prima cosa dobbiamo ricavare il token per connetterci alla dashboard.

```
token=$(microk8s.kubectl -n kube-system get secret | grep default-token | cut -d " " -f1)
microk8s.kubectl -n kube-system describe secret $token
```{{execute}}

Appuntiamoci il token appena ottenuto copiandolo negli appunti. 
Ora dobbiamo eseguire un port forward per poter accedere alla dashboard. Ad esempio usiamo la porta 10443.

`microk8s.kubectl port-forward -n kube-system service/kubernetes-dashboard 10443:443 --address 0.0.0.0`{{execute}}

> Per accedere alla dashboard utilizziamo il seguente indirizzo:>
> https://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com