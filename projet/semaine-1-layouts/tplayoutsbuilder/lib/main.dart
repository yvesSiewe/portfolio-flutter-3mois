import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: ExampleCustomLayout(),
    ),
  ));
}

class ExampleCustomLayout extends StatelessWidget {
  const ExampleCustomLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomMultiChildLayout(
        delegate: MyLayoutDelegate(),
        children: [
          LayoutId(
            id: 'title',
            child: Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(8),
              child: const Text(
                'Titre',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          LayoutId(
            id: 'icon',
            child: Container(
              width: 40,
              height: 40,
              color: Colors.red,
              child: const Icon(Icons.star, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class MyLayoutDelegate extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    // Taille du widget parent : "size"
    // Positionnement de l'enfant avec id = 'title'
    if (hasChild('title')) {
      // On laisse Flutter calculer la taille optimale du child
      Size titleSize = layoutChild(
        'title',
        BoxConstraints.loose(size),
      );

      // On positionne le titre en haut au centre
      positionChild(
        'title',
        Offset((size.width - titleSize.width) / 2, 0),
      );
    }

    // Positionnement de l'icône
    if (hasChild('icon')) {
      Size iconSize = layoutChild(
        'icon',
        BoxConstraints.tight(const Size(40, 40)), // taille fixe
      );

      // On place l'icône en bas à droite
      positionChild(
        'icon',
        Offset(size.width - iconSize.width, size.height - iconSize.height),
      );
    }
  }

  @override
  bool shouldRelayout(covariant MyLayoutDelegate oldDelegate) {
    // Si la logique dépend de données, tu peux comparer ici
    return false;
  }
}
