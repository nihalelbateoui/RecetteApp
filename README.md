

# RecetteApp – Projet iOS SwiftUI

Application iOS permettant de gérer des recettes de cuisine, réalisée dans le cadre du cours de Technologies Mobiles (Master 2).

## Fonctionnalités principales

- Affichage de la liste des recettes
- Navigation vers le détail d’une recette
- Affichage d’une grande image
- Choix d’une nouvelle image (ImagePicker)
- Modification :
  - temps de préparation
  - temps de cuisson
  - portions
  - ingrédients (édition + suppression + ajout)
- Ajustement automatique des quantités selon les portions
- Architecture conforme au cours :
  - `data/`
  - `repository/`
  - `view/`
  - `viewmodel/`
  - `Injecteur`

## Architecture

L’application repose sur le **Repository Pattern**, avec un injecteur pour lier les dépendances.

- `RecetteRepository` : protocole du repository
- `RecetteRepositoryDummyImpl` : données statiques
- `Injecteur` : fournit une instance du repository

## Tests (optionnel)

L’ajout d’un test automatique simple peut être réalisé dans `RecetteAppTests`.

## Aperçu

- Liste des recettes avec image, nom et temps
- Écran détail avec ingrédients et description
- Édition complète de la recette via un formulaire
- Sélection d’image avec PhotosPicker

## Auteur

** Mlle Nihal El-Bateoui **
Master 2 – Université de Rouen Normandie
Projet iOS SwiftUI
