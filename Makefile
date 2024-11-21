export LOBSTER_ROOT=$(PWD)
export PATH:=$(LOBSTER_ROOT):$(PATH)

.PHONY: tracing report.lobster requirements.lobster code.lobster unit-tests.lobster

tracing: report.lobster
	lobster-html-report ./lobster_output_files/report.lobster --out="tracing_example.html"
	lobster-ci-report ./lobster_output_files/report.lobster

report.lobster:	lobster.conf \
				code.lobster \
				unit-tests.lobster \
				requirements.lobster
	lobster-report --lobster-config=lobster.conf --out="./lobster_output_files/report.lobster"
	lobster-online-report "lobster_output_files/report.lobster"

requirements.lobster: main.rsl main.trlc
	lobster-trlc main.trlc main.rsl \
	--config-file=lobster-trlc.conf \
	--out lobster_output_files/trlc.lobster

code.lobster:
	lobster-python ./source_code_python --out="./lobster_output_files/python_software.lobster"
	lobster-cpp ./source_code_cpp --clang-tidy="../llvm-project/build/bin/clang-tidy" --out="./lobster_output_files/cpp_software.lobster"

unit-tests.lobster:
	lobster-python ./unittests_python --activity  --out="./lobster_output_files/python_tests.lobster"
	lobster-gtest ./unittests_cpp --out="./lobster_output_files/gtests.lobster"
