const angularQuestions = [
  {
    'question':
        "On providing a service in two components’ “providers” section of @Component decorator, the number of instances of service that will be created is",
    'options': [
      {'option': '2', 'correct': true},
      {'option': '1', 'correct': false},
      {'option': '3', 'correct': false},
      {'option': '4', 'correct': false}
    ]
  },
  {
    'question':
        "We can pass data from the parent component to the child component by using ",
    'options': [
      {'option': '@Input()', 'correct': true},
      {'option': 'Input', 'correct': false},
      {'option': 'Output', 'correct': false},
      {'option': '@Output()', 'correct': false}
    ]
  },
  {
    'question':
        "Which of the following directives connects the value of the controls to the data?",
    'options': [
      {'option': 'ng-model', 'correct': true},
      {'option': 'ng-app', 'correct': false},
      {'option': 'ng-init', 'correct': false},
      {'option': 'none', 'correct': false}
    ]
  },
  {
    'question':
        "Which of the following is the correct form control class name that is set to true via [(ngModel)] whenever value is changed?",
    'options': [
      {'option': '.ng-dirty', 'correct': true},
      {'option': '.ng-pristine', 'correct': false},
      {'option': '.ng-pending', 'correct': false},
      {'option': '.ng-invalid', 'correct': false}
    ]
  },
  {
    'question': "What is Angular perfect for among the given list of options?",
    'options': [
      {'option': 'SPAs', 'correct': true},
      {'option': 'DPAs', 'correct': false},
      {'option': 'MPAs', 'correct': false},
      {'option': 'ZPAs', 'correct': false}
    ]
  },
  {
    'question': '''What is the output of the below code?
<div ng-init=""arr=[1,20,21,12,2]"">
        <p>{{ arr[2] }}</p>
</div> ''',
    'options': [
      {'option': '21', 'correct': true},
      {'option': '20', 'correct': false},
      {'option': '1', 'correct': false},
      {'option': '12', 'correct': false},
      {'option': 'Error', 'correct': false}
    ]
  },
  {
    'question':
        "What is it called when there is synchronization between the model and the view?",
    'options': [
      {'option': 'Data Binding', 'correct': true},
      {'option': 'Data Filtering', 'correct': false},
      {'option': 'Data Viewing', 'correct': false},
      {'option': 'Data Monitoring', 'correct': false}
    ]
  },
  {
    'question': "What directive links Angular application to the HTML?",
    'options': [
      {'option': 'ng-app', 'correct': true},
      {'option': 'ng-init', 'correct': false},
      {'option': 'ng-bind', 'correct': false},
      {'option': 'ng-controller', 'correct': false}
    ]
  },
  {
    'question': "What is the syntax for defining the Angular expressions?",
    'options': [
      {'option': '{{expression}}', 'correct': true},
      {'option': '[[expression]]', 'correct': false},
      {'option': '((expression))', 'correct': false},
      {'option': '{expression}', 'correct': false}
    ]
  },
  {
    'question':
        "Which of the below options are true regarding the ng-app directive?",
    'options': [
      {
        'option':
            'We can have multiple ng-app directives in an HTML document but only one app is auto initialized and the rest needs to be manually initialized.',
        'correct': true
      },
      {
        'option':
            'We can have multiple ng-app directives in the HTML document to initialize all applications automatically.',
        'correct': false
      },
      {
        'option':
            'We can have only one ng-app directive in the HTML document to initialize multiple applications.',
        'correct': false
      },
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question':
        "Is it possible to inject \$scope during service creation by using the factory method?",
    'options': [
      {'option': 'No', 'correct': true},
      {'option': 'Yes', 'correct': false},
      {'option': 'Depends on scenarios', 'correct': false}
    ]
  },
  {
    'question': "What format does Angular support to populate data?",
    'options': [
      {'option': 'JSON', 'correct': true},
      {'option': 'CSV', 'correct': false},
      {'option': 'XML', 'correct': false},
      {'option': 'No format restrictions', 'correct': false}
    ]
  },
  {
    'question': "Which among the following is the use of the factory method?",
    'options': [
      {
        'option': 'Used for defining factory and use that factory as service.',
        'correct': true
      },
      {
        'option':
            'Used for defining factory and assign a method to the factory.',
        'correct': false
      },
      {
        'option': 'Used for defining factory and its methods.',
        'correct': false
      },
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question':
        "What is the maximum \$rootScope count that can be present in the Angular application?",
    'options': [
      {'option': 'One', 'correct': true},
      {'option': 'Two', 'correct': false},
      {'option': 'Three', 'correct': false},
      {'option': 'No restrictions', 'correct': false}
    ]
  },
  {
    'question': "What symbol is used as a built-in objects prefix in Angular?",
    'options': [
      {'option': '\$', 'correct': true},
      {'option': '^', 'correct': false},
      {'option': '%', 'correct': false},
      {'option': '@', 'correct': false}
    ]
  },
  {
    'question': "What is the scope of the Scope object?",
    'options': [
      {'option': 'controller level', 'correct': true},
      {'option': 'model level', 'correct': false},
      {'option': 'view level', 'correct': false},
      {'option': 'application level', 'correct': false}
    ]
  },
  {
    'question':
        "Which operator do you combine filters in Angular expressions with?",
    'options': [
      {'option': '|', 'correct': true},
      {'option': '&', 'correct': false},
      {'option': '~', 'correct': false},
      {'option': '\$', 'correct': false}
    ]
  },
  {
    'question': "What is used for validating Angular forms?",
    'options': [
      {'option': '\$dirty', 'correct': true},
      {'option': '\$validate', 'correct': false},
      {'option': '\$check', 'correct': false},
      {'option': '\$no-validate', 'correct': false}
    ]
  }
];
