# ADR 002 – Choix d’une architecture VPC multi-AZ

## Statut
Accepté

---

## Contexte
Les applications déployées sur AWS doivent répondre à des exigences de :
- disponibilité
- résilience
- évolutivité

---

## Décision
Le VPC sera déployé sur **au moins deux Availability Zones**, avec :
- subnets publics multi-AZ
- subnets privés multi-AZ
- routage adapté

---

## Justifications
- Haute disponibilité native AWS
- Tolérance à la panne d’une AZ
- Alignement avec les bonnes pratiques AWS Well-Architected

---

## Alternatives considérées
- Mono-AZ : rejetée (SPOF)
- Multi-région : trop complexe pour ce périmètre

---

## Conséquences
- Coût légèrement supérieur
- Architecture plus robuste
- Préparation aux Auto Scaling Groups