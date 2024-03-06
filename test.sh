pwd
output=$(./run.sh <(cat - <<<"INPUT") >(cat -) >/dev/null)
cat - <<<"$output"

if [[ "$output" != "ANSWERINPUT" ]]
then
    exit 1
fi
