#= require <rand>
#= require <nameGenerators>
#= require <thoughtGenerators>
#= require <miscGenerators>
# TODO: Merge the *Generators.coffee files into this one.

generators = {}

class generators.ThingNamer
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

generators.thingNamer = new generators.ThingNamer()

generators.thingNamer.newGenderedNamingScheme(
    '*[GENDER]*', nameGenerators.modern)

generators.thingNamer.newGenderedNamingScheme(
    '*MEDIEVAL [GENDER]*', nameGenerators.medieval)

generators.thingNamer.newGenderedNamingScheme(
    '*ANCIENT [GENDER]*', nameGenerators.ancient)

generators.thingNamer.newGenderedNamingScheme(
    '*FUTURE [GENDER]*', nameGenerators.future)

generators.thingNamer.newNamingScheme(
    '*MEMORY*', thoughtGenerators.memory)

generators.thingNamer.newNamingScheme(
    '*SADTHOUGHT*', thoughtGenerators.sadThought)

generators.thingNamer.newNamingScheme(
    '*HAPPYTHOUGHT*', thoughtGenerators.happyThought)

generators.thingNamer.newNamingScheme(
    '*MEDIEVAL MEMORY*', thoughtGenerators.medievalMemory)

generators.thingNamer.newNamingScheme(
    '*MEDIEVAL THOUGHT*', thoughtGenerators.medievalThought)

generators.thingNamer.newNamingScheme(
    '*ANCIENT MEMORY*', thoughtGenerators.ancientMemory)

generators.thingNamer.newNamingScheme(
    '*ANCIENT THOUGHT*', thoughtGenerators.medievalThought)

generators.thingNamer.newNamingScheme(
    '*FUTURE MEMORY*', thoughtGenerators.futureMemory)

generators.thingNamer.newNamingScheme(
    '*FUTURE THOUGHT*', thoughtGenerators.futureThought)

generators.thingNamer.newNamingScheme(
    '*PAINTING*', miscGenerators.painting)

generators.thingNamer.newNamingScheme(
    '*note*', miscGenerators.note)

generators.thingNamer.newNamingScheme(
    '*book*', miscGenerators.book)

generators.thingNamer.newNamingScheme(
    '*char*', thoughtGenerators.futureThought)
