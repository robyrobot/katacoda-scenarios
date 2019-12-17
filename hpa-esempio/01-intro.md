Per dimostrare il funzionamento del HPA utilizzeremo un'immagine docker personalizzata basata sull'immagine php-apache. 

## Prepariamo l'immagine

Creaiamo un file chiamto *Dockerfile* tramite il seguente comando (cliccando sull'icona a formadi freccia in basso a destra si eseguirà il comando nella finestra corrente):

`vi Dockerfile`{{execute}}

Premiamo il tasto <kbd>I</kbd> per entrare nella modalità edit e scriviamo il secuente codice (cliccando sull'icona di copia in basso a destra il codice verrà copiato negli appunti)

<pre class="file" data-target="clipboard">
FROM php:5-apache
ADD index.php /var/www/html/index.php
RUN chmod a+rx index.php
</pre>

Salviamo il file e usciamo dall'editor premendo prima il tasto <kbd>ESC</kbd>, uscendo in questo modo dalla modalità modifica del vi, e digitiamo *:wq* per scrivere il file.

Creiamo anche un file **index.php** 

`vi index.php`{{execute}}

con il seguente codice PHP:

<pre class="file" data-target="clipboard">
&lt;?php
  $x = 0.0001;
  for ($i = 0; $i <= 1000000; $i++) {
    $x += sqrt($x);
  }
  echo "response from {$_SERVER['SERVER_ADDR']} is $x\n";
?>
</pre>

Come si può notare il file implementa un'operazione che utilizza intensivamente la CPU.

## Generiamo l'immagine

Utilizziamo, adesso, il seguente comando per generare l'immagine docker.

`docker build -t php-apache:local .`{{execute}}

