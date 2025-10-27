# 🛠️ Winastic - Maintenance Système Windows

[![PowerShell](https://img.shields.io/badge/PowerShell-5.1+-blue.svg)](https://github.com/PowerShell/PowerShell)
[![Windows](https://img.shields.io/badge/Windows-10%2F11-green.svg)](https://www.microsoft.com/windows)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Version](https://img.shields.io/badge/Version-4.4-orange.svg)](https://github.com/yourusername/winastic/releases)

> **Script PowerShell automatisé pour la maintenance complète de Windows avec interface graphique moderne**

Winastic est un outil de maintenance système Windows tout-en-un qui combine puissance et simplicité. Il automatise les tâches de maintenance les plus importantes avec une interface graphique intuitive et des logs en temps réel.

## ✨ Fonctionnalités Principales

### 🔧 **Maintenance Système**
- **SFC (System File Checker)** - Vérification et réparation des fichiers système
- **DISM** - Réparation de l'image système Windows
- **Windows Update** - Vérification des mises à jour critiques

### 💾 **Optimisation Disque**
- **Nettoyage automatique** - Suppression des fichiers temporaires et caches
- **Défragmentation intelligente** - Optimisation selon le type de disque (SSD/HDD)
- **Analyse SMART** - Surveillance de la santé des disques
- **Nettoyage WinSxS** - Libération d'espace dans le magasin de composants

### 📋 **Registre Windows**
- **Défragmentation du registre** - Optimisation programmée au redémarrage
- **Nettoyage complet** - Suppression des entrées obsolètes et caches

### 📱 **Applications**
- **Mise à jour Winget** - Mise à jour automatique de tous les logiciels
- **Cache Windows Store** - Réinitialisation du cache Microsoft Store

### ⚡ **Performance**
- **Libération RAM** - Optimisation de la mémoire système
- **Mise à jour pilotes** - Recherche et installation des pilotes
- **Vérification intégrité** - Contrôle de la sécurité des pilotes

### 📊 **Diagnostic**
- **Rapport de santé complet** - Analyse détaillée du système
- **Informations système** - OS, CPU, mémoire, disques, réseau

### 🔧 **Commandes Personnalisées**
- **Exécution de commandes custom** - Lancez vos propres scripts après les optimisations
- **Sauvegarde automatique** - Les commandes sont sauvegardées et rechargées
- **Logs détaillés** - Suivi complet avec codes retour

### 📝 **Logs Persistants**
- **Enregistrement automatique** - Logs sauvegardés dans `%TEMP%\Winastic\logs\`
- **Consultation facile** - Bouton "Ouvrir log précédent" dans l'interface
- **Codes retour** - Interprétation automatique des résultats

## 🚀 Installation et Utilisation

### Prérequis
- Windows 10/11
- PowerShell 5.1 ou supérieur
- Droits administrateur

### Installation Rapide
```powershell
# Télécharger le script
git clone https://github.com/yourusername/winastic.git
cd winastic

# Exécuter Winastic
.\Winastic.ps1
```

### Utilisation
1. **Lancement automatique** - Le script s'élève automatiquement en administrateur
2. **Sélection des options** - Cochez les tâches de maintenance souhaitées
3. **Exécution** - Cliquez sur "Lancer" pour démarrer la maintenance
4. **Suivi en temps réel** - Suivez le progrès dans la fenêtre de logs
5. **Résultats** - Consultez le rapport final et les statistiques

## 🎨 Interface Utilisateur

### Menu Principal
- **Design moderne** - Interface graphique responsive en 2 colonnes
- **Icônes intuitives** - Symboles Unicode pour chaque fonction
- **Tooltips informatifs** - Descriptions détaillées au survol
- **Sélection flexible** - Toutes les options sont cochables/décochables
- **Boutons de contrôle** - Sélection/désélection globale

### Fenêtre de Logs
- **Logs en temps réel** - Affichage instantané du progrès
- **Design moderne** - Interface épurée et professionnelle
- **Redimensionnable** - Adaptation automatique à la taille de fenêtre
- **Boutons d'action** - Retour au début ou fermeture

## 📋 Fonctions Détaillées

### Maintenance Système

#### SFC (System File Checker)
```powershell
sfc /scannow
```
- **Durée** : 10-30 minutes
- **Fonction** : Vérifie et répare les fichiers système corrompus
- **Criticité** : ⭐⭐⭐⭐⭐ (Essentiel)

#### DISM (Deployment Image Servicing)
```powershell
DISM /Online /Cleanup-Image /RestoreHealth
```
- **Durée** : 15-45 minutes
- **Fonction** : Répare l'image système Windows
- **Criticité** : ⭐⭐⭐⭐⭐ (Essentiel)

### Optimisation Disque

#### Nettoyage Automatique
- Suppression des fichiers temporaires utilisateur et système
- Vidage du cache Windows Update
- Nettoyage des fichiers de recyclage
- **Durée** : 2-5 minutes

#### Défragmentation Intelligente
- **SSD** : Commande TRIM pour optimisation
- **HDD** : Défragmentation complète
- Détection automatique du type de disque
- **Durée** : 5-30 minutes selon le disque

#### Analyse SMART
- Surveillance des paramètres de santé des disques
- Détection des signes avant-coureurs de panne
- Rapport détaillé de l'état de chaque disque
- **Durée** : 1-2 minutes

### Registre Windows

#### Défragmentation
- Programmation du compactage au redémarrage
- Optimisation de la structure du registre
- Amélioration des performances d'accès
- **Effet** : Visible au prochain redémarrage

#### Nettoyage Complet
- Suppression des entrées de désinstallation obsolètes
- Nettoyage des clés temporaires (RecentDocs, RunMRU)
- Suppression des caches d'application
- Nettoyage de l'historique de recherche
- **Durée** : 3-10 minutes

### Applications

#### Mise à jour Winget
```powershell
winget upgrade --all --silent --force --disable-interactivity
```
- Mise à jour automatique de tous les logiciels
- Mode silencieux sans prompts UAC
- **Durée** : 5-20 minutes selon le nombre d'applications

#### Cache Windows Store
```powershell
WSReset.exe
```
- Réinitialisation du cache Microsoft Store
- Résolution des problèmes d'installation/mise à jour
- **Durée** : 1-2 minutes

### Performance

#### Libération RAM
- Garbage collection .NET forcé
- Exécution de ProcessIdleTasks
- Vidage des caches système
- **Durée** : 30 secondes

#### Mise à jour Pilotes
- Installation du module PSWindowsUpdate
- Recherche des mises à jour via Windows Update
- **Durée** : 2-5 minutes

#### Vérification Intégrité Pilotes
- Analyse de tous les pilotes installés
- Vérification des signatures numériques
- Détection des pilotes non signés/corrompus
- **Durée** : 1-3 minutes

### Diagnostic

#### Rapport de Santé Complet
- **Informations système** : OS, CPU, mémoire, disques
- **Performances** : Uptime, utilisation mémoire, vitesse CPU
- **Réseau** : Adapters réseau, configuration
- **Sécurité** : État des pilotes, intégrité système
- **Durée** : 30 secondes

## ⚙️ Configuration Avancée

### Variables Personnalisables
```powershell
# Modifier les délais d'attente
$script:TimeoutMinutes = 30

# Changer les couleurs de l'interface
$Form.BackColor = [System.Drawing.Color]::FromArgb(240, 240, 245)
```

### Exécution Silencieuse
```powershell
# Mode silencieux complet
.\Winastic.ps1 -Silent
```

### Logs Persistants
```powershell
# Les logs sont automatiquement sauvegardés dans :
# %TEMP%\Winastic\logs\winastic.log

# Format du log :
# [2025-10-27 14:30:15] === DÉBUT MAINTENANCE ===
# [2025-10-27 14:30:20] SFC - SUCCÈS - Code: 0
# [2025-10-27 14:45:30] DISM - SUCCÈS - Code: 0
# [2025-10-27 14:47:00] === FIN MAINTENANCE ===
```

### Commandes Personnalisées
```powershell
# Exemples de commandes personnalisées :
ipconfig /flushdns
netsh winsock reset
netsh int ip reset
sfc /scannow
DISM /Online /Cleanup-Image /RestoreHealth

# Les commandes sont exécutées dans l'ordre et leur résultat est loggé
```

### Codes Retour
| Code | Signification |
|------|---------------|
| 0 | Succès |
| 1 | Erreur générale |
| 2 | Accès refusé |
| 3010 | Redémarrage requis |
| -1978335189 | Aucune mise à jour disponible (Winget) |

## 🔒 Sécurité

### Élévation Automatique
- Vérification automatique des droits administrateur
- Élévation UAC transparente au lancement
- Masquage de la fenêtre PowerShell pour une expérience GUI pure

### Opérations Sécurisées
- Toutes les opérations sont non-destructives par défaut
- Vérifications préalables avant chaque modification
- Logs détaillés de toutes les actions effectuées
- Possibilité d'annulation à tout moment

### Validation des Commandes
- Vérification de l'existence des outils système
- Gestion d'erreur robuste avec try-catch
- Messages informatifs en cas d'échec

## 📊 Performances

### Optimisations
- **Exécution parallèle** : Certaines tâches s'exécutent simultanément
- **Interface responsive** : GUI non-bloquante pendant l'exécution
- **Gestion mémoire** : Libération automatique des ressources
- **Logs optimisés** : Affichage en temps réel sans impact sur les performances

### Temps d'Exécution Estimés
| Opération | Durée Min | Durée Max |
|-----------|-----------|-----------|
| SFC | 10 min | 30 min |
| DISM | 15 min | 45 min |
| Défragmentation | 5 min | 30 min |
| Nettoyage WinSxS | 15 min | 30 min |
| Mise à jour Winget | 5 min | 20 min |
| Maintenance complète | 45 min | 2h |

## 🐛 Dépannage

### Problèmes Courants

#### Erreur d'Encodage
```powershell
# Solution : Encodage UTF-8 déjà configuré
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
```

#### Problème de Permissions
```powershell
# Vérifier les droits administrateur
if (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "Relancez en tant qu'administrateur" -ForegroundColor Red
    exit
}
```

#### Winget Non Disponible
```powershell
# Installer App Installer depuis Microsoft Store
# Ou utiliser winget install Microsoft.WindowsAppInstaller
```

### Logs de Diagnostic
- Tous les logs sont affichés en temps réel
- Possibilité de sauvegarder les logs dans un fichier
- Codes d'erreur détaillés pour chaque opération

## 🤝 Contribution

### Comment Contribuer
1. **Fork** le projet
2. **Créer** une branche pour votre fonctionnalité (`git checkout -b feature/nouvelle-fonctionnalite`)
3. **Commit** vos changements (`git commit -am 'Ajout nouvelle fonctionnalité'`)
4. **Push** vers la branche (`git push origin feature/nouvelle-fonctionnalite`)
5. **Créer** une Pull Request

### Guidelines
- Code PowerShell propre et commenté
- Tests sur Windows 10 et 11
- Documentation mise à jour
- Respect des conventions de nommage

### Fonctionnalités Suggérées
- [ ] Support des serveurs Windows
- [ ] Interface multilingue
- [ ] Planification automatique
- [ ] Intégration avec Windows Task Scheduler
- [ ] Rapports PDF exportables
- [ ] API REST pour intégration

## 🚀 Axes d'Amélioration pour Maintenance Automatique

### Suggestions pour un Programme de Maintenance à l'Extinction

1. **Planification automatique** - Intégration avec Task Scheduler pour exécution programmée
2. **Profils de maintenance** - Rapide (5 min), Standard (30 min), Complet (2h)
3. **Détection intelligente** - Analyser l'état du système et suggérer les opérations nécessaires
4. **Notifications** - Alertes Windows pour informer l'utilisateur des problèmes détectés
5. **Historique** - Conservation des 10 derniers logs avec statistiques d'évolution
6. **Mode silencieux** - Exécution en arrière-plan sans interface utilisateur
7. **Sauvegarde avant maintenance** - Point de restauration système automatique
8. **Optimisations réseau** - Flush DNS, reset TCP/IP, optimisation des connexions
9. **Sécurité** - Scan Windows Defender, mise à jour des définitions
10. **Rapport HTML** - Export des résultats avec graphiques pour suivi dans le temps

## 📄 Licence

Ce projet est sous licence MIT. Voir le fichier [LICENSE](LICENSE) pour plus de détails.

## 👨‍💻 Auteur

**Winastic Team**
- GitHub: [@yourusername](https://github.com/yourusername)
- Email: contact@winastic.com

## 🙏 Remerciements

- **Microsoft** - Pour les outils système Windows
- **PowerShell Team** - Pour l'excellent langage de script
- **Communauté Open Source** - Pour les contributions et retours

## 📈 Roadmap

### Version 3.5 (Prochaine)
- [ ] Support des serveurs Windows Server 2019/2022
- [ ] Interface multilingue (EN/FR/ES/DE)
- [ ] Planification automatique des tâches
- [ ] Export des rapports en PDF

### Version 4.4 (Actuelle) - NOUVEAU !
- ✅ **Correction de l'extinction** - Décompte visible et temps réel
- ✅ **Logs persistants** - Sauvegarde automatique dans %TEMP%\Winastic\logs\
- ✅ **Commandes personnalisées** - Exécution de scripts custom avec sauvegarde
- ✅ **Codes retour améliorés** - Interprétation automatique des résultats
- ✅ **Design Windows 11** - Interface modernisée avec Segoe UI Variable
- ✅ **Tooltips corrigés** - Largeur limitée à 500px
- ✅ **Bouton log précédent** - Consultation facile des résultats passés


## 📞 Support

- **Issues** : [GitHub Issues](https://github.com/yourusername/winastic/issues)
- **Discussions** : [GitHub Discussions](https://github.com/yourusername/winastic/discussions)
- **Documentation** : [Wiki](https://github.com/yourusername/winastic/wiki)

---

<div align="center">

**⭐ Si ce projet vous aide, n'hésitez pas à lui donner une étoile ! ⭐**

[![GitHub stars](https://img.shields.io/github/stars/yourusername/winastic.svg?style=social&label=Star)](https://github.com/yourusername/winastic)
[![GitHub forks](https://img.shields.io/github/forks/yourusername/winastic.svg?style=social&label=Fork)](https://github.com/yourusername/winastic/fork)

</div>
