// To parse this JSON data, do
//
//     final exercises = exercisesFromJson(jsonString);

import 'dart:convert';

Exercises exercisesFromJson(String str) => Exercises.fromJson(json.decode(str));

String exercisesToJson(Exercises data) => json.encode(data.toJson());

class Exercises {
  List<Exercise> exercises;

  Exercises({
    required this.exercises,
  });

  factory Exercises.fromJson(Map<String, dynamic> json) => Exercises(
        exercises: List<Exercise>.from(
          json["Exercises"].map(
            (value) => Exercise.fromJson(value),
          ),
        ),
      );

  Map<String, dynamic> toJson() => {
        "Exercises": List<dynamic>.from(
          exercises.map(
            (value) => value.toJson(),
          ),
        ),
      };
}

class Exercise {
  List<Ab>? abs;
  List<Ab>? back;
  List<Ab>? biceps;
  List<Ab>? calves;
  List<Ab>? chest;
  List<Ab>? legs;
  List<Ab>? shoulders;
  List<Ab>? triceps;

  Exercise({
    required this.abs,
    required this.back,
    required this.biceps,
    required this.calves,
    required this.chest,
    required this.legs,
    required this.shoulders,
    required this.triceps,
  });

  factory Exercise.fromJson(Map<String, dynamic> json) => Exercise(
        abs: json["Abs"] == null
            ? null
            : List<Ab>.from(json["Abs"].map((x) => Ab.fromJson(x))),
        back: json["back"] == null
            ? null
            : List<Ab>.from(json["back"].map((x) => Ab.fromJson(x))),
        biceps: json["biceps"] == null
            ? null
            : List<Ab>.from(json["biceps"].map((x) => Ab.fromJson(x))),
        calves: json["calves"] == null
            ? null
            : List<Ab>.from(json["calves"].map((x) => Ab.fromJson(x))),
        chest: json["chest"] == null
            ? null
            : List<Ab>.from(json["chest"].map((x) => Ab.fromJson(x))),
        legs: json["legs"] == null
            ? null
            : List<Ab>.from(json["legs"].map((x) => Ab.fromJson(x))),
        shoulders: json["shoulders"] == null
            ? null
            : List<Ab>.from(json["shoulders"].map((x) => Ab.fromJson(x))),
        triceps: json["triceps"] == null
            ? null
            : List<Ab>.from(json["triceps"].map((x) => Ab.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Abs": abs == null
            ? null
            : List<dynamic>.from(abs!.map((x) => x.toJson())),
        "back": back == null
            ? null
            : List<dynamic>.from(back!.map((x) => x.toJson())),
        "biceps": biceps == null
            ? null
            : List<dynamic>.from(biceps!.map((x) => x.toJson())),
        "calves": calves == null
            ? null
            : List<dynamic>.from(calves!.map((x) => x.toJson())),
        "chest": chest == null
            ? null
            : List<dynamic>.from(chest!.map((x) => x.toJson())),
        "legs": legs == null
            ? null
            : List<dynamic>.from(legs!.map((x) => x.toJson())),
        "shoulders": shoulders == null
            ? null
            : List<dynamic>.from(shoulders!.map((x) => x.toJson())),
        "triceps": triceps == null
            ? null
            : List<dynamic>.from(triceps!.map((x) => x.toJson())),
      };
}

class Ab {
  Ab({
    required this.nama,
    required this.gambar,
    required this.tutorial,
    required this.otot,
    required this.alat,
  });

  String nama;
  String gambar;
  String tutorial;
  String otot;
  String alat;

  factory Ab.fromJson(Map<String, dynamic> json) => Ab(
        nama: json["nama"],
        gambar: json["gambar"],
        tutorial: json["tutorial"],
        otot: json["otot"],
        alat: json["alat"],
      );

  Map<String, dynamic> toJson() => {
        "nama": nama,
        "gambar": gambar,
        "tutorial": tutorial,
        "otot": otot,
        "alat": alat,
      };
}
