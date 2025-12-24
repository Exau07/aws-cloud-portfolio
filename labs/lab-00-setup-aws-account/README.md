# Lab 00 – Setup AWS sécurisé

## 🎯 Objectif
Mettre en place un compte AWS sécurisé, prêt pour des déploiements Terraform
en respectant les bonnes pratiques AWS et DevOps.

## Pourquoi ce lab ?
Avant toute infrastructure, un ingénieur Cloud doit :
- sécuriser l’accès
- tracer les actions
- maîtriser les coûts
- éviter l’usage du compte root

## Résultat attendu
- Accès AWS via IAM (pas de root)
- Terraform exécuté via un rôle dédié
- Sécurité native AWS activée
- Budget et alertes configurés