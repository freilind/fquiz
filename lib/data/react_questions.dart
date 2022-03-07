const reactQuestions = [
  {
    'question': "What is React or ReactJS?",
    'options': [
      {'option': 'Component-based Javascript library', 'correct': true},
      {'option': 'Javascript framework', 'correct': false},
      {'option': 'Javascript file', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question': "Which of the following comes under the advantages of React?",
    'options': [
      {
        'option':
            'Integration with other frameworks (like BackboneJS, Angular, etc.) becomes easier because it is only a view library',
        'correct': false
      },
      {
        'option':
            'Increases the performance of an application using Virtual DOM',
        'correct': false
      },
      {'option': 'Can render both on server and client side', 'correct': false},
      {'option': 'All', 'correct': true},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question':
        "The number of elements that can be returned by a valid React component is ___",
    'options': [
      {'option': '5', 'correct': false},
      {'option': '1', 'correct': true},
      {'option': '3', 'correct': false},
      {'option': '2', 'correct': false},
      {'option': 'infinite', 'correct': false}
    ]
  },
  {
    'question':
        "What is the declarative approach for rendering a dynamic list of components depending on array values?",
    'options': [
      {'option': 'Using <Each/> component', 'correct': false},
      {'option': 'Using reduce array method', 'correct': false},
      {'option': 'Using Array.map() method', 'correct': true},
      {'option': 'Using for or while loop', 'correct': false}
    ]
  },
  {
    'question': "What is meant by the state in React?",
    'options': [
      {'option': 'Internal storage of component', 'correct': true},
      {'option': 'External storage of component', 'correct': false},
      {'option': 'Permanent storage', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question': "Which command can be used for the creation of React app?",
    'options': [
      {'option': 'npm install create-react-app', 'correct': false},
      {'option': 'install -g create-react-app', 'correct': false},
      {'option': 'npm install -g create-react-app', 'correct': true},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question':
        "What is used for passing the data to a component from outside?",
    'options': [
      {'option': 'Render with arguments', 'correct': false},
      {'option': 'setState', 'correct': false},
      {'option': 'PropTypes', 'correct': false},
      {'option': 'props', 'correct': true}
    ]
  },
  {
    'question': "___ will help to keep the data unidirectional in React.",
    'options': [
      {'option': 'Dom', 'correct': false},
      {'option': 'Props', 'correct': false},
      {'option': 'JSX', 'correct': false},
      {'option': 'Flux', 'correct': true}
    ]
  },
  {
    'question':
        "Which of the following statements related to the 'webpack' command is true?",
    'options': [
      {'option': 'It is a module bundler', 'correct': true},
      {'option': 'It runs React local development server', 'correct': false},
      {
        'option':
            'It is used to transpile all the JavaScript into a single file',
        'correct': false
      },
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question': "What are the ReactJS limitations?",
    'options': [
      {
        'option':
            'React will use inline templating and JSX which might seem awkward to a few developers',
        'correct': false
      },
      {
        'option':
            'ReactJS is only for the view layer of the application, which means we will make use of other technologies as well for getting complete tooling set for the application development',
        'correct': false
      },
      {'option': 'The React library is too large', 'correct': false},
      {'option': 'All', 'correct': true},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question': "What is the usage of setState?",
    'options': [
      {
        'option': 'Invoking the code after the setState operation is performed',
        'correct': true
      },
      {
        'option': 'Accessing the earlier state before the setState operation',
        'correct': false
      },
      {
        'option':
            'Replacing the state fully instead of the default merge action',
        'correct': false
      },
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question': "The Keys given to a list of elements in React should be ___",
    'options': [
      {'option': 'Unique among the siblings only', 'correct': true},
      {'option': 'Not necessarily unique', 'correct': false},
      {'option': 'Unique in the DOM (Document Object Model)', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question':
        "What function will permit for rendering the React content in an HTML page?",
    'options': [
      {'option': 'ReactDOM.render()', 'correct': true},
      {'option': 'React.render()', 'correct': false},
      {'option': 'ReactDOM.start()', 'correct': false},
      {'option': 'React.mount()', 'correct': false}
    ]
  },
  {
    'question': "React is mainly used for developing ___",
    'options': [
      {'option': 'User interface', 'correct': true},
      {'option': 'Design platform', 'correct': false},
      {'option': 'Connectivity', 'correct': false},
      {'option': 'Database', 'correct': false}
    ]
  },
  {
    'question': "___ is a necessary API for every React.js component.",
    'options': [
      {'option': 'renderComponent', 'correct': true},
      {'option': 'render', 'correct': false},
      {'option': 'SetinitialComponent', 'correct': false},
      {'option': 'All', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  }
];
