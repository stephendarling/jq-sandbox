# more info available here http://www.compciv.org/recipes/cli/jq-for-parsing-json/
# set the filename as a variable
file=config/config.json

# return first element in an array
echo `cat $file | jq .likes[0] -r`
# return object by key (-r is for raw, which strips the double quotes)
echo `cat $file | jq .name -r`
# returns first object in an array and concatenates into a string
string="`cat $file | jq .friends[0].name -r` is `cat $file | jq .friends[1].age -r` years old"
echo $string