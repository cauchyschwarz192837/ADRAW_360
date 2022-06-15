import 'question_model.dart';

List<QuestionModel> questions = [
  QuestionModel(
    "Gun firing alright, GUN STOPPED! What should you do?",
    {
      "Throw the rifle away and move at least 50m away": false,
      "Cock the rifle repeatedly": false,
      "Sound off:\"IA! IA! IA!\", put the weapon to safe mode, tilt rifle to side of bolt carrier, and check it":
          true,
      "Sound off:\"IA! IA! IA!\", then sit and wait for 20 seconds": false,
    },
  ),
  QuestionModel("Scenario 1: Bolt fully closed! What should you do?", {
    "Slap the magazine, resume firing": false,
    "Reload with a new magazine": false,
    "Slap the magazine, pull the charging handle back, remove the magazine":
        false,
    "Slap the magazine, pull the charging handle back, release, resume firing":
        true,
  }),
  QuestionModel("Scenario 2: Bolt half open! What should you do?", {
    "Cock the charging handle repeatedly, if IA is not resolved, throw the rifle and run":
        false,
    "Take out magazine, pull charging handle back, engage last round catch, use c-tool to clear stuck round, release last round catch, load magazine, cock weapon, resume firing":
        true,
    "Use your finger to extract stuck round from chamber": false,
    "Slap the magazine, pull the charging handle back, release, resume firing":
        false,
  }),
  QuestionModel("Scenario 3: Bolt fully open! What should you do?", {
    "Remove magazine, check that it is empty, load same empty magazine, cock rifle, resume firing":
        false,
    "Remove magazine, throw magazine and run": false,
    "Remove magazine, check that it is empty, load new magazine, cock rifle, resume firing":
        true,
    "Slap the magazine, pull the charging handle back, release, resume firing":
        false,
  }),
  QuestionModel("Scenario 1: Bolt fully closed! What IA is this?", {
    "No feeding": true,
    "Double feeding": false,
    "Combat reload": false,
    "Runaway gun": false,
  }),
  QuestionModel("Scenario 2: Bolt half open! What IA is this?", {
    "No feeding": false,
    "Runaway gun": false,
    "Double feeding": true,
    "Quintuple feeding": false,
  }),
  QuestionModel("Scenario 3: Bolt fully open! What should you do?", {
    "Round in chamber": false,
    "No feeding": false,
    "Double feeding": false,
    "Combat reload": true,
  }),
];
