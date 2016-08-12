echo 'Preprocessing...'
coffeescript-concat -I . nestedscript.coffee -o nestedscript.preprocessed.coffee

echo 'Compiling...'
coffee -bc nestedscript.preprocessed.coffee

echo 'Cleaning up...'
rm nestedscript.preprocessed.coffee

# -force means 'overwrite if needed'
mv -force nestedscript.preprocessed.js nestedscript.js
