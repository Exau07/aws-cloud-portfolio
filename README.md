# ☁️ Portfolio Cloud AWS – Ingénieur Cloud / DevOps

[![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazon-aws)](https://aws.amazon.com/)
[![Terraform](https://img.shields.io/badge/IaC-Terraform-623CE4?logo=terraform)](https://www.terraform.io/)
[![CI/CD](https://img.shields.io/badge/CI%2FCD-GitHub%20Actions%20%7C%20GitLab-orange)](https://docs.github.com/actions)

---

## 👋 Présentation

Ce repository présente un **portfolio professionnel Cloud AWS** construit autour de **labs progressifs**, conçus pour démontrer des compétences concrètes en :

- Architecture Cloud AWS
- Infrastructure as Code (Terraform)
- Sécurité & bonnes pratiques AWS
- Automatisation & CI/CD
- Observabilité & opérations
- Optimisation des coûts (FinOps)

L’objectif est de refléter le **travail réel d’un Ingénieur Cloud AWS en poste**, dans un contexte **DSI / production**, et non de simples démonstrations théoriques.

---

## 🎯 Objectifs du Portfolio

- Concevoir et déployer des architectures AWS robustes et sécurisées
- Migrer et opérer des workloads vers le cloud
- Mettre en œuvre l’Infrastructure as Code avec Terraform
- Garantir la sécurité, la disponibilité et la traçabilité
- Automatiser les déploiements et les opérations
- Optimiser les coûts et les performances
- Documenter et justifier les choix techniques (approche conseil)

---

## 🧱 Structure du Repository

aws-cloud-portfolio/
├── labs/                       # Labs techniques progressifs
│   ├── lab-00-setup-aws-account/
│   ├── lab-01-network-foundations/
│   ├── lab-02-compute-alb-asg/
│   ├── lab-03-observability/
│   ├── lab-04-security/
│   ├── lab-05-ci-cd/
│   ├── lab-06-finops/
│   └── lab-07-incident-run/
│
├── docs/                       # Documentation transverse
│   ├── adrs/                   # Architecture Decision Records
│   ├── diagrams/               # Schémas globaux
│   ├── best-practices/         # Sécurité, Terraform, Git
│   ├── incident-response/      # Runbooks & RCA
│   └── finops/                 # Optimisation des coûts
│
├── scripts/                    # Scripts d’automatisation
│   ├── init-portfolio.sh
│   ├── init-portfolio.ps1
│
├── .github/                    # GitHub configuration
│   ├── workflows/
│   └── PULL_REQUEST_TEMPLATE.md
│
└── README.md                   # Documentation principale

---

## 🧪 Parcours des Labs

### 🧪 Lab 00 — Setup AWS sécurisé
**Objectif** : préparer un compte AWS prêt pour la production  
- IAM (pas de root)
- Terraform sécurisé (S3 + DynamoDB)
- CloudTrail, GuardDuty
- Budgets & alertes

---

### 🧪 Lab 01 — Network Foundations
**Objectif** : construire une architecture réseau AWS robuste  
- VPC multi-AZ
- Subnets publics / privés
- NAT Gateway, routing
- Security Groups & NACL

---

### 🧪 Lab 02 — Compute, Load Balancing & Scalabilité
**Objectif** : héberger une application scalable  
- EC2
- Launch Templates
- Auto Scaling Group
- Application Load Balancer

---

### 🧪 Lab 03 — Observabilité & Alerting
**Objectif** : superviser et anticiper les incidents  
- CloudWatch Logs & Metrics
- Dashboards
- Alarmes CPU / mémoire
- Introduction New Relic (optionnel)

---

### 🧪 Lab 04 — Sécurité avancée
**Objectif** : renforcer la sécurité applicative et réseau  
- IAM least privilege
- WAF
- Security Hub
- Chiffrement KMS

---

### 🧪 Lab 05 — Automatisation & CI/CD
**Objectif** : automatiser les déploiements  
- Terraform via CI/CD
- GitHub Actions / GitLab CI
- Environnements dev / prod
- Validation et contrôle

---

### 🧪 Lab 06 — FinOps & Optimisation des coûts
**Objectif** : maîtriser les coûts cloud  
- Budgets & alertes
- Rightsizing EC2
- Arrêt planifié des ressources
- Analyse des coûts

---

### 🧪 Lab 07 — Incidents & Opérations
**Objectif** : démontrer la capacité à opérer une infrastructure  
- Incident simulé
- Analyse des causes (RCA)
- Runbooks
- Amélioration continue

---

## 🔐 Sécurité & Bonnes Pratiques

- ❌ Aucun usage du compte root
- 🔑 Accès par rôles IAM
- 🔒 Secrets jamais versionnés
- 🧾 Traçabilité complète (CloudTrail)
- 🛡️ Sécurité activée par défaut

---

## 🧰 Technologies Utilisées

- **Cloud** : AWS
- **IaC** : Terraform
- **CI/CD** : GitHub Actions, GitLab CI
- **OS / Scripting** : Linux, Bash, PowerShell
- **Observabilité** : CloudWatch, New Relic (optionnel)

> Kubernetes, Ansible et Python ne sont volontairement pas utilisés dans les premiers labs afin de privilégier la simplicité, la sécurité et les services managés AWS.

---

## 🧠 Démarche & Positionnement

Chaque lab inclut :
- une architecture documentée
- des choix techniques justifiés (ADR)
- des scripts reproductibles
- une approche orientée production

Ce portfolio adopte une **posture de conseil** et reflète les pratiques attendues d’un **Ingénieur Cloud AWS au sein d’une DSI**.

---

## 🚀 Démarrage rapide

```bash
git clone https://github.com/<votre-username>/aws-cloud-portfolio.git
cd aws-cloud-portfolio
bash scripts/init-portfolio.sh

📄 Licence

Ce projet est distribué sous licence MIT.

⸻

⭐ Ce portfolio est conçu comme un support de montée en compétences et de présentation professionnelle auprès de recruteurs et d’équipes techniques.
