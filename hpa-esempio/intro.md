## Benvenuti!
In questo scenario si illustra il funzionamento del Horizontal Pod Autoscaler (HPA) di Kubernetes.

![Image of Kubernetes logo](Kubernetes_Logo.png =320x200)

Kubernetes è uno strumento open source di orchestrazione e gestione di container. E’ stato sviluppato dal team di Google ed è uno dei tool più utilizzati a questo scopo. Kubernetes permette di eliminare molti dei processi manuali coinvolti nel deployment e nella scalabilità di applicazioni containerizzate e di gestire in maniera semplice ed efficiente cluster di host su cui vengono eseguiti i container.


Immaginate di utilizzare Docker e di creare un’infrastruttura composta da numerosi container; una volta raggiunto un certo grado di complessità, Docker fa fatica a gestire l’attivazione e disattivazione dei contenitori e tutte le altre operazioni di gestione, ed è in questa sede che si inserisce Kubernetes. Questo tool, infatti, nasce proprio per semplificare la gestione dei container e orchestrare in modo veloce, efficiente e performante l’intera infrastruttura.
Ma l’uso di Kubernetes non è legato solamente alla quantità di container in uso, ma soprattutto al livello di affidabilità e disponibilità ricercato per il servizio. Kubernetes è ideale per tutti i business che hanno bisogno di una soluzione in HA (Alta Disponibilità) e garantisce la continuità del servizio con SLA prossimi al 100%.

Come funziona?
Introduciamo prima di tutto alcuni termini fondamentali per comprendere l’architettura di Kubernetes.

* Master: la macchina che controlla i nodi Kubernetes. È il punto di origine di tutti i processi.

* Nodi: le macchine che eseguono le attività richieste, controllate dal master Kubernetes.

* Pod: un gruppo di uno o più container distribuiti su un singolo nodo. Tutti i container presenti in un pod condividono delle risorse. I pod astraggono la rete e lo storage dal container sottostante, permettendo di spostare i container nei cluster con maggiore facilità.

Kubernetes offre la possibilità di distribuire i container in modo agevole e scalabile e di gestire al meglio i carichi di lavoro. Permette di creare applicazioni e servizi su più container, programmarli e gestirli a livello di scalabilità e integrità nel tempo. La complessità di gestione derivante da un numero elevato di contenitori viene semplificata raggruppando i container in “pod”, che aiutano a programmare i carichi di lavoro e ad erogare i servizi richiesti, inclusi rete e storage ai container stessi. Kubernetes è anche in grado di bilanciare automaticamente i carichi all’interno dei pod, semplificando notevolmente la gestione complessiva dell’infrastruttura. Inoltre, l’infrastruttura standard di Kubernetes è completamente ridondata, e questo riduce drasticamente il rischio di downtime, mentre con il solo uso di Docker o di altri sistemi di conteinerizzazione, l’affidabilità non è assicurata a livelli così alti.
