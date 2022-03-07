const jsQuestions = [
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
    'question': '''let y = 7;\nlet x = y;\nx = 5;\ny = 23;\nconsole.log(x);''',
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
];
