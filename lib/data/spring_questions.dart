const springQuestions = [
  {
    'question': "Spring is used for?",
    'options': [
      {'option': 'All', 'correct': true},
      {'option': 'Java Framework', 'correct': false},
      {'option': 'Web Development Framework', 'correct': false},
      {'option': 'MVC Framework', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question': "Default HTML template engine in Spring Boot?",
    'options': [
      {'option': 'Thymeleaf', 'correct': true},
      {'option': 'JSP', 'correct': false},
      {'option': 'HTML', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question': "Annotation used for handling GET requests?",
    'options': [
      {'option': '@GetMapping', 'correct': true},
      {'option': '@PostMapping', 'correct': false},
      {'option': '@Controller', 'correct': false},
      {'option': '@GetRequest', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question': "Annotation used for Rest Controller?",
    'options': [
      {'option': '@RestController', 'correct': true},
      {'option': '@SpringBootApplication', 'correct': false},
      {'option': '@Controller', 'correct': false},
      {'option': 'All', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question': "Which annotation is not Spring Boot Annotation?",
    'options': [
      {'option': '@Metadata', 'correct': true},
      {'option': '@Service', 'correct': false},
      {'option': '@Controller', 'correct': false},
      {'option': '@RestController', 'correct': false}
    ]
  },
  {
    'question': "Minimum Java version needed for Spring Boot?",
    'options': [
      {'option': 'Java 8', 'correct': true},
      {'option': 'Java 10', 'correct': false},
      {'option': 'Java 7', 'correct': false},
      {'option': 'Java 9', 'correct': false}
    ]
  },
  {
    'question': "Which of the following is used by Maven?",
    'options': [
      {'option': 'Pom.xml', 'correct': true},
      {'option': 'Config.xml', 'correct': false},
      {'option': 'META-INF', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question': "Is Dependency needed to create a Spring Boot web application?",
    'options': [
      {'option': 'Spring-boot-starter-web', 'correct': true},
      {'option': 'Spring-boot-starter-test', 'correct': false},
      {'option': 'Spring-boot-html', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question': "Starting points of Spring Boot Application?",
    'options': [
      {'option': '@SpringBootApplication', 'correct': true},
      {'option': '@Controller', 'correct': false},
      {'option': '@Service', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question': "Database object must be annotated with?",
    'options': [
      {'option': '@Entity', 'correct': true},
      {'option': '@Table', 'correct': false},
      {'option': '@Column', 'correct': false},
      {'option': '@Repository', 'correct': false}
    ]
  },
  {
    'question':
        "Which of the following is  used to have full access to the Spring context's life cycle machinery and dependency injection? ",
    'options': [
      {'option': 'DelegatingFilterProxy', 'correct': true},
      {
        'option': 'WebApplicationContextUtils.getRequiredWeb()',
        'correct': false
      },
      {
        'option': 'WebApplicationUtils.getRequiredWebApplicationContext()',
        'correct': false
      },
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question': "The @Secured annotation secures methods implemented by beans.",
    'options': [
      {'option': 'True', 'correct': true},
      {'option': 'False', 'correct': false},
      {'option': 'May be', 'correct': false},
      {'option': 'Can not say', 'correct': false}
    ]
  },
  {
    'question':
        "Name the Servlet filters that filters requests in the Spring application context.",
    'options': [
      {'option': 'DelegatingFilterProxy', 'correct': true},
      {'option': 'DelegatingFilter', 'correct': false},
      {'option': 'DelegatingProxy', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question':
        "Which of the following ways is used to secure a web app’s URL?",
    'options': [
      {'option': 'Servlet filters', 'correct': true},
      {'option': 'Refresh-check-delay', 'correct': false},
      {'option': 'Http servlet filters', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question':
        "Which of the following elements is used to restrict access to a particular URL?",
    'options': [
      {'option': 'Intercept-url', 'correct': true},
      {'option': 'Restrict-url', 'correct': false},
      {'option': 'Intercept-restrict', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question': "What is bean in Spring security?",
    'options': [
      {'option': 'Object', 'correct': true},
      {'option': 'Component', 'correct': false},
      {'option': 'Class', 'correct': false},
      {'option': 'Container', 'correct': false}
    ]
  },
  {
    'question': "AOP stands for?",
    'options': [
      {'option': 'Aspect Oriented Programming', 'correct': true},
      {'option': 'Asynchronous oriented programming', 'correct': false},
      {'option': 'All', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question': "What do you mean by dependency injection?",
    'options': [
      {
        'option':
            'It is a design pattern to remove dependencies from the programming code.',
        'correct': true
      },
      {'option': 'It is one of the Spring modules.', 'correct': false},
      {
        'option': 'It is a technique to get dependencies from any project.',
        'correct': false
      },
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question': "The Spring Boot Actuator allows you to view ___",
    'options': [
      {'option': 'All', 'correct': true},
      {'option': 'Application bean configuration details', 'correct': false},
      {'option': 'Registered Health Check, Metrics', 'correct': false},
      {
        'option': 'Environment details and configuration parameter values',
        'correct': false
      }
    ]
  },
  {
    'question':
        "Spring Framework introduced Expression Language/ SpEL in which version?",
    'options': [
      {'option': '3.0', 'correct': true},
      {'option': '1.0', 'correct': false},
      {'option': '2.0', 'correct': false},
      {'option': '4.0', 'correct': false}
    ]
  },
  {
    'question':
        "Which among the below options needs to be registered for loading the application’s root context at start time?",
    'options': [
      {'option': 'ContextLoaderListener', 'correct': true},
      {'option': 'ContextLoaderStarter', 'correct': false},
      {'option': 'RootContextListener', 'correct': false},
      {'option': 'RootContextTrigger', 'correct': false}
    ]
  },
  {
    'question':
        "Which method is used for shutting down IoC container in Spring?",
    'options': [
      {'option': 'registerShutdownHook()', 'correct': true},
      {'option': 'registerHook(shutdown)', 'correct': false},
      {'option': 'shutdownHook(true)', 'correct': false},
      {'option': 'shutdownHandlerHook()', 'correct': false}
    ]
  },
  {
    'question': "What are the types of autowire in Spring?",
    'options': [
      {
        'option': 'byName, byType, constructor, and autodetect',
        'correct': true
      },
      {
        'option': 'byName, byType, destructor, and autodetect',
        'correct': false
      },
      {
        'option': 'byMethod, byName, autocorrect, and autodetect',
        'correct': false
      },
      {'option': 'byName, byType, byValue, and autodetect', 'correct': false}
    ]
  },
  {
    'question': "Which method allows to start a new transaction in Spring?",
    'options': [
      {'option': 'getTransaction()', 'correct': true},
      {'option': 'startSession()', 'correct': false},
      {'option': 'getSession()', 'correct': false},
      {'option': 'startNewTransaction()', 'correct': false}
    ]
  },
  {
    'question': "What attribute is used for handling web request flow?",
    'options': [
      {'option': 'servlet-mapping', 'correct': true},
      {'option': 'servlet-attr', 'correct': false},
      {'option': 'servlet-flow', 'correct': false},
      {'option': 'servlet-flow-request', 'correct': false}
    ]
  },
  {
    'question': "What advice is run once joint-point execution is complete?",
    'options': [
      {'option': '@After', 'correct': true},
      {'option': '@AfterFinish', 'correct': false},
      {'option': '@AfterJoint', 'correct': false},
      {'option': '@AfterPoint', 'correct': false}
    ]
  },
  {
    'question':
        "Which method gives warning from the compiler resulting from List to List unchecked conversion?",
    'options': [
      {'option': 'findAll()', 'correct': true},
      {'option': 'createNativeQuery()', 'correct': false},
      {'option': 'updateAll()', 'correct': false},
      {'option': 'batchUpsert()', 'correct': false}
    ]
  },
  {
    'question':
        "What annotation is used for finding transaction and failing it by complaining no Hibernate session is bound to thread?",
    'options': [
      {'option': '@Transactional', 'correct': true},
      {'option': '@TransactionFail', 'correct': false},
      {'option': '@TransactionHandler', 'correct': false},
      {'option': '@TransactionResolver', 'correct': false}
    ]
  },
  {
    'question':
        "What property is used for loading hibernate configuration files by the factory bean?",
    'options': [
      {'option': 'configLocation', 'correct': true},
      {'option': 'config', 'correct': false},
      {'option': 'config.xml', 'correct': false},
      {'option': 'hbm-config', 'correct': false}
    ]
  },
  {
    'question': "Which of the below statements are correct about Spring?",
    'options': [
      {'option': 'All', 'correct': true},
      {
        'option':
            'Spring allows developers to develop enterprise-level web applications.',
        'correct': false
      },
      {
        'option': 'Spring allows developers to code in a modular way.',
        'correct': false
      },
      {
        'option': 'Spring ensures that application testing is made simple.',
        'correct': false
      },
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question': "What does the byName type of autowiring do?",
    'options': [
      {
        'option':
            'byName mode means there is no autowiring and explicit reference needs to be added.',
        'correct': true
      },
      {
        'option':
            'byName mode ensures that the autowiring is done by means of the property name. Spring matches and wires the properties with beans of the same name defined in the configuration file.',
        'correct': false
      },
      {
        'option':
            'In this mode, Spring first autowires by the constructor and if not found, it tries to autowire by type.',
        'correct': false
      },
      {
        'option':
            'This mode is similar to byType mode but is restricted to non-parameterised constructors.',
        'correct': false
      }
    ]
  },
  {
    'question':
        "Which among the below classes is used for mapping database row to java object in Spring?",
    'options': [
      {'option': 'RowMapper', 'correct': true},
      {'option': 'ResultSet', 'correct': false},
      {'option': 'RowSetMapper', 'correct': false},
      {'option': 'ResultSetMapper', 'correct': false}
    ]
  },
  {
    'question':
        "What class is used for giving a class behaviour of DispatcherServlet?",
    'options': [
      {'option': 'AbstractController', 'correct': true},
      {'option': 'Repository', 'correct': false},
      {'option': 'AbstractAction', 'correct': false},
      {'option': 'Controller', 'correct': false}
    ]
  },
  {
    'question':
        "Which among the below is the Handler method annotation in Spring?",
    'options': [
      {'option': '@RequestMapping', 'correct': true},
      {'option': '@Controller', 'correct': false},
      {'option': '@Service', 'correct': false},
      {'option': '@Resolve', 'correct': false}
    ]
  },
  {
    'question':
        "What method arguments are used in handler methods using @RequestMapping?",
    'options': [
      {'option': '@RequestParam', 'correct': true},
      {'option': '@Controller', 'correct': false},
      {'option': '@Bean', 'correct': false},
      {'option': '@Service', 'correct': false}
    ]
  },
  {
    'question':
        "Which among the ViewResolvers resolves the view name to the application’s directory?",
    'options': [
      {'option': 'InternalResourceViewResolver', 'correct': true},
      {'option': 'InternalResolver', 'correct': false},
      {'option': 'InternalViewResolver', 'correct': false},
      {'option': 'InternalRequestResolver', 'correct': false}
    ]
  },
  {
    'question':
        "Which among the below annotation represents that a field can't be null?",
    'options': [
      {'option': '@NotNull', 'correct': true},
      {'option': '@NotEmpty', 'correct': false},
      {'option': '@NeverNull', 'correct': false},
      {'option': 'All', 'correct': false}
    ]
  },
  {
    'question':
        "What annotation receives values in the form of regular expression?",
    'options': [
      {'option': '@Pattern', 'correct': true},
      {'option': '@Password', 'correct': false},
      {'option': '@Email', 'correct': false},
      {'option': '@Valid', 'correct': false}
    ]
  },
  {
    'question':
        "What is used to notify the completion of the session processing?",
    'options': [
      {'option': 'SessionStatus', 'correct': true},
      {'option': 'BindingResult', 'correct': false},
      {'option': 'HttpStatus', 'correct': false},
      {'option': 'Session', 'correct': false}
    ]
  }
];
