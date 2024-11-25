rem This script runs LOBSTER on windows. its genrates the HTML report and runs the CT tool, too.
lobster-trlc main.trlc main.rsl --config-file=lobster-trlc.conf --out lobster_output_files/trlc.lobster
lobster-python ./source_code_python --out="./lobster_output_files/python_software.lobster"
lobster-cpp ./source_code_cpp --clang-tidy="../llvm-project/build/bin/clang-tidy" --out="./lobster_output_files/cpp_software.lobster"
lobster-python ./unittests_python --activity  --out="./lobster_output_files/python_tests.lobster"
lobster-gtest ./unittests_cpp --out="./lobster_output_files/gtests.lobster"
lobster-report --lobster-config=lobster.conf --out="./lobster_output_files/report.lobster"
lobster-online-report "lobster_output_files/report.lobster"
lobster-html-report ./lobster_output_files/report.lobster --out="tracing_example.html"
lobster-ci-report ./lobster_output_files/report.lobster
