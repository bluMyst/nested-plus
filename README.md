# nested-plus

A coffeescript refactoring of Orteil's Nested that works offline and extends functionality a little bit, here and there.

This git repository has submodules that aren't downloaded by default. When cloning this repository, use:

    git clone --recursive <url>

If you forgot to do that, just run:

    git submodule update --init --recursive

Requirements to run: A web browser that supports Javascript. Not IE.
Requirements to compile: A coffeescript compiler, and coffeescript-concat.

Compilation instructions:
- Install Node.js and NPM.
- Run `npm install -g coffee-script`
- Run `npm install -g coffeescript-concat`
- Run either make.sh (Linux/UNIX) or make.ps1 (Windows).

WARNING: make.sh is untested and probably doesn't work. Look at make.ps1 to get an idea of what it's supposed to do.

Orteil's info: http://orteil.deviantart.com, https://twitter.com/Orteil42, orteil42@gmail.com, http://orteil.dashnet.org
