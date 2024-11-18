# LOBSTER Demo Example

This repository contains a working simple example of what it can be done using the lobster tool to demonstrate software traceability
and requirements coverage. Please consider reading the [lobster documentation](https://github.com/bmw-software-engineering/lobster/blob/documentation/improve_documentation/README.md), [configuration files](https://github.com/bmw-software-engineering/lobster/blob/documentation/improve_documentation/documentation/config_files.md) and the [common interchange format](https://github.com/bmw-software-engineering/lobster/blob/documentation/improve_documentation/documentation/schemas.md).

> ### 💡 Reminder
> To test this demo, do not forget to install the needed tools as explained in the [lobster repository](https://github.com/bmw-software-engineering/lobster/blob/documentation/improve_documentation/README.md#installing)

## LOBSTER config file

A lobster config file (by default `lobster.conf`) declares the tracing policy. The syntax is fairly simple and best explained by the following example step by step.

## Configuration & levels:

The core feature is an item level, and there are three kinds:

* requirements (for things like trlc, codebeamer, systemweaver, doors, ...)
* implementation (for things like code or models)
* activity (for things like tests, proofs, argumentation, ...)

In the `lobster.conf` file the declaration of the three levels might look like this:

```
requirements "Several code requirements"{
 source: "trlc.lobster";
 source: "codebeamer.lobster";
}

implementation "Source code"{
 source: "software.lobster";
 source: "software2.lobster";
}

activity "Tests of source code"{
 source: "test_software.lobster";
 source: "test_software2.lobster";
}
```

### Level attributes explanation:

For the levels there are the attributes. More on this topic in the [lobster repository](https://github.com/bmw-software-engineering/lobster/blob/documentation/improve_documentation/documentation/config_files.md)

* Source:  
The source attribute assigns `trlc.lobster`, `python.lobster`, `python2.lobster` and `python_tests.lobster` as source files.

* trace to:
The trace to attribute declares the trace to: "Several code requirements" level; This declares that the items in this level are expected to be linked to items from report.

* requires:
Possible ways to verify a requirement.

```
requirements "Several code requirements"{
 source: "trlc.lobster";
 source: "codebeamer.lobster";
 requires: "Tests of source code";
}

implementation "Source code"{
 source: "software.lobster";
 source: "software2.lobster";
 trace to: "Several code requirements";
}

activity "Tests of source code"{
 source: "test_software.lobster";
 source: "test_software2.lobster";
 trace to: "Several code requirements";
}
```
##  Tracing .html File Generation

In order to generate the `tracing.html` file we need first to create the input files *.lobster. This is achieved using the source codes with their traces and the several lobster tools. This [diagram](https://github.com/bmw-software-engineering/lobster/blob/documentation/improve_documentation/README.md#workflow-of-lobster) shows the complete workflow of lobster.

Execute below scripts in sequential order

* 1. In our vanilla example we used trlc requirement, python implementation, cpp implementation and codebeamer. For that we need to generate .lobster file. 
For example: `trlc.lobster`, `python.lobster`, `cpp.lobster`, `codebeamer.lobster`...

* `trlc`
```lobster-trlc . --config-file="lobster-trlc.conf" --out="trlc.lobster"```
This is the link for lobster-tool-trlc -
[Our lobster repository package - lobster-tool-trlc](https://github.com/bmw-software-engineering/lobster/tree/main/packages/lobster-tool-trlc#readme)
1. Annotations for trlc - lobster-trace is present inside the function body. 

* `python`
```lobster-python .  --out="python.lobster"```
This is the link for lobster-tool-python -
[Our lobster repository package - lobster-tool-python](https://github.com/bmw-software-engineering/lobster/tree/main/packages/lobster-tool-python#readme)
1. Annotations for python - lobster-trace is present inside the function body.

* `cpp`
```lobster-cpp . --clang-tidy="../llvm-project/build/bin/clang-tidy" --out="cpp.lobster"```
This is the link for lobster-tool-cpp -
[Our lobster repository package - lobster-tool-cpp](https://github.com/bmw-software-engineering/lobster/tree/main/packages/lobster-tool-cpp#readme)
1. Annotations for cpp - lobster-trace is present inside the function body.

* `codebeamer`
```lobster-codebeamer . --out=codebeamer.lobster```
This is the link for lobster-tool-codebeamer -
[Our lobster repository package - lobster-tool-codebeamer](https://github.com/bmw-software-engineering/lobster/tree/main/packages/lobster-tool-codebeamer#readme)
1. Annotations for codebeamer - lobster-trace is present outside the function body.

* 2. After generating the .lobster file next step is to generate the `report.lobster` file, which has all the information about the requirement, implementation, activity.

```lobster-report --lobster-config="lobster.config" --out="report.lobster"```

* 3. Once the `report.lobster` is generated then next step is to generate the `tracing.html` file and any user can easily read that file and can find the traces in the file.

```lobster-html-report report.lobster --out="tracing.html"```

###  Clang-tidy File Generation

* To generate the clang-tidy file, which is needed for the cpp tool, make sure that your apt is working well on WSL (Windows Subsystem for Linux) or use a Linux environment.

* Clone this repository - `https://github.com/bmw-software-engineering/llvm-project`

* Below 2 dependencies required for clang-tidy creation.
  1. `sudo apt install cmake`
  2. `sudo apt install ninja-build`

* Below 2 commands need to execute to generate the build folder.
  1. `cmake -S llvm -B build -G Ninja -DLLVM_ENABLE_PROJECTS='clang;clang-tools-extra' -DCMAKE_BUILD_TYPE=Release`
  2. `cmake --build build`

* Once you generate the build folder you can see the clang-tidy file in `./build/bin` folder.

* To generate the cpp.lobster file, you need to make sure that your llvm-project and lobster-demo project should be in same directory.
