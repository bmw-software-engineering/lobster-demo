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
            "missing reference to code"
          ],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "tracing_status": "MISSING",
          "framework": "TRLC",
          "kind": "Requirement",
          "text": "Treat Requirements Like Code",
          "status": null
        },
        {
          "tag": "req vanillaEg.lobster",
          "location": {
            "kind": "file",
            "file": "./main.trlc",
            "line": 7,
            "column": 13
          },
          "name": "vanillaEg.lobster",
          "messages": [
            "missing reference to code"
          ],
          "just_up": [],
          "just_down": [],
          "just_global": [],
          "tracing_status": "MISSING",
          "framework": "TRLC",
          "kind": "Requirement",
          "text": "Lightweight Open BMW Software Traceability Evidence Report",
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
            "missing reference to code"
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
      "coverage": 0.0
    },
    {
      "name": "code",
      "kind": "implementation",
      "items": [
        {
          "tag": "python software.hello",
          "location": {
            "kind": "file",
            "file": "./software.py",
            "line": 1,
            "column": null
          },
          "name": "software.hello",
          "messages": [
            "missing up reference"
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
    }
  },
  "matrix": []
}