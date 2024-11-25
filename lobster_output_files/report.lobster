{
  "schema": "lobster-report",
  "version": 2,
  "generator": "lobster_report",
  "levels": [
    {
      "name": "System requirements",
      "kind": "requirements",
      "items": [
        {
          "tag": "req 17044",
          "location": {
            "kind": "codebeamer",
            "cb_root": "https://codebeamer.company.net/",
            "tracker": 65426,
            "item": 17044,
            "version": 26,
            "name": "traffic light detection"
          },
          "name": "traffic light detection",
          "messages": [],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "ref_up": [],
          "ref_down": [
            "req vanillaEg.value_int"
          ],
          "tracing_status": "OK",
          "framework": "codebeamer",
          "kind": "Technical Requirement",
          "text": null,
          "status": "Valid"
        },
        {
          "tag": "req 17045",
          "location": {
            "kind": "codebeamer",
            "cb_root": "https://codebeamer.company.net/",
            "tracker": 65426,
            "item": 17045,
            "version": 26,
            "name": "traffic light detection"
          },
          "name": "traffic light detection",
          "messages": [
            "status is Not Valid, expected Approved or Valid",
            "missing reference to Software requirements"
          ],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "tracing_status": "MISSING",
          "framework": "codebeamer",
          "kind": "Technical Requirement",
          "text": null,
          "status": "Not Valid"
        },
        {
          "tag": "req 17046",
          "location": {
            "kind": "codebeamer",
            "cb_root": "https://codebeamer.company.net/",
            "tracker": 65426,
            "item": 17046,
            "version": 26,
            "name": "traffic light detection"
          },
          "name": "traffic light detection",
          "messages": [
            "missing reference to Software requirements"
          ],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "tracing_status": "MISSING",
          "framework": "codebeamer",
          "kind": "Technical Requirement",
          "text": null,
          "status": "Valid"
        }
      ],
      "coverage": 33.333333333333336
    },
    {
      "name": "Software requirements",
      "kind": "requirements",
      "items": [
        {
          "tag": "req vanillaEg.make_sum",
          "location": {
            "kind": "github",
            "gh_root": "https://github.com/bmw-software-engineering/lobster-demo",
            "commit": "main",
            "file": "main.trlc",
            "line": 3
          },
          "name": "vanillaEg.make_sum",
          "messages": [
            "missing up reference"
          ],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "ref_up": [],
          "ref_down": [
            "python python_software.sum",
            "pyunit test_python_software.TestSoftware.test_sum:5",
            "cpp cpp_software.cpp:sum:3"
          ],
          "tracing_status": "PARTIAL",
          "framework": "TRLC",
          "kind": "Requirement",
          "text": "Some requirements text, eg. this function must do a sum",
          "status": null
        },
        {
          "tag": "req vanillaEg.value_int",
          "location": {
            "kind": "github",
            "gh_root": "https://github.com/bmw-software-engineering/lobster-demo",
            "commit": "main",
            "file": "main.trlc",
            "line": 7
          },
          "name": "vanillaEg.value_int",
          "messages": [
            "missing reference to Cpp Source code or Python Source code"
          ],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "ref_up": [
            "req 17044"
          ],
          "ref_down": [],
          "tracing_status": "PARTIAL",
          "framework": "TRLC",
          "kind": "OutputRequirement",
          "text": "desc: Return value from function must return an integer value",
          "status": null
        },
        {
          "tag": "req vanillaEg.value_decimal",
          "location": {
            "kind": "github",
            "gh_root": "https://github.com/bmw-software-engineering/lobster-demo",
            "commit": "main",
            "file": "main.trlc",
            "line": 12
          },
          "name": "vanillaEg.value_decimal",
          "messages": [
            "missing up reference",
            "missing reference to Cpp Source code or Python Source code"
          ],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "tracing_status": "MISSING",
          "framework": "TRLC",
          "kind": "OutputRequirement",
          "text": "desc: Return value from function must return a decimal value\n\nmore_description: Minimum two decimal places",
          "status": null
        }
      ],
      "coverage": 0.0
    },
    {
      "name": "Python Source code",
      "kind": "implementation",
      "items": [
        {
          "tag": "python python_software2.intValue",
          "location": {
            "kind": "github",
            "gh_root": "https://github.com/bmw-software-engineering/lobster-demo",
            "commit": "main",
            "file": "source_code_python/python_software2.py",
            "line": 1
          },
          "name": "python_software2.intValue",
          "messages": [
            "unknown tracing target req vanillaEg.output_value_int",
            "missing up reference",
            "missing reference to Tests of python source code"
          ],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "tracing_status": "MISSING",
          "language": "Python",
          "kind": "Function"
        },
        {
          "tag": "python python_software2.decValue",
          "location": {
            "kind": "github",
            "gh_root": "https://github.com/bmw-software-engineering/lobster-demo",
            "commit": "main",
            "file": "source_code_python/python_software2.py",
            "line": 5
          },
          "name": "python_software2.decValue",
          "messages": [
            "unknown tracing target req vanillaEg.output_value_decimal",
            "missing up reference",
            "missing reference to Tests of python source code"
          ],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "tracing_status": "MISSING",
          "language": "Python",
          "kind": "Function"
        },
        {
          "tag": "python python_software.sum",
          "location": {
            "kind": "github",
            "gh_root": "https://github.com/bmw-software-engineering/lobster-demo",
            "commit": "main",
            "file": "source_code_python/python_software.py",
            "line": 1
          },
          "name": "python_software.sum",
          "messages": [
            "missing reference to Tests of python source code"
          ],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "ref_up": [
            "req vanillaEg.make_sum"
          ],
          "ref_down": [],
          "tracing_status": "PARTIAL",
          "language": "Python",
          "kind": "Function"
        },
        {
          "tag": "python python_software.notTracedFunction",
          "location": {
            "kind": "github",
            "gh_root": "https://github.com/bmw-software-engineering/lobster-demo",
            "commit": "main",
            "file": "source_code_python/python_software.py",
            "line": 5
          },
          "name": "python_software.notTracedFunction",
          "messages": [
            "missing up reference",
            "missing reference to Tests of python source code"
          ],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "tracing_status": "MISSING",
          "language": "Python",
          "kind": "Function"
        }
      ],
      "coverage": 0.0
    },
    {
      "name": "Tests of python source code",
      "kind": "activity",
      "items": [
        {
          "tag": "pyunit test_python_software.TestSoftware.test_sum:5",
          "location": {
            "kind": "github",
            "gh_root": "https://github.com/bmw-software-engineering/lobster-demo",
            "commit": "main",
            "file": "unittests_python/test_python_software.py",
            "line": 5
          },
          "name": "test_python_software.TestSoftware.test_sum:5",
          "messages": [],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "ref_up": [
            "req vanillaEg.make_sum"
          ],
          "ref_down": [],
          "tracing_status": "OK",
          "framework": "PyUnit",
          "kind": "Test",
          "status": null
        },
        {
          "tag": "pyunit test_python_software.TestSoftware.test_not_traced_function:9",
          "location": {
            "kind": "github",
            "gh_root": "https://github.com/bmw-software-engineering/lobster-demo",
            "commit": "main",
            "file": "unittests_python/test_python_software.py",
            "line": 9
          },
          "name": "test_python_software.TestSoftware.test_not_traced_function:9",
          "messages": [
            "missing up reference"
          ],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "tracing_status": "MISSING",
          "framework": "PyUnit",
          "kind": "Test",
          "status": null
        },
        {
          "tag": "pyunit test_python_software2.TestSoftware2.test_int_value:5",
          "location": {
            "kind": "github",
            "gh_root": "https://github.com/bmw-software-engineering/lobster-demo",
            "commit": "main",
            "file": "unittests_python/test_python_software2.py",
            "line": 5
          },
          "name": "test_python_software2.TestSoftware2.test_int_value:5",
          "messages": [
            "unknown tracing target req vanillaEg.output_value_int",
            "missing up reference"
          ],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "tracing_status": "MISSING",
          "framework": "PyUnit",
          "kind": "Test",
          "status": null
        },
        {
          "tag": "pyunit test_python_software2.TestSoftware2.test_dec_value:9",
          "location": {
            "kind": "github",
            "gh_root": "https://github.com/bmw-software-engineering/lobster-demo",
            "commit": "main",
            "file": "unittests_python/test_python_software2.py",
            "line": 9
          },
          "name": "test_python_software2.TestSoftware2.test_dec_value:9",
          "messages": [
            "unknown tracing target req vanillaEg.output_value_decimal",
            "missing up reference"
          ],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "tracing_status": "MISSING",
          "framework": "PyUnit",
          "kind": "Test",
          "status": null
        }
      ],
      "coverage": 25.0
    },
    {
      "name": "Cpp Source code",
      "kind": "implementation",
      "items": [
        {
          "tag": "cpp cpp_software.cpp:sum:3",
          "location": {
            "kind": "github",
            "gh_root": "https://github.com/bmw-software-engineering/lobster-demo",
            "commit": "main",
            "file": "source_code_cpp/cpp_software.cpp",
            "line": 3
          },
          "name": "sum",
          "messages": [
            "missing reference to Tests of Cpp source code"
          ],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "ref_up": [
            "req vanillaEg.make_sum"
          ],
          "ref_down": [],
          "tracing_status": "PARTIAL",
          "language": "C/C++",
          "kind": "function"
        },
        {
          "tag": "cpp cpp_software.cpp:notTracedFunction:9",
          "location": {
            "kind": "github",
            "gh_root": "https://github.com/bmw-software-engineering/lobster-demo",
            "commit": "main",
            "file": "source_code_cpp/cpp_software.cpp",
            "line": 9
          },
          "name": "notTracedFunction",
          "messages": [
            "missing up reference",
            "missing reference to Tests of Cpp source code"
          ],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "tracing_status": "MISSING",
          "language": "C/C++",
          "kind": "function"
        },
        {
          "tag": "cpp cpp_software2.cpp:intValue:1",
          "location": {
            "kind": "github",
            "gh_root": "https://github.com/bmw-software-engineering/lobster-demo",
            "commit": "main",
            "file": "source_code_cpp/cpp_software2.cpp",
            "line": 1
          },
          "name": "intValue",
          "messages": [
            "unknown tracing target req vanillaEg.output_value_int",
            "missing up reference",
            "missing reference to Tests of Cpp source code"
          ],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "tracing_status": "MISSING",
          "language": "C/C++",
          "kind": "function"
        },
        {
          "tag": "cpp cpp_software2.cpp:decValue:6",
          "location": {
            "kind": "github",
            "gh_root": "https://github.com/bmw-software-engineering/lobster-demo",
            "commit": "main",
            "file": "source_code_cpp/cpp_software2.cpp",
            "line": 6
          },
          "name": "decValue",
          "messages": [
            "unknown tracing target req vanillaEg.output_value_decimal",
            "missing up reference",
            "missing reference to Tests of Cpp source code"
          ],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "tracing_status": "MISSING",
          "language": "C/C++",
          "kind": "function"
        }
      ],
      "coverage": 0.0
    },
    {
      "name": "Tests of Cpp source code",
      "kind": "activity",
      "items": [],
      "coverage": 100.0
    }
  ],
  "policy": {
    "System requirements": {
      "name": "System requirements",
      "kind": "requirements",
      "traces": [],
      "source": [
        {
          "file": "codebeamer/codebeamer.lobster",
          "filters": [],
          "valid_status": [
            "Valid",
            "Approved"
          ]
        }
      ],
      "needs_tracing_up": false,
      "needs_tracing_down": true,
      "breakdown_requirements": [
        [
          "Software requirements"
        ]
      ]
    },
    "Software requirements": {
      "name": "Software requirements",
      "kind": "requirements",
      "traces": [
        "System requirements"
      ],
      "source": [
        {
          "file": "lobster_output_files/trlc.lobster",
          "filters": [],
          "valid_status": []
        }
      ],
      "needs_tracing_up": true,
      "needs_tracing_down": true,
      "breakdown_requirements": [
        [
          "Python Source code",
          "Cpp Source code"
        ]
      ]
    },
    "Python Source code": {
      "name": "Python Source code",
      "kind": "implementation",
      "traces": [
        "Software requirements"
      ],
      "source": [
        {
          "file": "lobster_output_files/python_software.lobster",
          "filters": []
        }
      ],
      "needs_tracing_up": true,
      "needs_tracing_down": true,
      "breakdown_requirements": [
        [
          "Tests of python source code"
        ]
      ]
    },
    "Tests of python source code": {
      "name": "Tests of python source code",
      "kind": "activity",
      "traces": [
        "Python Source code"
      ],
      "source": [
        {
          "file": "lobster_output_files/python_tests.lobster",
          "filters": []
        }
      ],
      "needs_tracing_up": true,
      "needs_tracing_down": false,
      "breakdown_requirements": []
    },
    "Cpp Source code": {
      "name": "Cpp Source code",
      "kind": "implementation",
      "traces": [
        "Software requirements"
      ],
      "source": [
        {
          "file": "lobster_output_files/cpp_software.lobster",
          "filters": []
        }
      ],
      "needs_tracing_up": true,
      "needs_tracing_down": true,
      "breakdown_requirements": [
        [
          "Tests of Cpp source code"
        ]
      ]
    },
    "Tests of Cpp source code": {
      "name": "Tests of Cpp source code",
      "kind": "activity",
      "traces": [
        "Cpp Source code"
      ],
      "source": [
        {
          "file": "lobster_output_files/gtests.lobster",
          "filters": []
        }
      ],
      "needs_tracing_up": true,
      "needs_tracing_down": false,
      "breakdown_requirements": []
    }
  },
  "matrix": []
}