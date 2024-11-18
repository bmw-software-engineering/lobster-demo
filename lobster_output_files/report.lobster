{
  "schema": "lobster-report",
  "version": 2,
  "generator": "lobster_report",
  "levels": [
    {
      "name": "Requirements",
      "kind": "requirements",
      "items": [
        {
          "tag": "req vanillaEg.trlc",
          "location": {
            "kind": "file",
            "file": "./main.trlc",
            "line": 3,
            "column": 13
          },
          "name": "vanillaEg.trlc",
          "messages": [
            "missing reference to code",
            "missing reference to unittests"
          ],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "tracing_status": "MISSING",
          "framework": "TRLC",
          "kind": "Requirement",
          "text": "Some requirements text for type trlc, eg. this function must do X Y",
          "status": null
        },
        {
          "tag": "req vanillaEg.OutputValue",
          "location": {
            "kind": "file",
            "file": "./main.trlc",
            "line": 7,
            "column": 13
          },
          "name": "vanillaEg.OutputValue",
          "messages": [],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "ref_up": [],
          "ref_down": [
            "python software.intValue",
            "pyunit unittests.TestIntValue.test_return_value"
          ],
          "tracing_status": "OK",
          "framework": "TRLC",
          "kind": "Requirement",
          "text": "Return value from function must return an integer value",
          "status": null
        },
        {
          "tag": "req 17044@26",
          "location": {
            "kind": "codebeamer",
            "cb_root": "https://codebeamer.company.net/",
            "tracker": 65426,
            "item": 17044,
            "version": 26,
            "name": "traffic light detection"
          },
          "name": "traffic light detection",
          "messages": [
            "missing reference to code",
            "missing reference to unittests"
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
      "name": "code",
      "kind": "implementation",
      "items": [
        {
          "tag": "python software.hello",
          "location": {
            "kind": "file",
            "file": "software.py",
            "line": 1,
            "column": null
          },
          "name": "software.hello",
          "messages": [
            "unknown tracing target req SomeIdentifier",
            "missing up reference"
          ],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "tracing_status": "MISSING",
          "language": "Python",
          "kind": "Function"
        },
        {
          "tag": "python software.intValue",
          "location": {
            "kind": "file",
            "file": "software.py",
            "line": 5,
            "column": null
          },
          "name": "software.intValue",
          "messages": [],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "ref_up": [
            "req vanillaEg.OutputValue"
          ],
          "ref_down": [],
          "tracing_status": "OK",
          "language": "Python",
          "kind": "Function"
        }
      ],
      "coverage": 50.0
    },
    {
      "name": "unittests",
      "kind": "activity",
      "items": [
        {
          "tag": "pyunit unittests.TestIntValue.test_return_value",
          "location": {
            "kind": "file",
            "file": "./unittests.py",
            "line": 5,
            "column": null
          },
          "name": "unittests.TestIntValue.test_return_value",
          "messages": [],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "ref_up": [
            "req vanillaEg.OutputValue"
          ],
          "ref_down": [],
          "tracing_status": "OK",
          "framework": "PyUnit",
          "kind": "Test",
          "status": null
        },
        {
          "tag": "pyunit unittests.TestIntValue.test_return_value2",
          "location": {
            "kind": "file",
            "file": "./unittests.py",
            "line": 10,
            "column": null
          },
          "name": "unittests.TestIntValue.test_return_value2",
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
        }
      ],
      "coverage": 50.0
    }
  ],
  "policy": {
    "Requirements": {
      "name": "Requirements",
      "kind": "requirements",
      "traces": [],
      "source": [
        {
          "file": "trlc.lobster",
          "filters": [],
          "valid_status": []
        },
        {
          "file": "codebeamer.lobster",
          "filters": [],
          "valid_status": []
        }
      ],
      "needs_tracing_up": false,
      "needs_tracing_down": true,
      "breakdown_requirements": [
        [
          "code"
        ],
        [
          "unittests"
        ]
      ]
    },
    "code": {
      "name": "code",
      "kind": "implementation",
      "traces": [
        "Requirements"
      ],
      "source": [
        {
          "file": "python.lobster",
          "filters": []
        }
      ],
      "needs_tracing_up": true,
      "needs_tracing_down": false,
      "breakdown_requirements": []
    },
    "unittests": {
      "name": "unittests",
      "kind": "activity",
      "traces": [
        "Requirements"
      ],
      "source": [
        {
          "file": "unittests.lobster",
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