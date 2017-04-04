# This will read all css and js files in their respective folders, filter out comments and make them into one, one-line file called "main.css" and "main.js" in the assets folder
# Number the files if the order is important. e.g. quotes.js needs to be before qotd.js in the output file, there for "quotes.js" is "01_quotes.js"
dir="../assets"
dos2unix ./js/*.js &>/dev/null
dos2unix ./css/*.css &>/dev/null
cat ./js/*.js | sed 's://.*$::g '| tr '\t' ' ' | tr '\n' ' ' | sed 's:\s\s*: :g' > $dir/js/main.js
cat css/*.css | sed  's:\/\*.*\*\/::' | tr '\n' ' ' | sed 's:\s\s*: :g' > $dir/css/main.css
echo "[+] Files written to $dir"
