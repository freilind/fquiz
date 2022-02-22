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
