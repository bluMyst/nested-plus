# vim: foldmethod=marker
#= require <rand>
#= require <ahtoLib>
# Also generates memories.

thoughtGenerators =
    memory: -> # {{{1
        return '' + weightedChoose_ 1.5, [
            choose([
                'Biking', 'Hiking', 'Swimming', 'Flying kites', 'Playing',
                'Playing baseball', 'Stargazing', 'Playing soccer',
                'Playing basketball', 'Playing chess', 'Playing checkers',
                'Playing video-games', 'Watching TV', 'Cooking',
            ]) + ' with my ' + choose([
                'mother', 'father', 'parents', 'grand-father', 'grand-mother',
                'grand-parents', 'uncle', 'aunt', 'cousin', 'sister',
                'brother',
            ]) + choose([
                '',
                ' when I was ' + choose([
                    'a child', 'young', randint(7, 21),
                ]),
            ]) + '.'

            'The day I ' + choose([
                'learned how to ' + choose([
                    'drive', 'cook', 'love', 'kiss', 'read', 'forgive',
                    'make friends', 'speak another language',

                    ahtoLib.stringVariation '
                        play (piano|drums|guitar|saxophone|cards)
                    '
                ]),

                choose([
                    'graduated high school', 'graduated college',
                    'got my license'
                ])

                ahtoLib.stringVariation '
                    (got promoted as|got a job as|finally became)

                    (\
                        a cook|a reporter|a game designer|a lawyer|a doctor|\
                        a veterinarian|a biologist|a soldier|a physicist|\
                        a scientist|a geologist|a shopkeeper|a teacher|\
                        a historian|an archeologist|a musician|an artist|\
                        an athlete|a dancer\
                    )
                '
            ]) + '.'

            ahtoLib.stringVariation """
                (
                    Kissing|
                    Cuddling with|
                    Watching movies with|
                    Staying up late with|
                    Sharing secrets with|
                    Sharing childhood memories with|
                    Feeling close to|
                    Laying my arm around
                ) 

                (
                    that one person|
                    my best friend|
                    my love interest|
                    my crush
                ) 

                in 

                (
                    middle school|
                    high school|
                    college
                )

                .
            """, true

            'The day I ' + choose([
                'got married'
                'had my daughter'
                'had my son'
                'lost my father'
                'lost my mother'
                'learned we were at war'
                'learned the war was over'
                'broke up with my partner'

                ahtoLib.stringVariation """
                    went on a trip with 
                    (my partner|my family|my friends)
                """, true

                ahtoLib.stringVariation """
                    learned 

                    (
                        I|
                        my son|
                        my daughter|
                        my sister|
                        my brother|
                        my father|
                        my mother
                    ) 

                    was ill
                """, true

                ahtoLib.stringVariation "
                    broke my (leg|ankle|elbow|knee|nose)
                "

                'lost my ' + weightedChoose_ 1.5, [
                    'dog'
                    'cat'
                    'bunny'
                    'hamster'
                    'gerbil'
                    'bird'
                    'goldfish'
                    'ferret'
                    'rat'
                    'iguana'
                    'pet spider'
                ]
            ]) + '.'

            ahtoLib.stringVariation """
                That one unforgettable 

                (
                    book|
                    movie|
                    video game|
                    trip|
                    kiss|
                    person I met|
                    party
                )

                .
            """, true
        ]

    sadThought: -> # {{{1
        return weightedChoose_ 1.4, [
            choose [
                'This place is crowded.'
                "I don't want to live here my whole life."
                "I don't want to spend the rest of my life here."
                'I want to meet different people.'
                "I'm so alone."
                "I don't want to be alone."
                'When did I get so lonely?'
                "I'm scared."
                'I feel so insignificant.'
                'Does it matter, really?'
                'This is absurd.'
                'I hate this place.'
                'I hate the people here.'
                'Nobody understands me.'
                'I wish the voices would stop.'
                "I'm in debt."
                "I shouldn't spend so much."
                "I don't really like my friends."
                'I regret doing that thing I did.'
                'I hope they never find out.'
                'What if I get caught?'
                'This is killing me.'
                'What will happen to me when I die?'
                'This is all sick.'
                "What's the point?"
                "I secretly know the meaning of life but I won't tell anyone."
                "I know why we're here."
                'What if this was real?'
                'Some people need to check their privilege...'
                "This isn't what I wanted."

                'I... I just want ' + choose([
                    'a friend'
                    'friends'
                    'someone to hug'
                    'a family'
                    'someone who understands me'
                    'to have kids'
                    'something to look forward to'
                    'to be loved'
                ]) + '.'

                "Is this how it's going to end?"
                "Oh, that's going on my blog."
            ]

            choose [
                "I'm too lazy."
                "I don't want to get fired."
                "I'm worried."
                "I don't deserve this."
                'Why am I doing this to myself?'
                "This isn't like me."
                "Hold me. I'm scared."
                'This is my only shot at this.'
                'This was my only shot at this, and I blew it.'
                "I won't make the same mistake twice."
                'If I must.'
                'As you wish.'
                'Where are my parents now?'
                'I hate myself sometimes.'
                'What a waste.'
                'I wish I was a better person.'
                "I'm terrified of death."
                "I don't want to get older."
                "I wish I didn't waste my youth."
                'I regret so much.'
                "I shouldn't have said no."
                'I should call my parents.'
                "I'm tired. I've been doing this all day."
                "Don't listen to what they say. It's just not true."
                'Too many rumors going on.'
                "It's not what it looks like, I swear!"
                'Uh... I can explain.'
                "Well, I'm glad nobody can read my mind."
                "My friends aren't real."
                "I'm the only real person here."

                'If only I were ' + choose([
                    'a pirate'
                    'a dolphin'
                    'a unicorn'
                    'a panda'
                    'a cyborg'
                    'a robot'
                    'a superhero'
                    'invisible'
                ]) + '.'

                "I'm " + choose([
                    'worthless'
                    'terrible'
                    'just a bad person'
                    'just not a good person'
                    'so awful'
                    'so alone. I need help'
                    'never going to amount to anything'
                    'no good. My mom was right'
                    'not that bad, I guess'
                    'a faker'
                    'so bad at this'
                    'too nice for my own good'
                ]) + '.'

                'I should learn a new ' + choose(['skill', 'language']) + '.'
                'I should call ' + choose(['her', 'him']) + ' and say sorry.'

                'I miss ' + choose([
                    'him'
                    'her'
                    'them'
                ]) + choose(['. So much', '', '']) + '.'

                'I ' + choose([
                    'wish I was'
                    'should be'
                    'want to be'
                ]) + ' ' + choose([
                    'more generous'
                    'nicer'
                    'more popular'
                    'more interesting'
                    'more romantic'
                ]) + '.'

                "I don't suck at " + choose([
                    'singing'
                    'painting'
                    'dancing'
                    'writing'
                    'video-games'
                    'maths'
                ]) + '. People just think I do.'

                'Nobody can know about ' + choose([
                    'my balding hair'
                    'my parents'
                    'this'
                    'me'
                    'my drinking problem'
                    'my health problems'
                    'what I do in the shower'
                    'what I did'
                    "what I'm about to do"
                    "what I'm doing"
                    'the movies I watch'
                    'the books I read'
                    'the websites I go on'
                ]) + '.'

                'I am secretly ' + choose([
                    'a regular human being'
                    'perfectly normal'
                    'perfectly ordinary'
                    'spying on you right now'
                    'a wizard'
                    'the smartest person in the world'
                    'the wisest person in the world'
                    'the most important person in the world'
                    'a spider'
                    'a robot'
                    'a midget'
                    'a very ancient ghost'
                    'an extra-terrestrial'
                    'a tree'
                    'a flower'
                    'a shark'
                    'a bear'
                    'my own cousin'
                    'an astral monstrosity'
                    'a secret'
                ]) + '.'
            ]

            choose([
                'I need'
                'I want'
                'I might need'
                'I should get'
                'What I want is'
                'What I need right now is'
                "I'll just get"
            ]) + ' ' + choose([
                'some new shoes'
                'a new TV'
                'a new computer'
                'another car'
                'a bigger house'
                'a better job'
                'a lover'
                'more pets'
                'a makeover'
                'a good movie'
                'a nice dinner in town'
            ]) + '.'
            choose([
                'My ' + choose([
                    'butt'
                    'nose'
                    'foot'
                    'ear'
                    'forehead'
                    'back'
                ]) + ' is itchy.'
                'My ' + choose([
                    'head'
                    'leg'
                    'arm'
                    'belly'
                    'back'
                    'shoulder'
                ]) + ' ' + choose([
                    'feels weird'
                    'feels icky'
                    'hurts'
                    'feels strange'
                ]) + '.'
                'I should see a doctor for my ' + choose([
                    'eyes'
                    'brain'
                    'head'
                    'chest'
                    'legs'
                    'back'
                ]) + '.'
            ])
            choose([
                'This ' + choose([
                    'marriage'
                    'relationship'
                ]) + ' ' + choose([
                    'is a failure'
                    'is a disaster'
                    'was a mistake'
                    "isn't working"
                ])
                'I regret getting married'
                'I want a divorce'
                "This isn't why I got married"
            ]) + '.'
            choose([
                choose([
                    "I just can't stand the taste of"
                    'I am not going to finish'
                    'I paid way too much for'
                    "I don't really like"
                ]) + ' ' + choose([
                    'this hamburger'
                    'this steak'
                    'this salad'
                    'this pasta'
                    'this sandwich'
                    'this pizza'
                    'this meal'
                    'this beer'
                    'this soda'
                ]) + '.'
                choose([
                    'I hate that show'
                    'That show is revolting'
                    "I hate that show, but I'm going to watch it anyway"
                    'My parents used to watch that show'
                    "There's nothing on TV"
                    "That's a stupid movie"
                    "I've seen that movie already"
                ]) + '.'
                choose([
                    'Wait, '
                    'Hold on. '
                    'Ugh. '
                    'Ugh, I told them '
                    ''
                ]) + "I'm allergic to " + choose([
                    'shrimp'
                    'soy'
                    'pineapple'
                ]) + '.'
            ])
            choose([
                'This will not stand.'
                "Dammit I'm mad."
                'Yes, I am mad.'
                "I won't let this happen."
                'No. Never. Not if I have a word in it.'
                'Over my dead body.'
                'Do they have any idea how angry I am?'
                'I am absolutely furious.'
                'This upsets me.'
                'Well, I am upset.'
                'On we march.'
                'This is not over.'
                'I can see them, beyond the stars.'
                "I can sense them. They're coming."
                'Something is coming this way.'
                'Something is about to go horribly wrong.'
                'It was written.'
                'It is coming.'
                'We must fight on.'
                "I've seen things."
                "Oh no. I'm thinking weird stuff again."
                "Do you really think I can't see you?"
                "I don't look at the world the way I used to."
                "Can't you hear them?"
                "It's always there."
                "It won't go away."
                "There are things that I just can't explain."
                'Who where?'
                "They don't think it is like this. But it is."
                'The world looks too intense for me.'
                'I never asked for this.'
                "No! I don't want that!"
                "What if we're all living in a giant computer simulation?"
                'This place would look good on fire!'
                "This is the end, isn't it?"
                'The end.'
            ])
        ] # }}}2

    happyThought: -> # {{{1
        return weightedChoose_ 1.4, [
            choose([
                'What a nice day!'
                "It's sunny today."
                "It's a sunny day out."
                "It's such a nice day."
                "It's such a great day to be alive!"
                'This is a happy kind of day.'
                'I feel great.'
                "Ooh, I'm feeling fine."
                "I'm feeling awesome."
                'Hey, this is great!'
                "I'm so glad I came here."
                'I regret nothing!'
                'Regrets are pointless.'
                'I have no regrets.'
                'This is what I wanted!'
                "Everything's going just fine."
                "I can't wait!"
                'Things are going smoothly.'
                "I'm just happy to be here."
                'Well, this is ' + choose([
                    'unexpected'
                    'awkward'
                    'fun'
                    'just funny'
                    'strange'
                    'interesting'
                    'odd'
                    'peculiar'
                    'weird'
                ]) + '.'
                'I know the meaning of life!'
                "I didn't expect this!"
                "I'm glad someone understands me."
                "I'm glad someone likes me for who I am."
                'I love my friends!'
                'Life is good!'
                'I could picture myself spending the rest of my life here.'
                'I should meet new friends!'
                'I feel loved.'
                'I feel almighty!'
                'I matter.'
                'This place is nice.'
                "Everybody's great in some way!"
                'I hope ' + choose([
                    'they'
                    'she'
                    'he'
                ]) + "'ll like me!"
                'I wonder what happens next!'
                "It's all going to be alright."
                "It'll all be alright in the end. I just know it."
                'This is actually okay.'
                'I love the whole world!'
                'The world is a big place!'
                'The world is amazing!'
                'So it has come to this.'
                'Well this is an interesting development.'
                "Let's see what happens next."
                'Oh hey. I found me.'
                'I NEED to blog about this.'
            ])
            choose([
                'I should take a self-help course!'
                "I'm doing alright."
                'My job is pretty fulfilling.'
                "I don't really worry."
                'Worrying is pointless!'
                'This is cooler than I expected!'
                'Haha, this is just like me.'
                "Wouldn't it be awesome if I was " + choose([
                    'a pirate'
                    'a dolphin'
                    'an unicorn'
                    'a panda'
                    'a cyborg'
                    'a robot'
                    'a superhero'
                    'invisible'
                ]) + '?'
                "I'm pretty self-confident."
                "I'm a pretty big deal."
                "I'm pretty extreme."
                choose([
                    'You want a piece of this?'
                    "I'm all business, all the time."
                    'I vibrate through walls.'
                    'This is going to be gay as hell.'
                    "We're making this happen!"
                ])
                'I mean, wow.'
                'Yep. Just a regular human person. Nothing to see here.'
                'I want to become even better!'
                'I should learn a new ' + choose([
                    'skill'
                    'language'
                ]) + '!'
                "I hope I'll become a nice old person."
                'I kinda miss my youth!'
                'I should call ' + choose([
                    'her'
                    'him'
                ]) + ' and say "I love you"!'
                'Maybe I should call my parents?'
                'You can always better yourself.'
                'Do I really suck at ' + choose([
                    'singing'
                    'painting'
                    'dancing'
                    'writing'
                    'video-games'
                    'maths'
                ]) + '?'
                "I'm secretly " + choose([
                    'super-hardcore'
                    'perfectly normal'
                    'perfectly ordinary'
                    'peeking over your shoulder right now'
                    'a wizard'
                    'the smartest person in the world'
                    'the wisest person in the world'
                    'the most important person in the world'
                    'a spider'
                    'a robot'
                    'a midget'
                    'a very ancient ghost'
                    'an extra-terrestrial'
                    'a tree'
                    'a flower'
                    'a shark'
                    'a bear'
                    'my own cousin'
                    'an astral monstrosity'
                    'a secret'
                ]) + '!'
                'H-here I go!'
                'This place would look good on fire!'
                "I don't worry, because I know nothing matters in the end."
                "Well, I'm glad nobody can read my mind."
            ])
            choose([
                'Hmm! I should get'
                'I know what would be awesome...'
                'Time for'
                'I need'
                'You know what? I need'
                "Know what I need? I'll tell you - "
            ]) + ' ' + choose([
                'some new shoes'
                'a new TV'
                'a new computer'
                'a new car'
                'a bigger house'
                'a cooler job'
                'a lover'
                'more pets'
                'a makeover'
                'a good movie'
                'a nice dinner in town'
            ]) + '!'
            choose([
                'This is the best relationship ever.'
                'I love being married!'
                "Marriage isn't as bad as they make it out to be!"
                'This relationship is awesome!'
                'I love my family.'
                'I love doing stuff with my family.'
            ])
            choose([
                choose([
                    'I really, really like'
                    "I can't get enough of"
                    "I'm going to get more of"
                    'I wonder what they put in'
                ]) + ' ' + choose([
                    'this hamburger'
                    'this steak'
                    'this salad'
                    'this pasta'
                    'this sandwich'
                    'this pizza'
                    'this meal'
                    'this beer'
                    'this soda'
                ]) + '.'
                choose([
                    'Haha, I love that show!'
                    'That show is confusing!'
                    'That show is hilarious.'
                    "That's a silly show, but there's nothing on TV anyway."
                    'Oooh, my parents used to watch that show!'
                    "There's nothing on TV!"
                    "That movie's plot is hilariously bad."
                    "I've never seen that movie before!"
                ])
            ])
        ]

    medievalMemory: -> # {{{1
        return weightedChoose_ 1.5, [
            choose([
                'Tending the fields'
                'Tending the animals'
                'Harvesting the crops'
                'Learning to cook'
                'Learning magic tricks'
                'Learning alchemy'
                'Learning how to yield a sword'
                'Learning how to defend myself'
                'Learning how to shoot a bow'
                'Learning about the gods above'
                'Learning about the spirits that inhabit every thing'
                'Learning proper manners'
                'Looking at the skies'
                'Swimming in the rivers'
                'Exploring the woods'
                'Wandering the wild expanses'
                'Getting lost in the woods'
                'Travelling to the city'
                'Running from wild beasts'
                'Hunting wild beasts'
                'Taking part in the great hunt'
                'Tracking beasts'
                'Sparring'
            ]) + ' with my ' + choose([
                'mother'
                'father'
                'parents'
                'grand-father'
                'grand-mother'
                'grand-parents'
                'uncle'
                'aunt'
                'cousin'
                'sister'
                'brother'
                'caretaker'
                'master'
            ]) + choose([
                ''
                ' when I was ' + choose([
                    'a child'
                    'young'
                    randint(6, 16)
                ])
            ]) + '.'
            'The day I ' + choose([
                'found my calling'
                'mastered ' + choose([
                    'the art of blacksmithing'
                    'the art of swordfighting'
                    'the arcane arts'
                    'the arts of writing'
                    'the art of war'
                    'all of the arts and sciences'
                ])
                choose([
                    'finished my training'
                    'finished my education'
                    'was accepted into the guild'
                ])
                choose([
                    'found task as '
                    'was called to become '
                    'finally became '
                ]) + choose([
                    'a cook'
                    'a squire'
                    'an engineer'
                    'a footsoldier'
                    'a bard'
                    'a peasant'
                    'a blacksmith'
                    'a lumberjack'
                    'a monk'
                ])
            ]) + '.'
            choose([
                'The sweetness of the lips of'
                'The fond affection I felt for'
                'Conversing late into the night with'
                'The kinship I felt for'
            ]) + ' ' + choose([
                'that one person'
                'my companion'
                'my love interest'
                'the person I courted'
            ]) + ' ' + choose([
                'when I was still a child'
                'when I was young'
                'when I was in training'
            ]) + '.'
            'The day I ' + choose([
                'wed my partner'
                'became a parent'
                'lost my father'
                'lost my mother'
                'explored the world with ' + choose([
                    'my partner'
                    'my family'
                    'my companions'
                    'my master'
                ])
                'learned ' + choose([
                    'I'
                    'my son'
                    'my daughter'
                    'my sister'
                    'my brother'
                    'my father'
                    'my mother'
                ]) + ' was ill'
                'fell victim to disease'
                'learned we were at war'
                'learned the war was over'
                'took part in the war'
                'helped strike down a dragon'
                'had to leave our town due to contagious diseases'
                'was forced to move to a new town'
                'was forced to become a beggar'
                'visited our castle'
                'saw a display of magic at the castle'
                'broke my ' + choose([
                    'leg'
                    'ankle'
                    'elbow'
                    'knee'
                    'nose'
                ])
                'lost ' + choose([
                    'my dog'
                    'my cat'
                    'my cattle'
                    'a valuable trinket'
                    'a magic artifact'
                    'my way in the forest'
                ])
            ]) + '.'
        ]

    medievalThought: -> # {{{1
        return choose([
            'Today was a fine day.'
            'Many things happened on this day.'
            'What an eventful week this has been.'
            "It's been a good year so far."
            'So much to do, so little time.'
            'I was born too soon.'
            "I'm still young. I'll manage."
            'What a surprising world we live in.'
            "Hopefully next year's crops will be fruitful."
            'What hides yonder?'
            'What lies yonder, I wonder.'
            'So many things out of my comprehension.'
            'I want to see more of this world.'
            'I am sworn to carry this burden.'
            'What strange and terrifying creatures could live in the distant lands?'
            "I've heard so many stories about the things that live in the farlands."
            'Thank our star, I feel fine now.'

            'I would still be ' + choose([
                'an adventurer'
                'a bandit'
                'a traveller'
                'a travelling merchant'
                'a hunter'
                'a courrier'
            ]) + ' if not for that ' + choose([
                'witch'
                'ambush years ago'
                'dragon'
                'new king'
                'stupid accident'
                'unfortunate wound'
            ]) + '.'
            "I'll " + choose([
                'ready my spells'
                'grab my sword'
                'grab my axe'
                'grab my shield'
                'pack my things'
            ]) + ' and go on an adventure.'
            'I will ' + choose([
                'compose a sonnet'
                'tell the tale'
                'write a saga'
                'compose a song'
            ]) + ' of ' + choose([
                'witches'
                'princesses'
                'adventure'
                'fate'
                'distant kingdoms'
                'unicorns'
                'knights'
                'bards'
                'swords'
                'love'
            ]) + ' and ' + choose([
                'wizards'
                'princes'
                'dragons'
                'magic'
                'paladins'
                'warlocks'
                'dungeons'
                'destruction'
                'monsters'
                'friendship'
            ]) + '!'

            'I want to travel and see ' + choose([
                'the unicorns'
                'the dinosaurs'
                'a dragon'
                'the steam monsters'
                'the goblin kingdoms'
                'the dwarves in the mountains'
                'pixies'
                'fairies'
                'catpeople'
                'sharkpeople'
                'dogpeople'
                'the troll pits'
                'the wizard kingdom'
                'the footfaces'
                'the cephalites'
                'the gembabies'
            ]) + '!'

            choose([
                'She'
                'He'
                'They'
            ]) + ' ' + choose([
                'will regret it'
                'will regret saying that'
                'will regret doing that'
                'must pay, somehow'
                "will get what's coming"
                'will get what is deserved'
                'will see how right I was'
                'will not hold me back any longer'
                'will regret laughing at me'
            ]) + '.'

            choose [
                'Our star will guide us throughout.'
                'I trust our star to guide us in the right direction.'
                'I trust our star to point us to the right choices.'
            ]

            'I need to ' + choose([
                'find'
                'see'
                'consult'
            ]) + ' ' + choose([
                'a physician'
                'a witch'
                'a wizard'
                'an apothecary'
                'an exorcist'
                'a priest'
            ]) + '.'

            choose [
                'What is that smoke on the horizon?'
                'That new moon keeps getting bigger.'
                'Will the court wizards keep us safe?'
                'The Entities are due soon.'
                "All of our cattle is getting sick. What's happening?"
                "I don't want to take part in another sacrifice."
                "Let's hope that sacrifice was worth it."
                'I hate those dark rituals.'
                'I hope the liches will leave us alone this year.'
                'I keep finding these weird stones.'
                'Some must fight, so that all may be free.'
            ]
        ])

    ancientMemory: -> # {{{1
        str = weightedChoose([
            choose([
                'Scouting for wild beasts'
                'Tending the fire'
                'Chopping wood'
                'Learning the secrets of fire'
                'Learning the shamanic ways'
                'Scouting the wilderness for resources'
                'Searching for fresh water'
                'Taking part in the great hunt'
                choose([
                    'Hunting wild'
                    'Tracking'
                    'Running from wild'
                    'Ambushing'
                    'Making pelts from'
                    'Skinning'
                    'Slicing the meat off'
                ]) + ' ' + choose([
                    'mammoths'
                    'saber-toothed cats'
                    'mountain lions'
                    'wooly rhinoceroses'
                    'wolves'
                    'aurochs'
                    'rabbits'
                ])
                'Bringing our catch back to the settlement'
                'Harvesting wild berries'
                'Harvesting wild grain'
                'Fetching water'
                'Learning how to throw a spear'
                'Learning how to use a harpoon'
                'Learning how to sculpt the stone'
                'Learning about the spirits'
                'Hiding from wild beasts'
                'Staring at birds in the sky'
                'Looking at the stars at night'
                'Looking at the skies'
                'Swimming in the rivers'
                'Exploring the woods'
                'Wandering the wild lands'
                'Getting lost in the woods'
            ]) + ' with my ' + choose([
                'mother'
                'father'
                'family'
                'tribe'
                'sister'
                'brother'
            ]) + choose([
                ''
                ' when I was ' + choose([
                    'a child'
                    'younger'
                ])
            ]) + '.'
            'The day I ' + choose([
                'followed the path of my ancestors'
                'mastered ' + choose([
                    'the art of stonecarving'
                    'the art of woodcarving'
                    'the art of making fire'
                    'the shamanic way'
                    'the art of painting images on cave walls'
                    'the techniques of spear-throwing'
                    'hunting'
                ])
            ]) + '.'
            choose([
                'The affection I felt for'
                'Talking late into the night with'
                'The kinship I felt for'
            ]) + ' ' + choose([
                'my mate'
                'my friend'
                'my friends'
                'my tribe'
            ]) + ' ' + choose([
                'when I was still a child'
                'when I was young'
                'when I was in training'
                'when I was on that great hunt'
            ]) + '.'
            'The day I ' + choose([
                'had my son'
                'had my daughter'
                'lost my father'
                'lost my mother'
                'became the last of my tribe and had to find a new tribe to take me in'
                'became accepted into a new tribe'
                'explored the wilderness with ' + choose([
                    'my mate'
                    'my friend'
                    'my tribe'
                ])
                'realized ' + choose([
                    'I'
                    'my son'
                    'my daughter'
                    'my father'
                    'my mother'
                ]) + ' was sick'
                'fell sick'
                'encountered members of another tribe'
                'had a skirmish with another tribe'
                'helped strike down a wild beast'
                'almost starved'
                'found a new way to cut rocks'
                'broke my ' + choose([
                    'leg'
                    'ankle'
                    'elbow'
                    'knee'
                    'nose'
                ])
                'got lost in the forest'
            ]) + '.'
        ], 1.5)

    ancientThought: -> # {{{1
        return weightedChoose([ choose([
            'Today. Nice day.'
            'Many things, today.'
            'Good year so far. Not many dead children.'
            "I sure hope wolves don't eat my baby again."
            'Family comes back from hunt soon. Right?'
            'Busy. Always busy.'
            'I was born too soon.'
            'I am young still. So much to learn!'
            'I must stay home because of wound. Total baloney.'
            'Spoiled meat and no fire is utter baloney.'
            'Beasts are getting scarce. Absolute baloney.'
            'The spirits must hate me. Only explanation.'
            'Oh, my aching head.'
            "No. I don't want."
            'This displeases me.'
            'Sun setting soon. Must ready the fire.'
            "We mustn't do that mistake with the fire again."
            'We live in surprising world.'
            'Many more hunts to come.'
            'What lies beyond hills?'
            'Does sun sleep behind mountains?'
            'I do not comprehend many things. But I will try.'
            'This world. I want to see more of it.'
            'I must ' + choose([
                'sharpen spears for next hunt'
                'prepare for next hunt'
                'tend to my children now'
                'get ready for big hunt'
                'get tools ready for tomorrow'
            ]) + '.'
            'I am curious. About distant things.'
            "I don't feel so sick anymore."
            "I won't eat raw rabbit again."
            choose([
                'She'
                'He'
                'They'
            ]) + ' ' + choose([
                'will regret it'
                'will regret saying that'
                'will regret doing that'
                'must pay'
                "will get what's coming"
                'will get what is deserved'
                'will see how right I was'
                'will not hold me back any longer'
                'will regret laughing at me'
            ]) + '.'
            choose([
                'Our shaman will guide us throughout.'
                'I trust our shaman to guide us in the right direction.'
                'I trust our shaman to point us to the right choices.'
                'Where has our shaman gone now?'
                'I must consult our shaman.'
            ])
            choose([
                'What is smoke on horizon?'
                'Moon... getting bigger.'
                'Will our shaman keep us safe?'
                'The Old Things come back soon.'
                'All the beasts, they are getting sick. What is happening?'
                'I do not want to take part in another sacrifice.'
                'Let us hope sacrifice was worth it.'
                'I do not like those dark rituals.'
                'I hope the Old Things will leave us alone this year.'
                'I keep finding these strange stones.'
                'I saw the lights. But nobody believes me.'
                'Oh boy. Shamanic ritual soon. We eat funny mushrooms.'
                'Have ritual. Smoke plants. All get naked. Good times.'
                'I shake fist at you, spirits!'
            ])
            'I have great idea! ' + choose([
                'Round stone. Rolls fast, make transportation!'
                'Shiny rocks. Melt on fire, make weapons!'
                'Hungry wolves. Make friends, hunt for us!'
                'Wild seeds. Plant in ground, harvest later!'
                'Babies. Eat the babies. Free meat!'
                'Tickle auroch udder, drink free udderjuice!'
                'Smash rocks found on the beach. Eat insides.'
            ])
        ]) ], 1.1)

    futureMemory: -> # {{{1
        return weightedChoose([
            choose([
                'Spraying the clearpath'
                'Clearing the tendrils'
                'Shedding our nanomolts'
                'Ionizing the biomass'
                'Collecting stardust'
                'Equipping my first synchotron'
                'Brainalyzing each other'
                'Learning how to use a transponder'
                'Reversing polarities'
                'Stepping into that astrodeck'
                'My first time in microgravity'
                'Browsing the stars'
                'Synthesizing new organisms'
                'That night we spent synthesizing every exotic food we could think of'
                'Synthesizing new outfits for hours'
                'Getting our lungs removed'
                'Riding the claytide'
                'Searching the moon for clams'
                'Learning old-timey cooking'
                'Visualizing old videoverses'
                'Experiencing that exciting new videoverse'
                'Losing our headsets and getting lost'
                'Earning my lifekey'
                'Inadvertantly spawning starkids'
            ]) + ' with my ' + choose([
                'biocontributor'
                'biocontributors'
                'distant biocontributor'
                'biosibling'
                'biomate'
                'biopartner'
                'nanobro'
                'nanofamily'
            ]) + choose([
                ''
                ''
                ''
                ' when I was ' + choose([
                    'a kid'
                    'younger'
                    randint(30, 120)
                ])
            ]) + '.'
            'The cycle I ' + choose([
                'learned how to ' + choose([
                    'sprowse a ship'
                    'cook the old-timey way'
                    'love'
                    'kiss'
                    'forgive'
                    'forget'
                    'make friends on the nanoverse'
                    'speak my hundredth language'
                    'play ' + choose([
                        'biano'
                        'prums'
                        'blitar'
                        'praxophone'
                        'videocards'
                    ])
                ])
                choose([
                    'graduated videoschool'
                    'graduated videocollege'
                    'got my sprowsing license'
                ])
                choose([
                    'got promoted as '
                    'got a job as '
                    'finally became '
                ]) + choose([
                    'a food pill designer'
                    'a videowriter'
                    'a videoverse engineer'
                    'a thoughtsprayer'
                    'a biomedic'
                    'a nanomedic'
                    'an exobiologist'
                    'a warfare engineer'
                    'a nanophysicist'
                    'a nanoscientist'
                    'a nanogeologist'
                    'a market intendant'
                    'a videoteacher'
                    'a historian'
                    'an archeologist'
                    'a videomusician'
                    'an videoartist'
                    'a bodyenhancer'
                    'a videodancer'
                    'a mindsensor'
                    'a commercial ship sprowser'
                    'a sprowseship engineer'
                    'a nanobot whisperer'
                ])
            ]) + '.'
            choose([
                'Kissing'
                'Cuddling with'
                'Visualizing videoverses with'
                'Staying up late with'
                'Sharing mindsecrets with'
                'Sharing childhood videomemories with'
                'Feeling close to'
                'Laying my arm around'
            ]) + ' ' + choose([
                'that one person'
                'my biomate'
                'my biopartner'
                'my nanobro'
            ]) + ' in ' + choose([
                'videoschool'
                'sprowsing school'
                'videocollege'
            ]) + '.'
            'The cycle I ' + choose([
                'got nanowed'
                'biocontributed my biodaughter'
                'biocontributed my bioson'
                'lost a biocontributor'
                'went on a trip with ' + choose([
                    'my biomate'
                    'my biopartner'
                    'my nanobro'
                    'my nanofamily'
                    'my biocontributors'
                ])
                'learned ' + choose([
                    'I'
                    'my bioson'
                    'my biodaughter'
                    'my biosibling'
                    'a biocontributor of mine'
                ]) + ' had a nanodisease'
                'learned we found a new galaxy'
                'learned we met a new lifeform'
                'got a new ' + choose([
                    'leg'
                    'ankle'
                    'elbow'
                    'knee'
                    'nose'
                    'brain'
                ])
                'ended my biocontract with my biomate'
                'lost my ' + weightedChoose([
                    'dwog'
                    'cwat'
                    'bwunny'
                    'namster'
                    'werbil'
                    'bwird'
                    'rubyfish'
                    'fwerret'
                    'giant lizard'
                    'pet clam'
                ], 1.5)
            ]) + '.'
            'That one unforgettable ' + choose([
                'videoverse'
                'videomemory'
                'mindsecret'
                'cosmotrip'
                'kiss'
                'person I met'
                'lifeform I met'
                'party'
            ]) + '.'
        ], 1.5)

    futureThought: -> # {{{1
        return weightedChoose([ choose([
            "That's nice... that's really nice."
            'All of this stuff is so nice.'
            'So nice, wow.'
            'I need a couple decades on an exotic planet to cool off.'
            "Oh boy, they've come up with a new food pill flavor!"
            'Which food pills will I be ingesting today?'
            'Who where?'
            'Those are nice limbs. I bet they cost, uh, a lot, though.'
            "I think I'll need more nanocredits."
            "We've come a long way."
            'What will we discover tomorrow?'
            'This system is getting cramped.'
            'I wonder - can we ever reverse entropy?'
            "Meatspace's getting stale for me."
            "I'm still at least " + randint(5, 90) + '% meat!'
            "I think I'll go visit some biorelatives."
            'Ugh. My biocontributors are visiting again.'
            "One day I'll just upload myself."
            choose([
                'Needs'
                'What this planet needs is'
                'What we need as a species is'
                'What I need is'
            ]) + ' ' + choose([
                'more clones'
                'more clams'
                'more magnets'
                'more nano'
                'more nanostuff'
                'more food pill flavors'
                'more planets'
                'more revived extinct species'
            ]) + '.'
            'These last few centuries have been a little boring.'
            "I'll say, I'm a little bit bored."
            "I don't really give a clam's hinge."
            "Everything's so nano."
            "That's totally nano."
            "I wonder, where's my nanobro right now?"
            "I hope we don't get assimilated."
            "I'm synthesizing " + choose([
                'dinosaurs'
                'trilobites'
                'businessmen'
                'birds'
                'cavemen'
                'clones'
                'forbidden food'
                'more nanogoo'
                'moonclams'
                'my own clone'
                'a synthesizing machine'
                'nanocredits'
            ]) + ' and nobody can stop me!'
            'I think I lost my ' + choose([
                'wall-vibrating device'
                'transponder'
                'synchotron'
                'pocket biano'
                'blitar'
                'praxophone'
                'moonclam'
                'ID key'
            ]) + '.'
            'Time for ' + choose([
                'a new brainlobe'
                'my nanomolting'
                'a new arm'
                'a new leg'
                'a new pelvis'
                'a new face'
                'a new nanomate'
                'my yearly checkup'
                'some sprowsing'
                'a good old videoverse'
            ]) + '!'
            choose([
                "That videoverse's plot is barely believable."
                'That videoverse has some nicely-written characters.'
                'I think this videoverse is too large for me.'
                "I'm getting lost in this videoverse."
                "I can't view this videoverse anymore. Way too scary."
                "I can't stop crying at that videoverse..."
            ])
        ]) ], 1.5)
