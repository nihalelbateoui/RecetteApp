
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
- Architecture du projet :
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

## Aperçu

- Liste des recettes avec image, nom et temps
- Écran détail avec ingrédients et description
- Édition complète de la recette via un formulaire
- Sélection d’image avec PhotosPicker

## Structure de projet

RecetteApp/
 ┣ data/
 ┃ ┣ Ingredient.swift
 ┃ ┗ Recette.swift
 ┣ repository/
 ┃ ┣ RecetteRepository.swift
 ┃ ┗ RecetteRepositoryDummyImpl.swift
 ┣ view/
 ┃ ┣ ListeRecettesView.swift
 ┃ ┣ RecetteLigneView.swift
 ┃ ┣ DetailRecetteView.swift
 ┃ ┗ EditRecetteView.swift
 ┣ viewmodel/
 ┣ resources/
 ┣ Injecteur.swift
 ┗ RecetteAppApp.swift
 
## Installation et exécution en local

### 1. Prérequis
- macOS
- Xcode 15 ou supérieur
- Swift 5.9+

### 2. Cloner le projet
git clone https://github.com/nihalelbateoui/RecetteApp.git

### 3. Ouvrir le projet
cd RecetteApp
open RecetteApp.xcodeproj

### 4. Lancer l’application
Dans Xcode :
- sélectionner un simulateur iOS
- cliquer sur **Run**

## Auteur

** Mlle Nihal El-Bateoui **
Master 2 – Université de Rouen Normandie
Projet iOS SwiftUI
