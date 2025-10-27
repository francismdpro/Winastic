# 🚀 Guide de Lancement Rapide - Winastic

## 📁 Fichiers Créés

### `Winastic.ps1`
- Script principal de maintenance
- **Nouveau** : L'élévation admin se fait seulement quand nécessaire (SFC, DISM, etc.)
- **Corrigé** : Problème d'encodage résolu

### `LaunchWinastic.bat`
- Fichier batch pour lancer facilement le script
- Double-clic pour exécuter
- Affiche un message de confirmation

### `CreateShortcut.vbs`
- Script VBS pour créer un raccourci sur le Bureau
- Double-clic pour créer le raccourci automatiquement
- **Nouveau** : Icône clé à molette appliquée automatiquement

### `CreateShortcut.ps1`
- Script PowerShell pour créer un raccourci sur le Bureau
- Plus robuste que la version VBS
- **Nouveau** : Icône clé à molette appliquée automatiquement
- Clic droit → "Exécuter avec PowerShell"

## 🎯 Comment Utiliser

### Méthode 1 : Fichier Batch (Recommandé)
1. Double-cliquez sur `LaunchWinastic.bat`
2. Le script se lance automatiquement

### Méthode 2 : Raccourci Bureau (VBS)
1. Double-cliquez sur `CreateShortcut.vbs`
2. Un raccourci "Winastic Maintenance" apparaît sur votre Bureau
3. Double-cliquez sur le raccourci pour lancer le programme

### Méthode 3 : Raccourci Bureau (PowerShell - Recommandé)
1. Clic droit sur `CreateShortcut.ps1` → "Exécuter avec PowerShell"
2. Un raccourci "Winastic Maintenance" apparaît sur votre Bureau
3. Double-cliquez sur le raccourci pour lancer le programme

### Méthode 4 : PowerShell Direct
1. Clic droit sur `Winastic.ps1` → "Exécuter avec PowerShell"
2. Ou ouvrir PowerShell et taper : `.\Winastic.ps1`

## ⚡ Avantages de la Nouvelle Version

- ✅ **Pas d'élévation admin au démarrage** - Plus rapide
- ✅ **Élévation seulement si nécessaire** - SFC, DISM, etc.
- ✅ **Problème d'encodage corrigé** - Plus d'erreurs de parsing
- ✅ **Raccourci facile** - Lancement en un clic
- ✅ **Interface moderne** - Design Windows 11

## 🔧 Opérations Nécessitant Admin

Ces opérations demanderont automatiquement l'élévation admin :
- SFC (System File Checker)
- DISM (Deployment Image Servicing)
- Nettoyage WinSxS
- Défragmentation du registre
- Nettoyage du registre
- Commandes personnalisées (si elles nécessitent admin)

## 📝 Notes

- Le script peut être lancé sans admin pour voir l'interface
- L'élévation admin se fera automatiquement quand nécessaire
- Tous les fichiers sont dans le même dossier
- Le raccourci peut être déplacé où vous voulez
