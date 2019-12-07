Per prima cosa verrà avviato in background una istanza single node di Kubernetes.

Per dimostrare il funzionamento del HPA utilizzeremo un'immagine docker personalizzata basata sull'immagine php-apache. Il Dockerfile ha il seguente contenuto:

FROM php:5-apache
ADD index.php /var/www/html/index.php
RUN chmod a+rx index.php

il file index.php all'interno dell'immagina implementa un'operazione che utilizza intensivamente la CPU:

<?php
  $x = 0.0001;
  for ($i = 0; $i <= 1000000; $i++) {
    $x += sqrt($x);
  }
  echo "OK!";
?>

## Prepariamo l'immagine

Utilizziamo il seguente comando per generare l'immagine docker.

`docker build -t hpa-example .`

