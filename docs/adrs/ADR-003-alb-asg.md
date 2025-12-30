# ADR 003 – Choix ALB + ASG avec AMI dynamique

## Statut
Accepté

## Décision
Déploiement d’une architecture applicative basée sur :
- Application Load Balancer
- Auto Scaling Group
- EC2 avec AMI dynamique

## Justifications
- Haute disponibilité
- Scalabilité automatique
- Mises à jour sécurité continues
- Bon alignement AWS Well-Architected

## Alternatives rejetées
- EC2 standalone
- AMI codée en dur

## Conséquences
- Infrastructure plus robuste
- Maintenance simplifiée
- Sécurité renforcée