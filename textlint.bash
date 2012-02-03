#! /bin/bash

function usage() {
    echo $0 filename pharovm textlintimage
}

if [[ -z $1 || -z $2 || -z $3 ]]; then
    usage
    exit 1
fi

filename="$1"
pharovm="$2"
textlintimage="$3"

cat > textlint.st <<EOF
TLConsole checkFileNamed: '$filename' andOutputToFileNamed: 'textlint.log' withinDirectory: '$(pwd)'

EOF

echo
echo "Please wait while TextLint processes your file: it can take some time..."
echo

rm -f textlint.log
"$pharovm" -headless "$textlintimage" $(pwd)/textlint.st
if [[ ! -e textlint.log ]]; then
    echo Something bad happened!
    exit 1
else
    cat textlint.log
    exit 0
fi

