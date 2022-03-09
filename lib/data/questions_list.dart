import 'package:fquiz/data/java_questions.dart';
import 'package:fquiz/data/react_questions.dart';

import 'aws_questions.dart';
import 'html_questions.dart';
import 'js_questions.dart';

var questionsList = {
  'javascript': [...jsQuestions],
  'angular': [],
  'database': [],
  'react': [...reactQuestions],
  'html5': [...htmlQuestions],
  'aws': [...awsQuestions],
  'java': [...javaQuestions],
  'spring': [],
};
