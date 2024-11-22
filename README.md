# LOBSTER Demo Example

This repository contains a working simple example of what it can be done using the lobster tool to demonstrate software traceability and requirements coverage. Please consider reading first the [lobster documentation](https://github.com/bmw-software-engineering/lobster/blob/main/README.md), [configuration files](https://github.com/bmw-software-engineering/lobster/blob/main/documentation/config_files.md) and the [common interchange format](https://github.com/bmw-software-engineering/lobster/blob/main/documentation/schemas.md).

> ### 💡 Reminder
> To test this demo, do not forget to install the needed tools as explained in the [lobster repository](https://github.com/bmw-software-engineering/lobster/blob/main/README.md#installing)

## LOBSTER config file

A lobster config file (by default `lobster.conf`) declares the tracing policy. In simple words, how your artefact relates to the other and where is its source. The syntax is fairly simple and best explained by the following example step by step.

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
}

activity "Tests of source code"{
 source: "test_software.lobster";
}
```

### Level attributes explanation:

For the levels there are the attributes. More on this topic in the [lobster repository](https://github.com/bmw-software-engineering/lobster/blob/main/documentation/config_files.md)

* Source:  
The source attribute assigns eg. `trlc.lobster`as source file.

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
 trace to: "Several code requirements";
}

activity "Tests of source code"{
 source: "test_software.lobster";
 trace to: "Several code requirements";
}
```
##  Tracing .html File Generation

In order to generate the `tracing.html` file we need first to create the input files *.lobster and set up the tracing policy. This is achieved using the source codes, test source codes, requirements definitions with their traces and the several lobster convertion tools. This [diagram](https://github.com/bmw-software-engineering/lobster/blob/documentation/main/README.md#workflow-of-lobster) shows the complete workflow of lobster.

Execute the below commands in the root folder in sequential order. Otherwise use the target `tracing` from root folder if you use a Linux environment or use WSL.
For Windows users, please use the `tracing.bat` file.

* 1. In our vanilla example we used trlc as requirement, python implementation, python activity (tests), cpp implementation, gtest for cpptesting and codebeamer. For that we need to generate *.lobster files using the convertion tools. 
For example: `trlc.lobster`, `python.lobster`, `cpp.lobster`, `codebeamer.lobster`...

* `trlc`
```	lobster-trlc main.trlc main.rsl --config-file=lobster-trlc.conf	--out lobster_output_files/trlc.lobster```
This is the link for lobster-tool-trlc -
[Our lobster repository package - lobster-tool-trlc](https://github.com/bmw-software-engineering/lobster/tree/main/packages/lobster-tool-trlc#readme)
1. Annotations for trlc - lobster-trace is present inside the function body. 

* `python` implementations
```lobster-python ./source_code_python --out="./lobster_output_files/python_software.lobster"```
This is the link for lobster-tool-python -
[Our lobster repository package - lobster-tool-python](https://github.com/bmw-software-engineering/lobster/tree/main/packages/lobster-tool-python#readme)
1. Annotations for python - lobster-trace is present inside the function body.

* `python` tests
```lobster-python ./unittests_python --activity  --out="./lobster_output_files/python_tests.lobster"```
1. Annotations for python - lobster-trace is present inside the function body.

* `cpp` implementation
```lobster-cpp ./source_code_cpp --clang-tidy="../llvm-project/build/bin/clang-tidy" --out="./lobster_output_files/cpp_software.lobster"```
This is the link for lobster-tool-cpp -
[Our lobster repository package - lobster-tool-cpp](https://github.com/bmw-software-engineering/lobster/tree/main/packages/lobster-tool-cpp#readme)
1. Annotations for cpp - lobster-trace is present inside the function body.

* `gtest` for cpp tests
```lobster-gtest ./unittests_cpp --out="./lobster_output_files/gtests.lobster"```
This is the link for lobster-tool-cpp -
[Our lobster repository package - lobster-tool-cpp](https://github.com/bmw-software-engineering/lobster/tree/main/packages/lobster-tool-cpp#readme)
1. Annotations for cpp - lobster-trace is present inside the function body.

* `codebeamer`

No command is available since there is no public codebeamer instance that we can provide. That is why we provide a sample `codebeamer.lobster` file that was created from a real codebeamer instance and its API. Nonetheless the codebeamer requirements are considered in the lobster's tracing policy as a source.

This is the link for lobster-tool-codebeamer -
[Our lobster repository package - lobster-tool-codebeamer](https://github.com/bmw-software-engineering/lobster/tree/main/packages/lobster-tool-codebeamer#readme)
1. Annotations for codebeamer - lobster-trace is present outside the function body.

* 2. After generating the .lobster file next step is to generate the `report.lobster` file, which has all the information about the requirement, implementation, activity.

```lobster-report --lobster-config=lobster.conf --out="./lobster_output_files/report.lobster"```
```lobster-online-report "lobster_output_files/report.lobster"```

* 3. Once the `report.lobster` is generated then next step is to generate the `tracing.html` file and any user can easily read that file and can find the traces in the file.

```lobster-html-report ./lobster_output_files/report.lobster --out="tracing_example.html"```

or for your CI:

```lobster-ci-report ./lobster_output_files/report.lobster```

> ### 💡 Disclamer
> This demo was created using lobster version `0.9.19` and TRLC version `2.0.0`

> ### 💡 Note
> all the *.lobster files in this repository can be generated with our tools. For learning and comparison process they will be uploaded too. The same applies for the `tracing_example.html` file.
