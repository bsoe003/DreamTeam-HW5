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

echo "Combining all CSS to main.css"
cat style/*.css > main.css

echo "Combining all JS to main.js"
cat js/*.js > main.js

echo "Minifying main.js to main.min.js"
uglifyjs -o main.min.js -c -- main.js 2> /dev/null
echo "Minifying style.css to style.min.css"
uglifycss main.css > main.min.css 2> /dev/null
echo "Removing main.css"
rm main.css
echo "Removing main.js"
rm main.js
