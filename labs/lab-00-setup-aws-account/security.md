# 🔐 Sécurité – Lab 00 : Setup AWS sécurisé

## 🎯 Objectif
Sécuriser le compte AWS dès sa création, avant tout déploiement applicatif
ou infrastructure de production.

---

## 🚫 Compte Root
- Utilisé uniquement pour :
  - activation MFA
  - configuration initiale de la facturation
- Aucun accès programmatique
- Mot de passe fort
- MFA obligatoire

---

## 👤 IAM & Accès
- Utilisateurs IAM nominatifs
- Groupes IAM par rôle
- Pas de clés stockées dans Git
- Accès via rôles IAM lorsque possible

---

## 🧱 Terraform & Sécurité
- Terraform exécuté via un profil AWS dédié
- Backend distant sécurisé :
  - S3 chiffré
  - Lock DynamoDB
- `.tfstate` jamais versionné

---

## 🧾 Audit & Détection
- CloudTrail activé (multi-région)
- GuardDuty activé
- Préparation à Security Hub (lab ultérieur)

---

## 💰 FinOps
- Budget mensuel configuré
- Alertes de dépassement
- Prévention des dérives de coûts

---

## ✅ Résultat
Compte AWS :
- sécurisé
- traçable
- maîtrisé
- prêt pour des workloads cloud