# Architecture – Lab 00

## Vue logique

Utilisateur (Admin IAM)
        |
        v
   AWS IAM Role (Terraform)
        |
        v
Terraform
        |
        v
AWS Account
  - IAM
  - S3 (state Terraform)
  - DynamoDB (lock)
  - CloudTrail
  - GuardDuty
  - Budgets

## Principes clés
- Jamais de compte root
- Accès par rôles IAM
- Traçabilité complète
- Sécurité activée par défaut