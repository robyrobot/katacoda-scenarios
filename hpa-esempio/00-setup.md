
## Installazione dell'environment microk8s

accediamo al sito: https://microk8s.io/docs/ e seguiamo i passi per installare microk8s

Possiamo anche eseguire i singoli passi cliccando sul comando.

Step 1: Installare microk8s
`sudo snap install microk8s --classic`{{execute}}

Step 2: Inseriamo l'utente corrente nel gruppo microk8s generato in fase di installazione
`sudo usermod -a -G microk8s $USER`{{execute}}

Step 3: Eseguiamo l'accesso per rendere effettive le modifiche
`su - $USER`{{execute}}

Step 4: Creiamo un alias per evitare di scrivere sempre microk8s.kubectl
`alias kubectl='microk8s.kubectl'`{{execute}}

Step 5: Installare gli addon per il DNS e le metriche
`microk8s.enable dns metrics-server`{{execute}}
