const sqlQuestions = [
  {
    'question': "Which statement is true for a PRIMARY KEY constraint?",
    'options': [
      {
        'option':
            'A table in SQL is indexed by default based on its primary key.',
        'correct': true
      },
      {
        'option': 'Primary key defines a realtionship between two tables.',
        'correct': false
      },
      {
        'option':
            'A table in SQL must have a primary key associated with it to uniquely identify its records.',
        'correct': false
      },
      {
        'option':
            'Primary key may or may not be unique but can be comprised of multiple fields.',
        'correct': false
      }
    ]
  },
  {
    'question': "Which statement is false for a FOREIGN KEY constraint?",
    'options': [
      {
        'option':
            'Foreign Key is automatically created when two tables are joined.',
        'correct': true
      },
      {
        'option': 'Foreign key defines a relationship between two tables.',
        'correct': false
      },
      {
        'option':
            'Foreign Key uniquely identifies all the records in the referenced table.',
        'correct': false
      },
      {
        'option':
            'Foreign key may or may not be unique but can be comprised of multiple fields.',
        'correct': false
      }
    ]
  },
  {
    'question': "What is a Query?",
    'options': [
      {
        'option':
            'A request for data from single or multiple tables in the database.',
        'correct': true
      },
      {'option': 'A request to input data from the user.', 'correct': false},
      {
        'option': 'A request for data from a table in the database.',
        'correct': false
      },
      {'option': 'A SELECT or UPDATE statement in SQL.', 'correct': false}
    ]
  },
  {
    'question': "What does SQL stand for?",
    'options': [
      {'option': 'Structured Query Language', 'correct': true},
      {'option': 'Structured Question Language', 'correct': false},
      {'option': 'Strong Query Language', 'correct': false},
      {'option': 'Strong Question Language', 'correct': false}
    ]
  },
  {
    'question': "Which statement is used to update data in the database?",
    'options': [
      {'option': 'UPDATE', 'correct': true},
      {'option': 'MODIFY', 'correct': false},
      {'option': 'ALTER TABLE', 'correct': false},
      {'option': 'SAVE AS', 'correct': false}
    ]
  },
  {
    'question': 'Query to select all records with "bar" in their name?',
    'options': [
      {
        'option': 'SELECT * FROM people WHERE name LIKE "%bar%";',
        'correct': true
      },
      {
        'option': 'SELECT * FROM people WHERE name = "%bar%";',
        'correct': false
      },
      {
        'option': 'SELECT * FROM people WHERE name IN ("bar");',
        'correct': false
      },
      {'option': 'SELECT * FROM people WHERE name = "_bar_"', 'correct': false}
    ]
  },
  {
    'question': "Which statement is false for the ORDER BY statement?",
    'options': [
      {
        'option':
            'Requires a ASC or DESC keyword explicitly to sort the result set.',
        'correct': true
      },
      {
        'option':
            'Sorts the result set in descending order using the DESC keyword.',
        'correct': false
      },
      {'option': 'Can sort based on multiple columns.', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question': "SQL query used to fetch unique values from a field?",
    'options': [
      {
        'option': 'SELECT DISTINCT column_name FROM table_name;',
        'correct': true
      },
      {
        'option': 'SELECT UNIQUE column_name FROM table_name;',
        'correct': false
      },
      {
        'option':
            'SELECT column_name FROM table_name WHERE COUNT(column_name) = 1;',
        'correct': false
      },
      {
        'option':
            'SELECT UNIQUE column_name FROM table_name WHERE COUNT(column_name) = 1;',
        'correct': false
      }
    ]
  },
  {
    'question':
        "What is the main advantage of a clustered index over a non-clustered index?",
    'options': [
      {
        'option':
            'It does not require additional memory and allows for speedy retrieval of records.',
        'correct': true
      },
      {'option': 'It is easier to create and manipulate.', 'correct': false},
      {
        'option':
            'It requires extra memory but allows for speedy retrieval of records.',
        'correct': false
      },
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question':
        "Normalization which has neither composite values nor partial dependencies?",
    'options': [
      {'option': 'All', 'correct': true},
      {'option': 'Second Normal Formal', 'correct': false},
      {'option': 'Boyce-Codd Normal Form', 'correct': false},
      {'option': 'Third Normal Form', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question':
        "An SQL query to delete a table from the database and memory while keeping the structure of the table intact?",
    'options': [
      {'option': 'TRUNCATE TABLE table_name;', 'correct': true},
      {'option': 'DROP TABLE table_name;', 'correct': false},
      {'option': 'DROP FROM TABLE table_name;', 'correct': false},
      {'option': 'DELETE FROM TABLE table_name;', 'correct': false}
    ]
  },
  {
    'question': "Which of the following is known as a virtual table in SQL?",
    'options': [
      {'option': 'VIEW', 'correct': true},
      {'option': 'SELF JOIN', 'correct': false},
      {'option': 'INNER JOIN', 'correct': false},
      {'option': 'None', 'correct': false},
      {'option': 'All', 'correct': false}
    ]
  },
  {
    'question':
        "What is the name of the component that requests data to the PostgreSQL server?",
    'options': [
      {'option': 'Client', 'correct': true},
      {'option': 'Thin Client', 'correct': false},
      {'option': 'Workstation', 'correct': false},
      {'option': 'Interface', 'correct': false}
    ]
  },
  {
    'question': "What statement is used for adding data to PostgreSQL?",
    'options': [
      {'option': 'INSERT', 'correct': true},
      {'option': 'UPDATE', 'correct': false},
      {'option': 'ADD', 'correct': false},
      {'option': 'APPEND', 'correct': false}
    ]
  },
  {
    'question':
        "What is the order of results shown by default if the ASC or DESC parameter is not specified with the ORDER BY command?",
    'options': [
      {'option': 'Results are shown in ascending order', 'correct': true},
      {'option': 'Results are shown in descending order', 'correct': false},
      {'option': 'Results display is random', 'correct': false},
      {
        'option':
            'Results are shown in ascending and descending order alternately',
        'correct': false
      }
    ]
  },
  {
    'question':
        "Which command is used to tell PostgreSQL to make all changes made to the database permanent?",
    'options': [
      {'option': 'Commit', 'correct': true},
      {'option': 'Submit', 'correct': false},
      {'option': 'Execute', 'correct': false},
      {'option': 'Apply', 'correct': false}
    ]
  },
  {
    'question':
        "What is a pre-requisite for creating a database in PostgreSQL?To create a database in PostgreSQL, you must have the special CREATEDB privilege or",
    'options': [
      {'option': 'Super user privilege or CREATEDB privilege', 'correct': true},
      {'option': 'Admin privilege', 'correct': false},
      {
        'option': 'CREATEDBL privilege and Super user privilege',
        'correct': false
      },
      {'option': 'Just run the script', 'correct': false}
    ]
  },
  {
    'question':
        "What command is used for restoring the backup of PostgreSQL which was created using pg_dump?",
    'options': [
      {'option': 'psql -f db_dump.psql db_name', 'correct': true},
      {'option': 'psql -R db_dump.psql db_name', 'correct': false},
      {'option': 'psql -r db_dump.psql db_name', 'correct': false},
      {'option': 'psql -F db_dump.psql db_name', 'correct': false}
    ]
  },
  {
    'question':
        "What allows us to define how various tables are related to each other formally in a database?",
    'options': [
      {'option': 'Foreign Key Constraints', 'correct': true},
      {'option': 'Views', 'correct': false},
      {'option': 'Primary Key Constraints', 'correct': false},
      {'option': 'Database manager', 'correct': false}
    ]
  },
  {
    'question': "What languages are supported by PostgreSQL?",
    'options': [
      {'option': 'PL/pgSQL, PL/Tcl, PL/Perl and PL/Python', 'correct': true},
      {'option': 'PL/pgSQL, PL/Pcl, PL/Ruby and PL/Java', 'correct': false},
      {'option': 'PL/Perl, PL/Dcl, PL/Dtl and PL/Dml', 'correct': false},
      {'option': 'Only SQL', 'correct': false}
    ]
  }
];
