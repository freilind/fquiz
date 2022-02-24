var questionsList = {
  'javascript': [
    {
      'question': "true + false",
      'options': [
        {'option': '"truefalse"', 'correct': false},
        {'option': '1', 'correct': true},
        {'option': 'NaN', 'correct': false},
        {'option': 'SyntaxError', 'correct': false}
      ]
    },
    {
      'question': "[,,,].length",
      'options': [
        {'option': '0', 'correct': false},
        {'option': '3', 'correct': true},
        {'option': '4', 'correct': false},
        {'option': 'SyntaxError', 'correct': false}
      ]
    },
    {
      'question': '''var x;\nconsole.log(x);\nx = 23;''',
      'options': [
        {'option': '23', 'correct': false},
        {'option': 'undefined', 'correct': true},
        {'option': '0', 'correct': false},
        {'option': 'Error', 'correct': false},
        {'option': 'null', 'correct': false}
      ]
    },
    {
      'question': '''x=3;\nconsole.log(x);\nvar x;''',
      'options': [
        {'option': '3', 'correct': true},
        {'option': 'undefined', 'correct': false},
        {'option': '0', 'correct': false},
        {'option': 'Error', 'correct': false},
        {'option': 'null', 'correct': false}
      ]
    },
    {
      'question': '''"use strict";\nx = 3;\nconsole.log(x);\nvar x; ''',
      'options': [
        {'option': '3', 'correct': false},
        {'option': 'undefined', 'correct': false},
        {'option': '0', 'correct': false},
        {'option': 'Error', 'correct': true},
        {'option': 'null', 'correct': false}
      ]
    },
    {
      'question': '''let x = 2;\nlet y = "2";\n(x == y)''',
      'options': [
        {'option': 'false', 'correct': false},
        {'option': 'undefined', 'correct': false},
        {'option': 'Error', 'correct': false},
        {'option': 'true', 'correct': true},
        {'option': 'null', 'correct': false}
      ]
    },
    {
      'question': '''let x = 2;\nlet y = "2";\n(x === y)''',
      'options': [
        {'option': 'false', 'correct': true},
        {'option': 'undefined', 'correct': false},
        {'option': 'Error', 'correct': false},
        {'option': 'true', 'correct': false},
        {'option': 'null', 'correct': false}
      ]
    },
    {
      'question': '''let x = 3;\nlet y = "3";\nx - y''',
      'options': [
        {'option': '0', 'correct': true},
        {'option': 'undefined', 'correct': false},
        {'option': 'Error', 'correct': false},
        {'option': '"3-3"', 'correct': false},
        {'option': 'NaN', 'correct': false}
      ]
    },
    {
      'question': '''let x = 3;\nlet y = "3";\nx + y''',
      'options': [
        {'option': '6', 'correct': false},
        {'option': 'undefined', 'correct': false},
        {'option': 'Error', 'correct': false},
        {'option': '"33"', 'correct': true},
        {'option': 'NaN', 'correct': false}
      ]
    },
    {
      'question': '''let x = "B";\nlet y = "3";\ny + x''',
      'options': [
        {'option': 'B3', 'correct': false},
        {'option': 'undefined', 'correct': false},
        {'option': 'Error', 'correct': false},
        {'option': 'NaN', 'correct': false},
        {'option': '3B', 'correct': true}
      ]
    },
    {
      'question': '''let x = "B";\nlet y = "3";\ny - x''',
      'options': [
        {'option': 'B3', 'correct': false},
        {'option': 'undefined', 'correct': false},
        {'option': 'Error', 'correct': false},
        {'option': 'NaN', 'correct': true},
        {'option': '3B', 'correct': false}
      ]
    },
    {
      'question':
          '''let y = 7;\nlet x = y;\nx = 5;\ny = 23;\nconsole.log(x);''',
      'options': [
        {'option': '7', 'correct': false},
        {'option': 'undefined', 'correct': false},
        {'option': 'Error', 'correct': false},
        {'option': '5', 'correct': true},
        {'option': '23', 'correct': false}
      ]
    },
    {
      'question':
          '''let obj = {name:"Vivek",surname:"Bisht"};\nlet obj2=obj;\nobj.name="Akki";\nconsole.log(obj2);''',
      'options': [
        {'option': '{name:"Vivek",surname:"Bisht"}', 'correct': false},
        {'option': 'undefined', 'correct': false},
        {'option': 'Error', 'correct': false},
        {'option': '{name:"Akki",surname:"Bisht"}', 'correct': true},
        {'option': '{name:"Akki"}', 'correct': false}
      ]
    },
    {
      'question': '''let obj = {
  name:  "vivek",
  getName: function(){
  console.log(this.name);
 }    
}
    
let getName = obj.getName;
  
let obj2 = {name:"akshay", getName };
obj2.getName();''',
      'options': [
        {'option': 'vivek', 'correct': false},
        {'option': 'undefined', 'correct': false},
        {'option': 'Error', 'correct': false},
        {'option': 'akshay', 'correct': true},
        {'option': 'null', 'correct': false}
      ]
    },
    {
      'question': '''let obj1 = {
    address : "Mumbai,India",
    getAddress: function(){
    console.log(this.address); 
  }
}
       
let getAddress = obj1.getAddress;
let obj2 = {name:"akshay", getAddress};
obj2.getAddress();''',
      'options': [
        {'option': 'Mumbai,India', 'correct': false},
        {'option': 'undefined', 'correct': true},
        {'option': 'Error', 'correct': false},
        {'option': 'akshay', 'correct': false},
        {'option': 'null', 'correct': false}
      ]
    }
  ],
  'angular': [],
  'database': [],
  'react': [],
  'html5': [],
  'aws': [
    {
      'question':
          '''You have chosen AWS Elastic Beanstalk to upload your application code and allow it to handle details such as provisioning resources and monitoring.\n
When creating configuration files for AWS Elastic Beanstalk which naming convention should you follow?\n
You are creating a Cloud Formation template to deploy your CMS application running on an EC2 instance within your AWS account. Since the application will be deployed across multiple regions, you need to create a map of all the possible values for the base AMI.\n
How will you invoke the !FindInMap function to fulfill this use case?''',
      'options': [
        {'option': '"truefalse"', 'correct': false},
        {'option': '1', 'correct': true},
        {'option': 'NaN', 'correct': false},
        {'option': 'SyntaxError', 'correct': false}
      ]
    },
    {
      'question':
          '''Amazon simple Service (SQS) has a set of APIs for various actions supported by the service.\n
As a developer associate which of the following would you identify as correct regarding the "CreateQuery" API?''',
      'options': [
        {
          'option':
              '''The dead-letter queue of a FIFO queue must also be a FIFO queue. Whereas, the dead-letter queue of a
        standard queue can be a standard queue or a FIFO queue''',
          'correct': false
        },
        {
          'option': 'You can`t change the queue type after you create it',
          'correct': true
        },
        {
          'option':
              'The visibility timeout value for the queue is in seconds, which defaults to 30 seconds',
          'correct': false
        },
        {
          'option':
              'The length of time, in seconds, for which the delivery of all messages in the queue is delayed is configured using "MessageRetentionPeriod" attribute',
          'correct': false
        },
        {
          'option':
              'Queue tags are case insensitive. a new tag with a key identical to that of an existing tag overwrites the existing tag',
          'correct': false
        },
      ]
    }
  ],
  'java': [],
  'spring': [],
};
