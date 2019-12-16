accediamo al sito: https://microk8s.io/docs/ e seguiamo i passi per installare microk8s

Step 1: Installare microk8s

>>Step 1: Installare microk8s<<
=~= sudo snap install microk8s --classic

Step 2: Inserire l'utente corrent nel gruppo microk8s

>>Step 2: Inserire l'utente corrent nel gruppo microk8s<<
=== sudo usermod -a -G microk8s $USER

Step 3: eseguire l'accesso per rendere effettive le modifiche

>>Step 3: eseguire l'accesso per rendere effettive le modifiche<<
=== su - $USER

Step 4: creare un alias per microk8s.kubectl

>>Step 4: creare un alias per microk8s.kubectl<<
=== alias kubectl='microk8s.kubectl'

Step 5: aggiungere gli addon "dns" e "metrics-server"

>>Step 5: aggiungere gli addon "dns" e "metrics-server"<<
=== microk8s.enable dns metrics-server

