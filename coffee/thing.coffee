things = []
thingsN = 0

class Thing
    constructor: (@name_, @contains, @namegen=@name_) ->
        things[@name_] = this
        thingsN++
        return

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
