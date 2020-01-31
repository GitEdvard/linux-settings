#! /bin/bash
# Usage: pytest-cov.sh <project> <test-folder>
# Report is placed in directory htmlcov, and may be opened in a web browser

if [[ $# -ne 2 ]]; then
	echo "Usage: pytest-cov.sh <project> <test-folder>"
	exit 1
fi

pytest --cov-report html --cov="$1" "$2"

