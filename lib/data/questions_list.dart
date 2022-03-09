import 'package:fquiz/data/angular_questions.dart';
import 'package:fquiz/data/aws_questions.dart';
import 'package:fquiz/data/html_questions.dart';
import 'package:fquiz/data/java_questions.dart';
import 'package:fquiz/data/js_questions.dart';
import 'package:fquiz/data/mongo_questions.dart';
import 'package:fquiz/data/node_questions.dart';
import 'package:fquiz/data/react_questions.dart';
import 'package:fquiz/data/spring_questions.dart';
import 'package:fquiz/data/sql_questions.dart';

var questionsList = {
  'javascript': [...jsQuestions, ...nodeQuestions],
  'angular': [...angularQuestions],
  'database': [...sqlQuestions, ...mongoQuestions],
  'react': [...reactQuestions],
  'html5': [...htmlQuestions],
  'aws': [...awsQuestions],
  'java': [...javaQuestions],
  'spring': [...springQuestions],
  '': []
};
