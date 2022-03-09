const mongoQuestions = [
  {
    'question':
        "Which of these is not a built-in role that grants permissions for database users in MongoDB?",
    'options': [
      {'option': 'write', 'correct': true},
      {'option': 'read', 'correct': false},
      {'option': 'readWrite', 'correct': false},
      {'option': 'dbOwner', 'correct': false}
    ]
  },
  {
    'question':
        "Which of the following does not come under the basic shell operations on MongoDB?",
    'options': [
      {'option': 'Write', 'correct': true},
      {'option': 'Update', 'correct': false},
      {'option': 'Create', 'correct': false},
      {'option': 'Delete', 'correct': false}
    ]
  },
  {
    'question':
        "Which of the following is not a data type supported by MongoDB?",
    'options': [
      {'option': 'ID', 'correct': true},
      {'option': 'Code', 'correct': false},
      {'option': 'Date', 'correct': false},
      {'option': 'String', 'correct': false}
    ]
  },
  {
    'question':
        "in MongoDB All of the following are properties of Sharding, except:",
    'options': [
      {
        'option':
            'Sharding in turn requires larger and more powerful machines.',
        'correct': true
      },
      {
        'option':
            'Sharding refers to the process of splitting data up across machines.',
        'correct': false
      },
      {
        'option':
            'Manual sharding can be done with almost any database software.',
        'correct': false
      },
      {
        'option': 'Sharding is the most complex way of configuring MongoDB.',
        'correct': false
      }
    ]
  },
  {
    'question':
        "MongoDB Queries can return specific fields of documents which also include user-defined ____ functions.",
    'options': [
      {'option': 'Javascript', 'correct': true},
      {'option': 'C', 'correct': false},
      {'option': 'C++', 'correct': false},
      {'option': 'All', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question':
        "In MongoDB ____ are operations that process data records and return computed results.",
    'options': [
      {'option': 'Aggregations', 'correct': true},
      {'option': 'ReplicaAgg', 'correct': false},
      {'option': 'SumCalculation', 'correct': false},
      {'option': 'All', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question':
        "in MongoDB the most basic pipeline stages provide _____ that operate like queries.",
    'options': [
      {'option': 'filters', 'correct': true},
      {'option': 'methods', 'correct': false},
      {'option': 'stored procedure', 'correct': false},
      {'option': 'none', 'correct': false},
      {'option': 'all', 'correct': false}
    ]
  },
  {
    'question': "MongoDB stores the documents in what are called",
    'options': [
      {'option': 'collections', 'correct': true},
      {'option': 'tables', 'correct': false},
      {'option': 'rows', 'correct': false},
      {'option': 'all', 'correct': false},
      {'option': 'none', 'correct': false},
    ]
  },
  {
    'question': "MongoDB indexes use a ____ data structure.",
    'options': [
      {'option': 'Map', 'correct': true},
      {'option': 'Hash', 'correct': false},
      {'option': 'B-tree', 'correct': false},
      {'option': 'All', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question':
        "MongoDB also supports user-defined indexes on multiple fields called",
    'options': [
      {'option': 'compound', 'correct': true},
      {'option': 'composite', 'correct': false},
      {'option': 'candidate', 'correct': false},
      {'option': 'none', 'correct': false}
    ]
  },
  {
    'question':
        "In MongoDB with hash-based partitioning, two documents with _____ shard key values are unlikely to be part of the same chunk.",
    'options': [
      {'option': 'close', 'correct': true},
      {'option': 'open', 'correct': false},
      {'option': 'partially close', 'correct': false},
      {'option': 'all', 'correct': false}
    ]
  },
  {
    'question':
        "In MongoDB ___ key is either an indexed field or an indexed compound field that exists in every document in the collection.",
    'options': [
      {'option': 'shard', 'correct': true},
      {'option': 'cluster', 'correct': false},
      {'option': 'partition', 'correct': false},
      {'option': 'all', 'correct': false},
      {'option': 'none', 'correct': false}
    ]
  },
  {
    'question': "Which of the following statements is true in MongoDB?",
    'options': [
      {
        'option':
            'MongoDB distributes data, or shards, at the collection level.',
        'correct': true
      },
      {
        'option': 'To shard a document, one needs to select a shard key.',
        'correct': false
      },
      {
        'option': 'MongoDB divides the shard key values into replica sets.',
        'correct': false
      },
      {'option': 'All', 'correct': false}
    ]
  }
];
