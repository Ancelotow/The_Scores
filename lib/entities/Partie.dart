import 'package:the_scores/entities/Jeux.dart';

class Partie{

  int id;
  String libelle;
  DateTime date_debut;
  DateTime date_fin;
  bool terminer;
  Jeux jeux;

  Partie({
    this.id,
    this.libelle,
    this.date_debut,
    this.date_fin,
    this.terminer,
    this.jeux
  });

}