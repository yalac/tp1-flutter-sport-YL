# TP1 - Application Sport

## Thème choisi
J'ai choisi comme thème les activités sportives puisqu'il s'agit d'une de mes passions.

### Structure des trois pages
- home_page.dart (Page d'accueil) : Affiche la liste des sports disponibles sous forme de cartes.
- detail_sport_page.dart (Page de détails) : Affiche les informations détaillées du sport sélectionné.
- ajout_sport_page.dart (Page d'ajout) : Formulaire permettant d'ajouter un nouveau sport à la liste.

### Attributs de la classe modèle Sport
- nom : Nom du sport
- description : Description détaillée du sport
- dureeMatch : Durée moyenne d'un match du sport en question
- competitions : Compétitions la plus prestigieuse du sport en question
- competences : Listes des compétences requises et ou nécessaire pour jouer ce sport. Ou encore celle que le sport t'apprend.

### Installation

```bash
# Cloner le projet puis s'y déplacer
git clone https://github.com/yalac/tp1-flutter-sport-YL.git
cd .\tp1-flutter-sport-YL\

# Récupérer les dépendences
flutter pub get

# Lancer sur Windows
flutter run -d windows
```
