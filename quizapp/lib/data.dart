import 'package:flutter/material.dart';

List<Map<String,dynamic>> datamodel = [
  {
    "name": "Sport Test",
    "color": Colors.blue,
    "data": [
      {
        "questions": "how many players in a football team?",
        "answers": [
          {"ans": "11", "score": 1},
          {"ans": "10", "score": 0},
          {"ans": "9", "score": 0},
          {"ans": "8", "score": 0}
        ],
      },
      {
        "questions": "how many players in a cricket team?",
        "answers": [
          {"ans": "11", "score": 1},
          {"ans": "10", "score": 0},
          {"ans": "9", "score": 0},
          {"ans": "8", "score": 0}
        ],
      },
      {
        "questions": "how many players in a hockey team?",
        "answers": [
          {"ans": "11", "score": 1},
          {"ans": "10", "score": 0},
          {"ans": "9", "score": 0},
          {"ans": "8", "score": 0}
        ],
      },
      {
        "questions": "how many players in a basketball team?",
        "answers": [
          {"ans": "5", "score": 1},
          {"ans": "10", "score": 0},
          {"ans": "9", "score": 0},
          {"ans": "8", "score": 0}
        ],
      },
      {
        "questions": "how many players in a volleyball team?",
        "answers": [
          {"ans": "6", "score": 1},
          {"ans": "10", "score": 0},
          {"ans": "9", "score": 0},
          {"ans": "8", "score": 0}
        ],
      },
    ],
  },
  {
    "name": "History Test",
    "color": Colors.red,
    "data": [
      {
        "questions": "who is the first finance minister of india?",
        "answers": [
          {"ans": "R. K. Shanmukham Chetty", "score": 1},
          {"ans": "Maulana Abul Kalam Azad", "score": 0},
          {"ans": "Sardar Vallabhbhai Patel", "score": 0},
          {"ans": "Jawaharlal Nehru", "score": 0}
        ],
      },
      {
        "questions": "who is the first railway minister of india?",
        "answers": [
          {"ans": "John Mathai", "score": 1},
          {"ans": "R. K. Shanmukham Chetty", "score": 0},
          {"ans": "Maulana Abul Kalam Azad", "score": 0},
          {"ans": "Sardar Vallabhbhai Patel", "score": 0}
        ],
      },
      {
        "questions": "who is the first law minister of india?",
        "answers": [
          {"ans": "B. R. Ambedkar", "score": 1},
          {"ans": "John Mathai", "score": 0},
          {"ans": "R. K. Shanmukham Chetty", "score": 0},
          {"ans": "Maulana Abul Kalam Azad", "score": 0}
        ],
      },
      {
        "questions": "who is the first agriculture minister of egypt?",
        "answers": [
          {"ans": "Mohamed Salah el-Din", "score": 1},
          {"ans": "Mohamed Ali Pasha", "score": 0},
          {"ans": "B. R. Ambedkar", "score": 0},
          {"ans": "John Mathai", "score": 0}
        ],
      },
      {
        "questions": "who is the first health minister of egypt?",
        "answers": [
          {"ans": "Mohamed Ali Pasha", "score": 1},
          {"ans": "Mohamed Salah el-Din", "score": 0},
          {"ans": "B. R. Ambedkar", "score": 0},
          {"ans": "John Mathai", "score": 0}
        ],
      }
    ],
  },
  {
    "name": "General Test",
    "color": Colors.yellow,
    "data": [
      {
        "questions": "what is the capital of maharashtra?",
        "answers": [
          {"ans": "Mumbai", "score": 1},
          {"ans": "Pune", "score": 0},
          {"ans": "Nagpur", "score": 0},
          {"ans": "Nashik", "score": 0}
        ],
      },
      {
        "questions": "what is the capital of gujarat?",
        "answers": [
          {"ans": "Gandhinagar", "score": 1},
          {"ans": "Ahmedabad", "score": 0},
          {"ans": "Surat", "score": 0},
          {"ans": "Vadodara", "score": 0}
        ]
      },
      {
        "questions": "what is the capital of rajasthan?",
        "answers": [
          {"ans": "Jaipur", "score": 1},
          {"ans": "Jodhpur", "score": 0},
          {"ans": "Udaipur", "score": 0},
          {"ans": "Kota", "score": 0}
        ]
      },
      {
        "questions": "what is the capital of karnataka?",
        "answers": [
          {"ans": "Bengaluru", "score": 1},
          {"ans": "Mysuru", "score": 0},
          {"ans": "Hubli", "score": 0},
          {"ans": "Mangalore", "score": 0}
        ]
      },
      {
        "questions": "what is the capital of tamil nadu?",
        "answers": [
          {"ans": "Chennai", "score": 1},
          {"ans": "Coimbatore", "score": 0},
          {"ans": "Madurai", "score": 0},
          {"ans": "Tiruchirappalli", "score": 0}
        ]
      }
    ]
  },
  {
    "name": "Science Test",
    "color": Colors.green,
    "data": [
      {
        "questions": "what is the chemical formula of water?",
        "answers": [
          {"ans": "H2O", "score": 1},
          {"ans": "H2O2", "score": 0},
          {"ans": "H2O3", "score": 0},
          {"ans": "H2O4", "score": 0}
        ],
      },
      {
        "questions": "what is the chemical formula of carbon dioxide?",
        "answers": [
          {"ans": "CO2", "score": 1},
          {"ans": "CO3", "score": 0},
          {"ans": "CO4", "score": 0},
          {"ans": "CO5", "score": 0}
        ],
      },
      {
        "questions": "what is the chemical formula of carbon monoxide?",
        "answers": [
          {"ans": "CO", "score": 1},
          {"ans": "CO2", "score": 0},
          {"ans": "CO3", "score": 0},
          {"ans": "CO4", "score": 0}
        ],
      },
      {
        "questions": "what is the chemical formula of methane?",
        "answers": [
          {"ans": "CH4", "score": 1},
          {"ans": "CH3", "score": 0},
          {"ans": "CH2", "score": 0},
          {"ans": "CH", "score": 0}
        ],
      },
      {
        "questions": "what is the chemical formula of ethane?",
        "answers": [
          {"ans": "C2H6", "score": 1},
          {"ans": "C2H5", "score": 0},
          {"ans": "C2H4", "score": 0},
          {"ans": "C2H3", "score": 0}
        ],
      },
    ]
  },
  {
    "name": "Math Test",
    "color": Colors.purple,
    "data": [
      {
        "questions": "what is the value of pi?",
        "answers": [
          {"ans": "3.14", "score": 1},
          {"ans": "3.15", "score": 0},
          {"ans": "3.16", "score": 0},
          {"ans": "3.17", "score": 0}
        ],
      },
      {
        "questions": "what is the value of e?",
        "answers": [
          {"ans": "2.718", "score": 1},
          {"ans": "2.719", "score": 0},
          {"ans": "2.720", "score": 0},
          {"ans": "2.721", "score": 0}
        ],
      },
      {
        "questions": "what is the value of phi?",
        "answers": [
          {"ans": "1.618", "score": 1},
          {"ans": "1.619", "score": 0},
          {"ans": "1.620", "score": 0},
          {"ans": "1.621", "score": 0}
        ],
      },
      {
        "questions": "what is the value of gamma?",
        "answers": [
          {"ans": "0.577", "score": 1},
          {"ans": "0.578", "score": 0},
          {"ans": "0.579", "score": 0},
          {"ans": "0.580", "score": 0}
        ],
      },
      {
        "questions": "what is the value of omega?",
        "answers": [
          {"ans": "0.567", "score": 1},
          {"ans": "0.568", "score": 0},
          {"ans": "0.569", "score": 0},
          {"ans": "0.570", "score": 0}
        ],
      }
    ]
  },
  {
    "name": "IQ Test",
    "color": Colors.orange,
    "data": [
      {
        "questions": "what is the value of 2+2?",
        "answers": [
          {"ans": "4", "score": 1},
          {"ans": "5", "score": 0},
          {"ans": "6", "score": 0},
          {"ans": "7", "score": 0},
        ]
      },
      {
        "questions": "what is the value of 3+3?",
        "answers": [
          {"ans": "6", "score": 1},
          {"ans": "7", "score": 0},
          {"ans": "8", "score": 0},
          {"ans": "9", "score": 0}
        ]
      },
      {
        "questions": "what is the value of 4+4?",
        "answers": [
          {"ans": "8", "score": 1},
          {"ans": "9", "score": 0},
          {"ans": "10", "score": 0},
          {"ans": "11", "score": 0}
        ]
      },
      {
        "questions": "what is the value of 5+5?",
        "answers": [
          {"ans": "10", "score": 1},
          {"ans": "11", "score": 0},
          {"ans": "12", "score": 0},
          {"ans": "13", "score": 0}
        ]
      },
      {
        "questions": "what is the value of 6+6?",
        "answers": [
          {"ans": "12", "score": 1},
          {"ans": "13", "score": 0},
          {"ans": "14", "score": 0},
          {"ans": "15", "score": 0}
        ]
      }
    ]
  }
];

TextEditingController usernamecontroller = TextEditingController();
