import 'package:the_scores/entities/Joueur.dart';
import 'package:the_scores/entities/Tour.dart';

class Joueur_Tour{

  int id;
  Tour tour;
  Joueur joueur;
  int points;
  bool gagner;

  Joueur_Tour({
    this.id,
    this.tour,
    this.joueur,
    this.points,
    this.gagner
  });

}