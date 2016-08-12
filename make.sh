coffeescript-concat -I . nestedscript.coffee -o nestedscript.preprocessed.coffee
coffee -bc nestedscript.preprocessed.coffee
mv nestedscript.preprocessed.js nestedscript.js
rm nestedscript.preprocessed.coffee
