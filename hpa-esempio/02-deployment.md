## Creiamo un deployment

Un deployment in kubernetes è un oggetto che contiene tutto quello che serve alla nostra applicazione per girare. Con il seguente comando genereremo un deployment usando l'immagine creata al passo precedente


`kubectl run php-apache --image=hpa-example --requests=cpu=200m --limits=cpu=500m --expose --port=80`{{execute}}

