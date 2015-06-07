function program_is_installed {
  local return_=1
  type $1 >/dev/null 2>&1 || { local return_=0; }
  echo "$return_"
}

if [ $(program_is_installed uglifyjs) != 1 ]; then
	echo "Installing uglify-js"
	npm install uglify-js -g 2> /dev/null
fi
if [ $(program_is_installed uglifycss) != 1 ]; then
	echo "Installing uglifycss"
	npm install uglifycss -g 2> /dev/null
fi

echo "Minifying libraries.js to libraries.min.js"
uglifyjs -o js/libraries.min.js -c -- js/libraries.js 2> /dev/null
echo "Minifying unify.js to unify.min.js"
uglifyjs -o js/unify.min.js -c -- js/unify.js 2> /dev/null
echo "Minifying style.css to style.min.css"
uglifycss style/style.css > style/style.min.css 2> /dev/null
