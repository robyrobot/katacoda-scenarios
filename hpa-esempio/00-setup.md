
## Installazione dell'environment microk8s

accediamo al sito: https://microk8s.io/docs/ e seguiamo i passi per installare microk8s

Installiamo microk8s usando snap in ubuntu

>>Q1: Installare microk8s<<
=~= sudo snap install microk8s --classic

Inseriamo l'utente corrente nel gruppo microk8s generato in fase di installazione

>>Q2: Inserire l'utente corrent nel gruppo microk8s<<
=== sudo usermod -a -G microk8s $USER

Eseguiamo l'accesso per rendere effettive le modifiche

>>Q3: accesso<<
=== su - $USER

Creiamo un alias per evitare di scrivere sempre microk8s.kubectl

>>Q4: creare un alias per microk8s.kubectl<<
=== alias kubectl='microk8s.kubectl'

Installare gli addon per il DNS e le metriche

>>Q5: aggiungere gli addon "dns" e "metrics-server"<<
=== microk8s.enable dns metrics-server
