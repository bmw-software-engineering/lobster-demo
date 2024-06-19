# LOBSTER Demo Example

A lobster config file (by default `lobster.conf`) declares the tracing
policy. The syntax is fairly simple and best explained by example.
 
 
## Configuration:
* A lobster config file `lobster.config`
In lobster.config file declaration might look like this:
```
requirements "Requirements"{
 source: "trlc.lobster";
}
```

### Attributes:

* Source:  
The source attribute assigns `trlc.lobster`, `python.lobster` file.

* trace to:
The trace to attribute declares the trace to: "Requirements"; This declares that the items in this level are expected to be linked to items from report.

```
implementation "code" {
  source: "python.lobster";
  trace to: "Requirements";
}
```

### Levels:

The core feature is an item level, and there are three kinds:

* requirements (for things like trlc, codebeamer, systemweaver, doors, ...)
* implementation (for things like code or models)
* activity (for things like tests, proofs, argumentation, ...)

````
requirements "Requirements"{
 source: "trlc.lobster";
}

implementation "code" {
  source: "python.lobster";
  trace to: "Requirements";
}
````


##  Tracing .html File Generation

In order to generate the `tracing.html` file we need to execute below scripts in sequential order

* 1. In our vanilla example we used trlc requirement, python implementation, cpp implementation and codebeamer. For that we need to generate .lobster file. 
For example: `trlc.lobster`, `python.lobser`, `cpp.lobster`, `codebeamer.lobser`

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
```lobser-codebeamer . --out=codebeamer.lobster```
This is the link for lobster-tool-codebeamer -
[Our lobster repository package - lobster-tool-codebeamer](https://github.com/bmw-software-engineering/lobster/tree/main/packages/lobster-tool-codebeamer#readme)
1. Annotations for codebeamer - lobster-trace is present outside the function body.

* 2. After generating the .lobster file next step is to generate the `report.lobster` file, which has all the information about the requirement, implementation, activity.

```lobster-report --lobster-config="lobster.config" --out="report.lobster"```

* 3. Once the `report.lobster` is generated then next step is to generate the `tracing.html` file and any user can easily read that file and can find the traces in the file.

```lobster-html-report report.lobster --out="tracing.html"```







