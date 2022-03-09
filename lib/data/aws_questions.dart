const awsQuestions = [
  {
    'question': "____ is a billing and account management service in AWS.",
    'options': [
      {'option': 'Amazon DevPay', 'correct': true},
      {'option': 'Amazon Mechanical Turk', 'correct': false},
      {'option': 'Amazon Elastic MapReduce', 'correct': false},
      {'option': 'Multi-Factor Authentication', 'correct': false}
    ]
  },
  {
    'question': "What are the advantages of Auto Scaling?",
    'options': [
      {'option': 'All', 'correct': true},
      {'option': 'None', 'correct': false},
      {'option': 'Better Availability', 'correct': false},
      {'option': 'Fault Tolerance', 'correct': false},
      {'option': 'Better Cost Management', 'correct': false}
    ]
  },
  {
    'question':
        "Which of the following is an edge-storage or content delivery system that caches data in different physical locations?",
    'options': [
      {'option': 'Amazon CloudFront', 'correct': true},
      {'option': 'Amazon SimpleDB', 'correct': false},
      {'option': 'Amazon Associate Web Services', 'correct': false},
      {'option': 'Amazon Relational Database Service', 'correct': false}
    ]
  },
  {
    'question':
        "Which of the following is a means for accessing human researchers or consultants to help solve problems on a contractual or temporary basis?",
    'options': [
      {'option': 'Amazon Mechanical Turk', 'correct': true},
      {'option': 'Amazon Elastic MapReduce', 'correct': false},
      {'option': 'Amazon DevPay', 'correct': false},
      {'option': 'Multi-Factor Authentication', 'correct': false}
    ]
  },
  {
    'question': "Which of the following statements is correct?",
    'options': [
      {
        'option': 'SimpleDB inter-operates with both Amazon EC2 and Amazon S3',
        'correct': true
      },
      {
        'option': 'Amazon Elastic Cloud is a system for creating Virtual Disks',
        'correct': false
      },
      {'option': 'EC3 is an Analytics as a Service provider', 'correct': false},
      {'option': 'All', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question':
        "Which of the following is a structured data store that supports indexing and data queries to both EC2 and S3?",
    'options': [
      {'option': 'Amazon SimpleDB', 'correct': true},
      {'option': 'CloudWatch', 'correct': false},
      {'option': 'Amazon CloudFront', 'correct': false},
      {'option': 'All', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question':
        "Which service performs the function of terminating an unhealthy instance and replacing it with a new one?",
    'options': [
      {'option': 'Fault Tolerance', 'correct': true},
      {'option': 'Sticky Sessions', 'correct': false},
      {'option': 'Connection Draining', 'correct': false},
      {'option': 'All', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question':
        "Suppose a subnet is created and an EC2 instance is launched in the subnet with default settings. Which of the following options will be ready to use on the EC2 instance as soon as it is launched?",
    'options': [
      {'option': 'Private IP', 'correct': true},
      {'option': 'Elastic IP', 'correct': false},
      {'option': 'Public IP', 'correct': false},
      {'option': 'Internet Gateway', 'correct': false}
    ]
  },
  {
    'question':
        "Can you change the instance type of the instances that are running in your application tier and also using auto-scaling?",
    'options': [
      {
        'option': 'Yes, by modifying the auto-scaling policy configuration',
        'correct': true
      },
      {
        'option': 'Yes, by modifying the auto-scaling launch configuration',
        'correct': false
      },
      {
        'option': 'Yes, by modifying auto-scaling tags configuration',
        'correct': false
      },
      {'option': 'No, it cannot be changed', 'correct': false}
    ]
  },
  {
    'question':
        "Where does a user specify the maximum number of instances with the auto-scaling commands?",
    'options': [
      {'option': 'Auto-Scaling Group', 'correct': true},
      {'option': 'Auto-Scaling Policy Configuration', 'correct': false},
      {'option': 'Auto-Scaling Tags Configuration', 'correct': false},
      {'option': 'Auto-Scaling Launch Configuration', 'correct': false}
    ]
  },
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
];
