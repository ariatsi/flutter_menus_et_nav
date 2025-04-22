import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Modifier le profil')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Formulaire de modification (à venir)',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 40), // espace entre texte et boutons

            // Les boutons "Valider" et "Annuler"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // À faire plus tard : sauvegarder les données du formulaire
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Modifications enregistrées (à venir)')),
                    );
                    Navigator.pop(context); // Fermer la page après validation
                  },
                  icon: const Icon(Icons.check),
                  label: const Text('Valider'),
                ),
                OutlinedButton.icon(
                  onPressed: () {
                    Navigator.pop(context); // Fermer la page sans enregistrer
                  },
                  icon: const Icon(Icons.close),
                  label: const Text('Annuler'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.check),
                  label: Text('Valider'),
                )
              ],
            ),
          ],
        ),
      ),

    );
  }
}
