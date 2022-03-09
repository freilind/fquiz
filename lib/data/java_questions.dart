const javaQuestions = [
  {
    'question': "Using Optional<T> type eliminates NullPointerException?",
    'options': [
      {'option': 'False', 'correct': true},
      {'option': 'True', 'correct': false}
    ]
  },
  {
    'question': "Methods of Optional<T> class",
    'options': [
      {'option': 'All', 'correct': true},
      {'option': 'None', 'correct': false},
      {'option': 'get()', 'correct': false},
      {'option': 'isPresent()', 'correct': false},
      {'option': 'ofNullable()', 'correct': false},
      {'option': 'map()', 'correct': false}
    ]
  },
  {
    'question': "Which is not the type of Lambda Expression?",
    'options': [
      {'option': 'is a function type', 'correct': true},
      {'option': 'is a functional interface', 'correct': false},
      {
        'option': 'has no definite type when seen in isolation',
        'correct': false
      },
      {'option': 'depends on the context in which it appears', 'correct': false}
    ]
  },
  {
    'question': "Lambdas vs. Anonymous Inner classes - what is false?",
    'options': [
      {'option': 'Lambdas have more runtime overhead', 'correct': true},
      {'option': 'Differ in their syntax', 'correct': false},
      {
        'option':
            'Lambdas invoked with invokedynamic byte code instruction, whereas Anonymous inner classes are not',
        'correct': false
      },
      {
        'option':
            'Both can access all final variables in their enclosing context',
        'correct': false
      }
    ]
  },
  {
    'question': "Identify the valid lambda expression",
    'options': [
      {'option': '(i) -> {return;}', 'correct': true},
      {'option': 'a,b -> a+b', 'correct': false},
      {'option': '(Person p, q) -> p.compareTo(q)', 'correct': false}
    ]
  },
  {
    'question': "A lambda expression has a scope of its own",
    'options': [
      {'option': 'False', 'correct': true},
      {'option': 'True', 'correct': false}
    ]
  },
  {
    'question':
        '(s) -> System.out.println("Welcome to Java 8, Hello !!! "+s); \nis an implementation of type',
    'options': [
      {'option': 'java.util.function.Consumer', 'correct': true},
      {'option': 'java.util.function.Supplier', 'correct': false},
      {'option': 'java.util.function.Function', 'correct': false},
      {'option': 'java.util.function.Predicate', 'correct': false}
    ]
  },
  {
    'question':
        'What would be the output of the following code:\n Stream<String> st = Stream.iterate("", (str) -> str + "x"); \nSystem.out.println(st.limit(3).map(str -> str + "y"));',
    'options': [
      {'option': 'Prints the toString() on map()', 'correct': true},
      {'option': 'xyx', 'correct': false},
      {'option': 'yxx', 'correct': false},
      {'option': 'xxy', 'correct': false}
    ]
  },
  {
    'question': "What is true about a Terminal Operation?",
    'options': [
      {'option': 'They kick start the Stream processing', 'correct': true},
      {'option': 'peek() is a Terminal operation', 'correct': false},
      {'option': 'they return a Stream type', 'correct': false}
    ]
  },
  {
    'question': "partitioningBy() collector returns a Map<Boolean, List<>>",
    'options': [
      {'option': 'True', 'correct': true},
      {'option': 'False', 'correct': false}
    ]
  },
  {
    'question':
        "What is the component used for compiling, debugging, and executing java programs?",
    'options': [
      {'option': 'JDK', 'correct': true},
      {'option': 'JVM', 'correct': false},
      {'option': 'JRE', 'correct': false},
      {'option': 'JIT', 'correct': false}
    ]
  },
  {
    'question':
        "What component does the task of bytecode to machine code conversion?",
    'options': [
      {'option': 'JVM', 'correct': true},
      {'option': 'JDK', 'correct': false},
      {'option': 'JRE', 'correct': false},
      {'option': 'JIT', 'correct': false}
    ]
  },
  {
    'question':
        "Which of the following is the functionality of the java interpreter?",
    'options': [
      {
        'option': 'It reads the high level code and executes them.',
        'correct': true
      },
      {
        'option': 'Interpretor is nothing but the JIT compiler.',
        'correct': false
      },
      {'option': 'It acts as medium between JVM and JIT.', 'correct': false},
      {
        'option': 'It does the conversion of byte code to machine code.',
        'correct': false
      }
    ]
  },
  {
    'question':
        "When an object has its own lifecycle and its child object cant belong to another parent object, what is it called?",
    'options': [
      {'option': 'Aggregation', 'correct': true},
      {'option': 'Association', 'correct': false},
      {'option': 'Composition', 'correct': false},
      {'option': 'Encapsulation', 'correct': false}
    ]
  },
  {
    'question':
        "Which of the following happens when the garbage collection process kicks off during the execution of the thread?",
    'options': [
      {
        'option': 'Thread pauses while the garbage collection process runs.',
        'correct': true
      },
      {
        'option': 'Garbage collection does not happen during thread execution.',
        'correct': false
      },
      {
        'option':
            'Both the process takes place simultaneously and does not interfere its execution.',
        'correct': false
      },
      {
        'option': 'Nothing happens, the thread proceeds with execution.',
        'correct': false
      }
    ]
  },
  {
    'question': '''String obj = "Hello";
String obj1 = "InterviewBit";   
String obj2 = "Hello";
System.out.println(obj.equals(obj1) + " " + obj.equals(obj2)); ''',
    'options': [
      {'option': 'false true', 'correct': true},
      {'option': 'false false', 'correct': false},
      {'option': 'true true', 'correct': false},
      {'option': 'true false', 'correct': false}
    ]
  },
  {
    'question': 'What is the functionality of Class.getInstance()?',
    'options': [
      {
        'option':
            'It creates object if the class does not have constructor defined.',
        'correct': true
      },
      {'option': 'It invokes the constructor.', 'correct': false},
      {
        'option': 'It has the same functionality of new operator.',
        'correct': false
      },
      {'option': 'None', 'correct': false}
    ]
  }
];
