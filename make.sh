cd coffee/

echo 'Preprocessing...'
coffeescript-concat -I . nestedscript.coffee -o compiled/nestedscript.preprocessed.coffee

echo 'Compiling...'
cd compiled/
coffee -bc nestedscript.preprocessed.coffee

echo 'Cleaning up...'
rm nestedscript.preprocessed.coffee

# -force means 'overwrite if needed'
mv --force nestedscript.preprocessed.js nestedscript.js

cd ..
cd ..
