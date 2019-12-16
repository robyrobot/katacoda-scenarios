accediamo al sito: https://microk8s.io/docs/ e seguiamo i passi per installare microk8s oppure usiamo i comandi seguenti:

Step 1: Installare microk8s usando il package manager *snap*. 

`sudo snap install microk8s --classic`{{execute}}

Step 2: Creiamo un alias per evitare di scrivere sempre microk8s.kubectl. 

`alias kubectl='microk8s.kubectl'`{{execute}}

Step 3: Installare gli addon per il DNS e le metriche. 

`microk8s.enable dns metrics-server`{{execute}}
