import 'oop.dart';

void main(){
  Person cadet = Person('donnel', 28);
  Person sydovv = Person('Steve', 28);

  Person goss = Person.inconnu();

  List<Animal> animals = [Chien('maxe' , 4), Chat('anne', 5)];

  animals.forEach((animal) => print(animal.manger()));


  print(sydovv.seDecrire());
  print(cadet.seDecrire());
  print(goss.seDecrire());
}


