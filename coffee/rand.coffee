choose = (arr) ->
    # Returns an element from an array at random.
    arr[Math.floor(Math.random() * arr.length)]


# Because that's what it's called in Python. Don't judge.
choice = choose

weightedChoose = (arr, weightChoose=1) ->
    #Returns an element from an array at random according to a weight.
    #A weight of 2 means the first element will be picked roughly twice as often as the second; a weight of 0.5 means half as often. A weight of 1 gives a flat, even distribution.
    if weightChoose <= 0
        weightChoose = 1

    arr[Math.floor(Math.random() ** weightChoose * arr.length)]
    #return arr[Math.floor((1-Math.pow(Math.random(),1/weightChoose))*arr.length)];//this would give a different curve

listWeightedChoose = (list) ->
    # Example list:
    # [
    #   [75, 'foo'],
    #   [25, 'bar']
    # ]
    #
    # 'foo' has a 75% chance and 'bar' has a 25% chance.

    if list.length == 1
        [prob, value] = list[0]
        console.assert prob == 100
        return value

    sum = 0
    for [prob, value] in list
        sum += prob

    if sum != 100
        throw "
            listWeightedChoose called with invalid list:
            probabilities don't add up to 100. (#{sum})
        "

    r = Math.random() * 100
    sum = 0

    for [prob, value] in list
        sum += prob

        if r <= sum
            return value

    console.assert false, 'listWeightedChoose is borked'

randint = (min, max) ->
    #Return a number between min and max, inclusive.
    parseFloat(Math.floor(Math.random() * (max - min + 1))) + parseFloat(min)

chance = (prob) ->
    ###
    # Random chance of returning true instead of false.
    # prob is a probability, like 0.99 would be 99%.
    ###
    # TODO: Most other functions take percentage instead.

    return Math.random() <= prob
