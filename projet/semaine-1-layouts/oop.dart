
class Person{
  late String name;
  late int age;

  Person(this.name, this.age);

  Person.inconnu({this.name = 'Inconu', this.age = 0});

  //methods

  String seDecrire(){
    return "Je m'appel $name et j'ai $age ans";
  }
}

// exercice 3. Creation d'une classe compte banquaire

class CompteBanquaire{
  late double _solde;

  CompteBanquaire(double solde){
    _solde = solde;
  }

  void get solde => _solde;

  double makeADeposit(double amount){
    if(amount<=0){
      print("impossible d'effectuer cette operation");
      return _solde;
    }else{
      _solde = _solde + amount;
      return _solde;
    }
  }

  String retrait(double amount){
    if(_solde<amount){
      return "vous n'avez pas assez de fond pour effectuer ce retrait";
    }else{
      _solde -= amount;
      return "Retrais effectuez avec success \nvotre nouveau solde est $_solde";
    }
  }
}

// execrcie 4 getteur et setteur.

class Rectangle{
  late double _largeur;
  late double _longueur;

  Rectangle(double largeur, double longueur){
    _largeur = largeur;
    _longueur = longueur;
  }

  set largeur(double newLargeur){
    if(newLargeur is String || newLargeur == 0){
      Error newError = Error();
      throw newError.toString();
    }
    else{
      _largeur = newLargeur;
    }
  }

  set longeur(double newLongueur){
    if(newLongueur is String || newLongueur == 0){
      Error newError = Error();
      throw newError.toString();
    }
    else{
      _largeur = newLongueur;
    }
  }

  void get largeur => _largeur;
  void get longueur => _longueur;
  void get calculAir => _longueur*_largeur;
  void get calculPerimaitre => (_longueur+_largeur)/2;

}

// exercice 5 heritage et polymorphisme

class Animal{
  String name;
  int age;

  Animal(this.name, this.age);

  String manger() => '$name mange';
}

class Chien extends Animal{
  Chien(super.name, super.age);

  void aboyer(){
    print('$name aboie');
  }

  @override
  String manger() {
    return '$name manges les croquettes';
  }
}

class Chat extends Animal{
  Chat(super.name, super.age);

  @override
  String manger() {
    
    return '$name mange des croquettes';
  }
}

//exercice 6 classe abstraite

abstract class FormeGeometrique{
  String name;
  double longeur;
  FormeGeometrique(this.name, this.longeur);
  double calculAir();

  String afficherInfos(){
    return 'le nom de la figuere est $name et sa supperficie est $calculAir()';
  }
}

class Circle extends FormeGeometrique{
  Circle(super.name, super.longeur);

  
}
