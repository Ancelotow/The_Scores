import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Services{



  static void createDatabase() async{
    var databasesPath = await getDatabasesPath();
    final Future<Database> database = openDatabase(
      join(databasesPath, 'scores.db'),
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE Jeux( "
              "id INTEGER PRIMARY KEY AUTOINCREMENT, "
              "libelle TEXT, "
              "points_max INTEGER ); "
          "CREATE TABLE Joueur( "
              "id INTEGER PRIMARY KEY AUTOINCREMENT, "
              "nom TEXT, "
              "prenom TEXT, "
              "email TEXT, "
              "surnom TEXT ); "
          "CREATE TABLE Partie( "
              "id INTEGER PRIMARY KEY AUTOINCREMENT, "
              "libelle TEXT, "
              "date_debut TEXT, "
              "dete_fin TEXT, "
              "terminer BOOLEAN ); "
          "CREATE TABLE Tour ( "
              "id INTEGER PRIMARY KEY AUTOINCREMENT, "
              "num_tour TEXT ); "
          "CREATE TABLE Joueur_Tour ("
              "id INTEGER PRIMARY KEY AUTOINCREMENT, "
              "id_tour INTEGER, "
              "id_joueur INTEGER, "
              "points INTEGER, "
              "gagner BOOLEAN ); ",
        );
      },
      version: 1,
    );
  }




}