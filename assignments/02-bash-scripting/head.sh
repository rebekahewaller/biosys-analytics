set -u

### checking for arguments
if [[ $# -eq 0 ]]; then
        echo "USAGE: head.sh FILE"
        exit 1
fi

### checking argument is a file
ARG=$1
if [[ ! -f $ARG ]]; then
        echo "$ARG is not a file"
        exit 1
fi

i=0
FILE=$1
NUM_LINES=${2:-3}
while read -r LINE; do
        echo $LINE
        i=$((i+1))
        if [[ $i -eq $NUM_LINES ]]; then
                break
        fi
done < "$FILE"
