# A-Complicated-Simple-Test

# Level 0 I don’t play with Windows

## Task 3 :

Le fichier se trouve [ici](ansible/install_docker.yml). La tâche à la ligne 34 permet les droits à l'utiliser "s2m-user" d'utiliser docker.

## Task 4 :

Le fichier se trouve [ici](ansible/root_ssh.yml). La tâche à la ligne 18 permet de générer une paire de clé SSH pour "root".

## Task 5 :

Il faut d'abord augmenté la taille du disque sur VMware Player de 20 Go à 30 Go. Le fichier se trouve [ici](bash/extend_disk.sh).

## Task 6 :

Le fichier se trouve [ici](ansible/custom_var.yml).

## Task 7 :

Le fichier se trouve [ici](ansible/install_postgre.yml).

# Level 1: The Services

## Tasks 1, 2, 3, 4 & 5 :

Les fichiers se trouvent dans les dossiers [ansible/go](ansible/go), [go](go) et [my-react-app](my-react-app).

## Tasks 6 et 7:

Les fichiers sont [nginx.sh](bash/nginx.sh) et [nginx.conf](nginx.conf).

# Level 2: The Containers

## Tasks 2 :

Les fichiers sont dans le dossier [docker](docker).

# Level 3: The Containers

## Tasks 2 : Orchestration 

Je n'ai honnement pas réussi à faire foncionner l'ingress sur la VM. Je pense que les fichiers sont corrects mais je n'arrive pas à trouver l'erreur.

# Level 4: One more thing

C'est un excellent exercice pour comprendre les différentes manières de déployer des services. J'ai rencontré plusieurs problématiques auxquelles je ne m'attendais pas, ce qui m'a permis de passer plus de temps que prévu sur certains aspects, mais cela a été très intéressant.

Il est important de noter que je n'ai mis en place aucune forme de sécurité : tout a été installé sous l'utilisateur root, les versions de Nginx ne sont pas masquées, j'ai désactivé SELinux pour faciliter le processus, et il n'y a pas de mécanisme de scalabilité, ce qui expose le système à un risque de DDoS. De plus, l'absence de pare-feu ou de configurations de filtrage d'IP expose davantage l'infrastructure aux attaques externes. Le manque de séparation des privilèges entre les services augmente également le risque d'élévation de privilèges en cas de vulnérabilité dans un composant du système.

Étant donné que nous avons utilisé plusieurs méthodes pour déployer les services, il existe de nombreuses pistes d'amélioration pour optimiser ce déploiement. Quelle que soit la méthode choisie, il est essentiel de renforcer la disponibilité, la sécurité et la résilience des services. Cela passe par la mise en place de pratiques telles que l'utilisation de comptes non-root, le masquage des versions, la réactivation de SELinux ou l'AppArmor, la gestion des configurations de sécurité (par exemple, un vrai SSL/TLS pour la communication sécurisée), ainsi que l'implémentation de mécanismes de scalabilité et de haute disponibilité pour éviter les risques de surcharge et les attaques par déni de service.
