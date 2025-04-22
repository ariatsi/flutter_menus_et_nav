
# flutter_menus_et_nav

Projet Flutter d’apprentissage — **Menus et Navigation entre écrans**

Ce projet fait partie d’un cours complet sur Flutter destiné aux étudiants en informatique.  
Il illustre l’utilisation des menus (`Drawer` et `BottomNavigationBar`) ainsi que la navigation vers différents écrans dans une application Flutter.


## Objectifs pédagogiques

- Comprendre la structure d’une application Flutter multi-écrans
- Mettre en œuvre la navigation entre pages avec menus
- Naviguer dynamiquement avec `Navigator.push()` et `Navigator.pop()`
- Organiser le code en plusieurs fichiers pour chaque page
- Gérer l’interface utilisateur avec des boutons (valider, annuler)


## Structure du projet

```
lib/
├── main.dart                // Écran principal avec menus
├── home_page.dart           // Page d’accueil (HomePage)
├── search_page.dart         // Page de recherche (SearchPage)
├── profile_page.dart        // Page de profil (ProfilePage)
└── edit_profile_page.dart   // Page de modification du profil (EditProfilePage)
```


## Navigation mise en œuvre

### Menus

- `Drawer` (menu latéral)
- `BottomNavigationBar` (menu du bas)

Chaque menu permet d’accéder à :
- 🏠 Page d’accueil
- 🔍 Page de recherche
- 👤 Page de profil

### Navigation dynamique

Depuis la page de profil (`ProfilePage`), un bouton « Modifier le profil » ouvre dynamiquement une nouvelle page avec :

- Un bouton **Valider** (fonctionnel plus tard)
- Un bouton **Annuler** (retour à la page précédente)

Cette navigation est assurée avec :

```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const EditProfilePage()),
);
```

Et pour revenir :

```dart
Navigator.pop(context);
```


## Concepts couverts

- StatefulWidget et gestion de l’index courant
- Affichage conditionnel du contenu selon l’onglet actif
- Découpage du code en composants
- Gestion d’un `Scaffold` avec menus intégrés
- Construction de boutons (`ElevatedButton`, `OutlinedButton`, etc.)
- Utilisation de `SnackBar` et `ScaffoldMessenger`


## Lancer le projet

Assurez-vous d’avoir Flutter installé :

```bash
flutter pub get
flutter run
```

Ce projet a été testé et développé dans **Android Studio**, avec les plugins Flutter et Dart installés.

## À venir

- Ajout d’un **formulaire réel** dans `EditProfilePage`
- Passage de données entre pages
- Gestion des états avec `Provider` ou `setState`


## Licence

📄 Ce projet est distribué sous la licence Academic Free License v3.0 ([AFL-3.0](https://opensource.org/licenses/AFL-3.0)).
