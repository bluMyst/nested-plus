choose = (arr) ->
    #Returns an element from an array at random.
    arr[Math.floor(Math.random() * arr.length)]

weightedChoose = (arr, weightChoose) ->
    #Returns an element from an array at random according to a weight.
    #A weight of 2 means the first element will be picked roughly twice as often as the second; a weight of 0.5 means half as often. A weight of 1 gives a flat, even distribution.
    if weightChoose <= 0 or weightChoose == undefined
        weightChoose = 1

    arr[Math.floor(Math.random() ** weightChoose * arr.length)]
    #return arr[Math.floor((1-Math.pow(Math.random(),1/weightChoose))*arr.length)];//this would give a different curve
    #previously

    ###
    var iChoose;
    var arrChoose=[];
    if (weightChoose<=0 || weightChoose==undefined) weightChoose=1;
    for (iChoose=0;iChoose<arr.length;iChoose++) {
      if (Math.round(Math.random()*(iChoose*weightChoose))==0) arrChoose.push(arr[iChoose]);
    }
    return choose(arrChoose);
    ###

randint = (min, max) ->
    #Return a number between min and max, inclusive.
    parseFloat(Math.floor(Math.random() * (max - min + 1))) + parseFloat(min)

chance = (prob) ->
    ###
    # Random chance of returning true instead of false.
    # prob is a probability, like 0.99 would be 99%.
    ###

    return Math.random() <= prob
