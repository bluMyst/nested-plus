#= require <rand>
#= require <nameGenerators>
#= require <thoughtGenerators>
#= require <miscGenerators>
# TODO: Merge the *Generators.coffee files into this one.

generators = {}

class generators.NameGenerator
    ###
    # Warning: Only works on strings like '*PERSON*' or '*ANCIENT THOUGHT*'
    # The Instance class handles more complex stuff on its own.
    ###
    constructor: ->
        @namingFunctions = {}

    newNamingScheme: (nameTemplate, namingFunction) ->
        @namingFunctions[nameTemplate] = namingFunction

    newGenderedNamingScheme: (nameTemplate, namingFunction) ->
        ###
        # nameTemplate should include '[GENDER]'. For example:
        # '*MEDIEVAL [GENDER]*' would handle:
        # '*MEDIEVAL PERSON*', '*MEDIEVAL MAN*', '*MEDIEVAL WOMAN*'
        #
        # namingFunction should take one argument, which is a gender
        # that's either MALE or FEMALE.
        ###
        @namingFunctions[nameTemplate.replace '[GENDER]', 'PERSON'] =
            -> namingFunction choice [MALE, FEMALE]

        @namingFunctions[nameTemplate.replace '[GENDER]', 'MAN'] =
            -> namingFunction MALE

        @namingFunctions[nameTemplate.replace '[GENDER]', 'WOMAN'] =
            -> namingFunction FEMALE

    generateName: (nameTemplate) ->
        error = ->
            throw "generateName called on invalid nameTemplate
                '#{nameTemplate}'"

        if not nameTemplate.search /^\*.*\*$/
            error()

        if (f = @namingFunctions[nameTemplate])?
            return f()
        else
            error()

generators.nameGenerator = new generators.NameGenerator()

generators.nameGenerator.newGenderedNamingScheme(
    '*[GENDER]*', nameGenerators.modern)

generators.nameGenerator.newGenderedNamingScheme(
    '*MEDIEVAL [GENDER]*', nameGenerators.medieval)

generators.nameGenerator.newGenderedNamingScheme(
    '*ANCIENT [GENDER]*', nameGenerators.ancient)

generators.nameGenerator.newGenderedNamingScheme(
    '*FUTURE [GENDER]*', nameGenerators.future)

generators.nameGenerator.newNamingScheme(
    '*MEMORY*', thoughtGenerators.memory)

generators.nameGenerator.newNamingScheme(
    '*SADTHOUGHT*', thoughtGenerators.sadThought)

generators.nameGenerator.newNamingScheme(
    '*HAPPYTHOUGHT*', thoughtGenerators.happyThought)

generators.nameGenerator.newNamingScheme(
    '*MEDIEVAL MEMORY*', thoughtGenerators.medievalMemory)

generators.nameGenerator.newNamingScheme(
    '*MEDIEVAL THOUGHT*', thoughtGenerators.medievalThought)

generators.nameGenerator.newNamingScheme(
    '*ANCIENT MEMORY*', thoughtGenerators.ancientMemory)

generators.nameGenerator.newNamingScheme(
    '*ANCIENT THOUGHT*', thoughtGenerators.medievalThought)

generators.nameGenerator.newNamingScheme(
    '*FUTURE MEMORY*', thoughtGenerators.futureMemory)

generators.nameGenerator.newNamingScheme(
    '*FUTURE THOUGHT*', thoughtGenerators.futureThought)

generators.nameGenerator.newNamingScheme(
    '*PAINTING*', miscGenerators.painting)

generators.nameGenerator.newNamingScheme(
    '*note*', miscGenerators.note)

generators.nameGenerator.newNamingScheme(
    '*book*', miscGenerators.book)

generators.nameGenerator.newNamingScheme(
    '*char*', thoughtGenerators.futureThought)
