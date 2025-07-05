# 🕹️ Flutter - Jeu Tic Tac Toe avec Écran de Connexion Joueurs

Ce projet Flutter est une application simple de jeu **Tic Tac Toe (morpion)**, permettant à **deux joueurs** de saisir leurs noms avant de jouer.  
Il utilise **les widgets Flutter modernes**, des **animations**, et une **logique de jeu complète** avec détection de victoire ou égalité.

---

## 🎯 Fonctionnalités

- 👤 Écran de connexion pour **saisir les noms de Joueur 1 et Joueur 2**
- 🎮 Jeu Tic Tac Toe en 3x3 avec alternance X/O
- 🏆 Détection automatique du **gagnant**
- ⚖️ Détection d'une **égalité** (plateau rempli sans gagnant)
- ❌ Blocage du jeu une fois terminé
- 🔁 Bouton **Restart** pour recommencer une partie

---

## 🧱 Structure du projet

lib/
├── main.dart # Point d'entrée principal
├── screens/
│ ├── login_screen.dart # Écran pour entrer les noms des deux joueurs
│ └── tictactoe_screen.dart # Écran de jeu contenant le plateau
├── widgets/
│ └── tictactoe_board.dart # Composant du plateau avec logique du jeu



---

## 🎓 Projet éducatif
Projet réalisé dans le cadre d'un exercice Flutter pour apprendre :
- La navigation entre écrans
- Les widgets d’interface (TextField, GridView, AlertDialog, etc.)
- Les animations simples
- La logique de jeu en Flutter

---
## ✅ Changements apportés par rapport au projet initial

| Élément              | Avant (code professeur)                                     | Maintenant (nouvelle version)                                   |
|----------------------|-------------------------------------------------------------|------------------------------------------------------------------|
| Connexion            | Login + mot de passe (non vérifiés)                        | Saisie du nom de **Joueur 1** et **Joueur 2**                   |
| Navigation           | Passe uniquement le login                                   | Passe les deux noms de joueurs                                  |
| Écran de jeu         | Affiche un plateau 3x3 sans fin de partie                   | Affiche le **joueur courant**, détecte victoire ou égalité      |
| Fin de partie        | Le jeu continue même après une victoire                     | Le jeu **s’arrête** dès qu’un joueur gagne ou égalité           |
| Popup/alertes        | Aucune                                                      | Affiche des **AlertDialog** avec le nom du gagnant ou égalité   |
| Restart              | Pas de bouton                                               | Bouton **"Restart"** pour relancer une partie                   |
| Code organisé        | Tout dans `main.dart`                                       | Projet **structuré en fichiers séparés**                        |

---

## 🚀 Pour lancer l’application

1. **Cloner ou créer** ce projet Flutter :
   ```bash
   flutter create tictactoe_login
   - flutter pub get
   - flutter run
   
---
## 🛠️ Technologies
- Flutter 3.x
- Dart 3
- UI native Android/iOS
- Animations et widgets modernes

---
## 📸Images de l'App

<img src="/images/Mainpage.png" alt="Aperçu du Chat" width="200" />

Page d’accueil : Écran initial de connexion, où l’utilisateur accède à l’interface du jeu.
--- 
<img src="/images/username.png" alt="Aperçu du Chat" width="200" />

Saisie des joueurs : Chaque joueur entre son nom avant de démarrer la partie.
---

<img src="/images/role.png" alt="Aperçu du Chat" width="200" />

Tour par tour : Le jeu indique clairement à qui c’est le tour (Joueur 1 ou Joueur 2).
--

<img src="/images/winner.png" alt="Aperçu du Chat" width="200" />

Fin de partie : Une boîte de dialogue s’affiche pour annoncer le gagnant ou une égalité, avec un bouton "Rejouer".
---

## 🧑‍💻 Auteur
- Développeur : Leknouch Wissal
- Email : wissalleknouch@gmail.com
- GitHub : @Clear008