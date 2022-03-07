const htmlQuestions = [
  {
    'question':
        "If you have used inline, internal, and external all the 3 stylings in HTML for a single element then which style will be applied?",
    'options': [
      {'option': 'Inline', 'correct': true},
      {'option': 'Internal', 'correct': false},
      {'option': 'External', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question': "Comments in HTML is done by:",
    'options': [
      {'option': '"<?-- -->"', 'correct': false},
      {'option': '"<!-- -->"', 'correct': true},
      {'option': '"<!-- --!>"', 'correct': false},
      {'option': '"</-- -->"', 'correct': false}
    ]
  },
  {
    'question':
        "Which of the following is the correct HTML syntax for adding background color?",
    'options': [
      {'option': '<p\n style="backgroundColor: #fff">\n<p>', 'correct': false},
      {
        'option': '<p\n style="background-color= #fff">\n</p>',
        'correct': false
      },
      {'option': '<p\n style="background-color: #fff">\n</p>', 'correct': true},
      {'option': '<p\n style="color: #fff">\n</p>', 'correct': false}
    ]
  },
  {
    'question':
        "Which is the correct HTML syntax for adding a link to the image?",
    'options': [
      {
        'option': '<a src="http://xyz.com/image">\n <img src="path" />\n</a>',
        'correct': false
      },
      {
        'option': '<a src="http://xyz.com/image">\n <img href="path" />\n</a>',
        'correct': false
      },
      {
        'option':
            '<link href="http://xyz.com/image">\n <img src="path" />\n</link>',
        'correct': false
      },
      {
        'option':
            '<a href="http://xyz.com/image">\n  <img src="path" /> \n</a>',
        'correct': true
      }
    ]
  },
  {
    'question': "Which of the following are not semantic tags?",
    'options': [
      {'option': '<div>', 'correct': true},
      {'option': '<nav>', 'correct': false},
      {'option': '<article>', 'correct': false},
      {'option': '<summary>', 'correct': false}
    ]
  },
  {
    'question': "Which is the correct attribute to change the size of text?",
    'options': [
      {'option': '<p style="textSize: 10px"></p>', 'correct': false},
      {'option': '<p style="text-size: 10px"></p>', 'correct': false},
      {'option': '<p style="font-size: 10px"></p>', 'correct': true},
      {'option': '<p style="fontSize: 10px"></p>', 'correct': false}
    ]
  },
  {
    'question': "What are the correct extensions for saving an HTML file?",
    'options': [
      {'option': '.hml', 'correct': false},
      {'option': '.xml', 'correct': false},
      {'option': '.html', 'correct': false},
      {'option': '.htm', 'correct': false},
      {'option': '.hml and .xml', 'correct': false},
      {'option': '.html and .htm', 'correct': true}
    ]
  },
  {
    'question': "HTML attribute values are case-sensitive?",
    'options': [
      {'option': 'True', 'correct': true},
      {'option': 'False', 'correct': false}
    ]
  },
  {
    'question':
        "Using which attribute we can add a tooltip in the HTML element.",
    'options': [
      {'option': 'title', 'correct': true},
      {'option': 'tooltip', 'correct': false},
      {'option': 'ref', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question':
        "Which of the following is not a value of the attribute display?",
    'options': [
      {'option': 'flexbox', 'correct': true},
      {'option': 'inline-flex', 'correct': false},
      {'option': 'flex', 'correct': false},
      {'option': 'grid', 'correct': false}
    ]
  },
  {
    'question':
        "Which of the following is correct about custom attributes in HTML5?",
    'options': [
      {
        'option':
            'A custom data attribute starts with data- and would be named based on the requirement.',
        'correct': false
      },
      {
        'option':
            'The values of these attributes can be retrieved using JavaScript APIs or CSS, similar to standard attribute.',
        'correct': false
      },
      {'option': 'All', 'correct': true},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question':
        "Which of the following attribute triggers an event when all the media data of a media element is loaded?",
    'options': [
      {'option': 'onloadedmetadata', 'correct': true},
      {'option': 'onloadstart', 'correct': false},
      {'option': 'onmessage', 'correct': false},
      {'option': 'Onoffline', 'correct': false}
    ]
  },
  {
    'question':
        "Which attribute defines the accelerator key to be used for keyboard access to an element.",
    'options': [
      {'option': 'accesskey', 'correct': true},
      {'option': 'data-x', 'correct': false},
      {'option': 'common', 'correct': false},
      {'option': 'Src', 'correct': false}
    ]
  },
  {
    'question': "How to set the playback speed of audio/video?",
    'options': [
      {'option': 'defaultPlaybackrate', 'correct': true},
      {'option': 'playbackrate', 'correct': false},
      {'option': 'currentTime', 'correct': false},
      {'option': 'Duration', 'correct': false}
    ]
  },
  {
    'question': "Which one is not a semantic html5 element?",
    'options': [
      {'option': '<span>', 'correct': true},
      {'option': '<article>', 'correct': false},
      {'option': '<mark>', 'correct': false},
      {'option': '<section>', 'correct': false}
    ]
  },
  {
    'question':
        "Which of the following method cancels an ongoing watchPosition call?",
    'options': [
      {'option': 'geolocation.clearPosition()', 'correct': true},
      {'option': 'geolocation.watchPosition()', 'correct': false},
      {'option': 'geolocation.getcurrentPosition()', 'correct': false},
      {'option': 'geolocation.clearCurrentPosition()', 'correct': false}
    ]
  },
  {
    'question':
        "Which of the following attribute triggers events when the document has changed?",
    'options': [
      {'option': 'onhaschange', 'correct': true},
      {'option': 'onchange', 'correct': false},
      {'option': 'ischanged', 'correct': false},
      {'option': 'inputchange', 'correct': false}
    ]
  },
  {
    'question': "Why iframe is used?",
    'options': [
      {'option': 'To display web page within a web page', 'correct': true},
      {'option': 'To display animation within a web page', 'correct': false},
      {'option': 'To display web page without browser', 'correct': false},
      {'option': 'All', 'correct': false},
      {'option': 'None', 'correct': false}
    ]
  },
  {
    'question':
        "Which of the following attribute specifies if the user can edit the element's content or not?",
    'options': [
      {'option': 'contenteditable', 'correct': true},
      {'option': 'content', 'correct': false},
      {'option': 'editable', 'correct': false},
      {'option': 'contextmenu', 'correct': false}
    ]
  },
  {
    'question':
        "Which of the following attribute triggers events before the document is printed?",
    'options': [
      {'option': 'onbeforeprint', 'correct': true},
      {'option': 'beforeprint', 'correct': false},
      {'option': 'onprint', 'correct': false},
      {'option': 'onafterprint', 'correct': false}
    ]
  },
];
