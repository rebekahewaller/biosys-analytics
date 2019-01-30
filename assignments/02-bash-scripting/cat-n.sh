set -u

### checking for arguments
if [[ $# -eq 0 ]]; then
        echo "USAGE: cat-n.sh FILE"
        exit 1
fi

### checking argument provided is a file
ARG=$1
if [[ ! -f "$ARG" ]]; then
        echo "$ARG is not a file"
        exit 1
fi

### program iterates over and numbers each line of file provided
FILE=$1
i=0
while read -r LINE; do
	i=$((i+1))
	echo $i "$LINE"
done < "$FILE"
