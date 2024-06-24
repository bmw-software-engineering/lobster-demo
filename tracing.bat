rem This script runs LOBSTER on windows. its genrates the HTML report and runs the CT tool, too.
lobster-trlc . --config-file="lobster-trlc.conf" --out="trlc.lobster"
lobster-python . --out="python.lobster"
lobster-cpp . --out="cpp.lobster"
lobster-report --lobster-config="lobster.config" --out="report.lobster"
lobster-html-report report.lobster --out="tracing.html"
