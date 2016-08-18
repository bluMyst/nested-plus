#= require <rand>
#= require <nameGenerators>
#= require <thoughtGenerators>
#= require <miscGenerators>

things = []
thingsN = 0

nameToGender = (name) ->
    if name.search(/^\*.*\*$/) == -1
        gender = INVALID_GENDER
    else if name.search(/PERSON\*$/) != -1
        gender = choose [MALE, FEMALE]
    else if name.search(/WOMAN\*$/) != -1
        # Order is important here. WOMAN comes before MAN because /MAN$/
        # matches "WOMAN".
        gender = FEMALE
    else if name.search(/MAN\*$/) != -1
        gender = MALE
    else
        gender = INVALID_GENDER

class Thing
    constructor: (@name_, @contains, @namegen=@name_) ->
        things[@name_] = this
        thingsN++
        return

    makeInstance: ->
        return new NewStyleInstance this, @generateName()

    generateName: ->
        name = @namegen

        nameToString = (name) ->
            if typeof name == 'string'
                return name
            else if typeof name[0] == 'string'
                # [string]
                return choose name
            else if typeof name == 'function'
                return nameToString name()
            else
                # [[string]]
                str = ''

                for i in name
                    str += choose i

                return str

            return str

        name = nameToString name

        nameParts = name.split '|'
        name      = nameParts[0]
        gender    = nameToGender name

        switch name
            when '*PERSON', '*MAN*', '*WOMAN*'
                name = nameGenerators.modern gender
            when '*MEDIEVAL PERSON*', '*MEDIEVAL MAN*', '*MEDIEVAL WOMAN*'
                name = nameGenerators.medieval gender
            when '*ANCIENT PERSON*', '*ANCIENT MAN*', '*ANCIENT WOMAN*'
                name = nameGenerators.ancient gender
            when '*FUTURE PERSON*', '*FUTURE MAN*', '*FUTURE WOMAN*'
                name = nameGenerators.future gender
            when '*MEMORY*'
                name = thoughtGenerators.memory()
            when '*SADTHOUGHT*'
                name = thoughtGenerators.sadThought()
            when '*HAPPYTHOUGHT*'
                name = thoughtGenerators.happyThought()
            when '*MEDIEVAL MEMORY*'
                name = thoughtGenerators.medievalMemory()
            when '*MEDIEVAL THOUGHT*'
                name = thoughtGenerators.medievalThought()
            when '*ANCIENT MEMORY*'
                name = thoughtGenerators.ancientMemory()
            when '*ANCIENT THOUGHT*'
                name = thoughtGenerators.ancientThought()
            when '*FUTURE MEMORY*'
                name = thoughtGenerators.futureMemory()
            when '*FUTURE THOUGHT*'
                name = thoughtGenerators.futureThought()
            when '*PAINTING*'
                name = miscGenerators.painting()
            when '*NOTE*'
                name = miscGenerators.note()
            when '*BOOK*'
                name = bookCase(miscGenerators.book())
            when '*CHAR*'
                name = miscGenerators.char()
            when '*MONUMENT*'
                name = bookCase(miscGenerators.monument())

        if nameParts[1]?
            # "*PERSON*| avenue" -> "John Smith avenue"
            name = name + nameParts[1]

        return name

checkMissingThings = ->
    allContents = []
    allMissing  = []

    for i, thisThing of things
        for i2, thisContent of thisThing.contains
            if typeof thisContent != 'string'
                for i3, v3 of thisContent
                    allContents.push v3
            else
                allContents.push thisContent

    for i of allContents
        thisContent = allContents[i]

        if thisContent[0] == '.'
            thisContent = thisContent[1..]

        thisContent = thisContent.split(',')
        thisContent = thisContent[0]

        if !things[thisContent] and thisContent != ''
            allMissing.push thisContent

    # remove duplicates
    # allMissing = allMissing.filter (elem,pos) ->
    #     allMissing.indexOf(elem) == pos

    str = "Things that are linked to, but don't exist :\n"

    for i of allMissing
        str += allMissing[i] + '\n'
    alert str
    return

cleanThings = ->
    for iT of things
        thisT = things[iT]
        toConcat = []
        for i of thisT.contains
            if typeof thisT.contains[i] == 'string'
                if thisT.contains[i][0] == '.'
                    if things[thisT.contains[i][1..]] != undefined
                        toConcat = toConcat.concat(things[thisT.contains[i][1..]].contains)
                    thisT.contains[i] = ''
        if toConcat.length > 0
            for i of toConcat
                thisT.contains.push toConcat[i]
        newContains = []
        for i of thisT.contains
            if thisT.contains[i] != ''
                newContains.push thisT.contains[i]
        thisT.contains = newContains
    return
