Per prima cosa verrà avviato in background una istanza single node di Kubernetes.

Per dimostrare il funzionamento del HPA utilizzeremo un'immagine docker personalizzata basata sull'immagine php-apache. 

## Prepariamo l'immagine

Creiamo un file tramite l'editor o vi e lo chiamiano **Dockerfile** e scriviamo il seguente codice

`FROM php:5-apache
ADD index.php /var/www/html/index.php
RUN chmod a+rx index.php`{{copy}} {{execute}}

Creiamo anche un file **index.php** con il seguente contenuto:

`
<?php
  $x = 0.0001;
  for ($i = 0; $i <= 1000000; $i++) {
    $x += sqrt($x);
  }
  echo "response from {$_SERVER['SERVER_ADDR']} is $x";
?>
`{{execute}}

Come si può notare il file implementa un'operazione che utilizza intensivamente la CPU.

## Generiamo l'immagine

Utilizziamo, adesso, il seguente comando per generare l'immagine docker.

`docker build -t php-apache:local .`{{copy}}

