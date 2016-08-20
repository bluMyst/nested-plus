cd coffee/

echo 'Preprocessing...'
coffeescript-concat -I . -I ahtoLib.coffee/ \
    nestedscript.coffee \
    -o compiled/nestedscript.preprocessed.coffee

coffeescript-concat -I . -I ahtoLib.coffee/ \
    autorun.coffee \
    -o compiled/autorun.preprocessed.coffee

echo 'Compiling...'
cd compiled/
coffee -bc nestedscript.preprocessed.coffee
coffee -bc autorun.preprocessed.coffee

echo 'Cleaning up...'
rm nestedscript.preprocessed.coffee
rm autorun.preprocessed.coffee

# -force means 'overwrite if needed'
mv --force nestedscript.preprocessed.js nestedscript.js
mv --force autorun.preprocessed.js autorun.js

cd ..
cd ..
