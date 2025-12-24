# ADR 001 – Choix de Terraform et principes de sécurité

## Statut
Accepté

---

## Contexte
La mise en place de l’infrastructure Cloud nécessite :
- un outil reproductible
- sécurisé
- compréhensible par plusieurs équipes
- adapté à un contexte DSI

---

## Décision
Terraform est retenu comme outil principal d’Infrastructure as Code,
avec une exécution sécurisée via IAM (sans compte root).

---

## Justifications

### Terraform
- Déclaratif et lisible
- Planification avant exécution (`terraform plan`)
- Large écosystème
- Modules réutilisables
- Compatible CI/CD

### Sécurité
- Pas d’usage du compte root
- Accès via IAM et rôles
- Backend distant chiffré
- Séparation des environnements

---

## Alternatives considérées
- CloudFormation : trop verbeux, AWS-only
- AWS CDK : nécessite compétences de développement

---

## Conséquences
- Backend S3 + DynamoDB obligatoire
- Discipline IAM stricte
- Documentation associée à chaque lab