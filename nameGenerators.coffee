#vim: foldmethod=marker
#= require <rand>

FEMALE         = 0
MALE           = 1
INVALID_GENDER = 2

nameGenerators =
    modern: (gender) -> # {{{1
        # Generates a first name + last name, compiled from the 100 most
        # popular names in the USA. Yes, every person in the universe is an
        # American.

        #http://names.mongabay.com/male_names.htm
        if gender == FEMALE
            str = weightedChoose([
                'Mary', 'Patricia', 'Linda', 'Barbara', 'Elizabeth', # {{{
                'Jennifer', 'Maria', 'Susan', 'Margaret', 'Dorothy', 'Lisa',
                'Nancy', 'Karen', 'Betty', 'Helen', 'Sandra', 'Donna', 'Carol',
                'Ruth', 'Sharon', 'Michelle', 'Laura', 'Sarah', 'Kimberly',
                'Deborah', 'Jessica', 'Shirley', 'Cynthia', 'Angela',
                'Melissa', 'Brenda', 'Amy', 'Anna', 'Rebecca', 'Virginia',
                'Kathleen', 'Pamela', 'Martha', 'Debra', 'Amanda', 'Stephanie',
                'Carolyn', 'Christine', 'Marie', 'Janet', 'Catherine',
                'Frances', 'Ann', 'Joyce', 'Diane', 'Alice', 'Julie',
                'Heather', 'Teresa', 'Doris', 'Gloria', 'Evelyn', 'Jean',
                'Cheryl', 'Mildred', 'Katherine', 'Joan', 'Ashley', 'Judith',
                'Rose', 'Janice', 'Kelly', 'Nicole', 'Judy', 'Christina',
                'Kathy', 'Theresa', 'Beverly', 'Denise', 'Tammy', 'Irene',
                'Jane', 'Lori', 'Rachel', 'Marilyn', 'Andrea', 'Kathryn',
                'Louise', 'Sara', 'Anne', 'Jacqueline', 'Wanda', 'Bonnie',
                'Julia', 'Ruby', 'Lois', 'Tina', 'Phyllis', 'Norma', 'Paula',
                'Diana', 'Annie', 'Lillian', 'Emily', 'Robin', # }}}
            ], 1.2)
        else if gender == MALE
            str = weightedChoose([
                'James', 'John', 'Robert', 'Michael', 'William', 'David',# {{{
                'Richard', 'Charles', 'Joseph', 'Thomas', 'Christopher',
                'Daniel', 'Paul', 'Mark', 'Donald', 'George', 'Kenneth',
                'Steven', 'Edward', 'Brian', 'Ronald', 'Anthony', 'Kevin',
                'Jason', 'Matthew', 'Gary', 'Timothy', 'Jose', 'Larry',
                'Jeffrey', 'Frank', 'Scott', 'Eric', 'Stephen', 'Andrew',
                'Raymond', 'Gregory', 'Joshua', 'Jerry', 'Dennis', 'Walter',
                'Patrick', 'Peter', 'Harold', 'Douglas', 'Henry', 'Carl',
                'Arthur', 'Ryan', 'Roger', 'Joe', 'Juan', 'Jack', 'Albert',
                'Jonathan', 'Justin', 'Terry', 'Gerald', 'Keith', 'Samuel',
                'Willie', 'Ralph', 'Lawrence', 'Nicholas', 'Roy', 'Benjamin',
                'Bruce', 'Brandon', 'Adam', 'Harry', 'Fred', 'Wayne', 'Billy',
                'Steve', 'Louis', 'Jeremy', 'Aaron', 'Randy', 'Howard',
                'Eugene', 'Carlos', 'Russell', 'Bobby', 'Victor', 'Martin',
                'Ernest', 'Phillip', 'Todd', 'Jesse', 'Craig', 'Alan', 'Shawn',
                'Clarence', 'Sean', 'Philip', 'Chris', 'Johnny', 'Earl',
                'Jimmy', 'Antonio',# }}}
            ], 1.2)

        str += ' '
        if randint(0, 30) == 1
            str += 'Mc'

        str += weightedChoose([
            'Smith', 'Johnson', 'Williams', 'Brown', 'Jones', 'Miller', # {{{
            'Davis', 'Garcia', 'Rodriguez', 'Wilson', 'Martinez', 'Anderson',
            'Taylor', 'Thomas', 'Hernandez', 'Moore', 'Martin', 'Jackson',
            'Thompson', 'White', 'Lopez', 'Lee', 'Gonzalez', 'Harris', 'Clark',
            'Lewis', 'Robinson', 'Walker', 'Perez', 'Hall', 'Young', 'Allen',
            'Sanchez', 'Wright', 'King', 'Scott', 'Green', 'Baker', 'Adams',
            'Nelson', 'Hill', 'Ramirez', 'Campbell', 'Mitchell', 'Roberts',
            'Carter', 'Phillips', 'Evans', 'Turner', 'Torres', 'Parker',
            'Collins', 'Edwards', 'Stewart', 'Flores', 'Morris', 'Nguyen',
            'Murphy', 'Rivera', 'Cook', 'Rogers', 'Morgan', 'Peterson',
            'Cooper', 'Reed', 'Bailey', 'Bell', 'Gomez', 'Kelly', 'Howard',
            'Ward', 'Cox', 'Diaz', 'Richardson', 'Wood', 'Watson', 'Brooks',
            'Bennett', 'Gray', 'James', 'Reyes', 'Cruz', 'Hughes', 'Price',
            'Myers', 'Long', 'Foster', 'Sanders', 'Ross', 'Morales', 'Powell',
            'Sullivan', 'Russell', 'Ortiz', 'Jenkins', 'Gutierrez', 'Perry',
            'Butler', 'Barnes', 'Fisher', 'Henderson', 'Coleman', 'Simmons',
            'Patterson', 'Jordan', 'Reynolds', 'Hamilton', 'Graham', 'Kim',
            'Gonzales', 'Alexander', 'Ramos', 'Wallace', 'Griffin', 'West',
            'Cole', 'Hayes', 'Chavez', 'Gibson', 'Bryant', 'Ellis', 'Stevens',
            'Murray', 'Ford', 'Marshall', 'Owens', 'Mcdonald', 'Harrison',
            'Ruiz', 'Kennedy', 'Wells', 'Alvarez', 'Woods', 'Mendoza',
            'Castillo', 'Olson', 'Webb', 'Washington', 'Tucker', 'Freeman',
            'Burns', 'Henry', 'Vasquez', 'Snyder', 'Simpson', 'Crawford',
            'Jimenez', 'Porter', 'Mason', 'Shaw', 'Gordon', 'Wagner', 'Hunter',
            'Romero', 'Hicks', 'Dixon', 'Hunt', 'Palmer', 'Robertson', 'Black',
            'Holmes', 'Stone', 'Meyer', 'Boyd', 'Mills', 'Warren', 'Fox',
            'Rose', 'Rice', 'Moreno', 'Schmidt', 'Patel', 'Ferguson',
            'Nichols', 'Herrera', 'Medina', 'Ryan', 'Fernandez', 'Weaver',
            'Daniels', 'Stephens', 'Gardner', 'Payne', 'Kelley', 'Dunn',
            'Pierce', 'Arnold', 'Tran', 'Spencer', 'Peters', 'Hawkins',
            'Grant', 'Hansen', 'Castro', 'Hoffman', 'Hart', 'Elliott',
            'Cunningham', 'Knight', 'Bradley', # }}}
        ], 2)

        if gender == MALE and randint(0, 2000) == 1
            str = choose([
                'Elvis Presley'
                'Gabe Newell'
            ])
        # 4chan made me do it

        return str

    medieval: (gender) -> # {{{1
        # Generates a medieval first name + last name, mostly taken from
        # http://www.infernaldreams.com/names/Europe/Medieval/England.htm
        if gender == FEMALE
            str = choose([
                'Millicent', 'Alinor', 'Eleanor', 'Agnes', 'Alice', 'Avice',# {{{
                'Beatrice', 'Cecily', 'Emma', 'Isabella', 'Joan', 'Juliana',
                'Margery', 'Matilda', 'Roh', 'Morgan', 'Elizabeth', 'Kethleen',# }}}
            ])
        else if gender == MALE
            str = choose([
                'Adam', 'Geoffrey', 'Gilbert', 'Henry', 'Hugh', 'John',# {{{
                'Nicholas', 'Peter', 'Ralf', 'Richard', 'Robert', 'Roger',
                'Simon', 'Thomas', 'Walter', 'William', 'Robin', 'Albin',
                'Bayard', 'Erwin',# }}}
            ])

        str += ' ' + choose([
            'Strong', 'Tall', 'Grand', 'Bold', 'Big', 'Small', 'Fine', 'Good',# {{{
            'Glad', 'Green', 'Blue', 'Red', 'Black', 'White', 'Pale', 'Gray',
            'Gold', 'Silver', 'Dark', 'Light', 'Brave', 'Sly',# }}}
        ]) + choose([
            'ington', 'son', 'house', 'door', 'castle', 'forest', 'tree',# {{{
            'leaf', 'wind', 'rain', 'snow', 'rock', 'stone', 'river', 'sea',
            'ship', 'smith', 'craft', 'cook', 'worth', 'might', 'wolf', 'bear',
            'sheep', 'pig', 'fox', 'hunt', 'dragon',# }}}
        ])

        return str

    ancient: (gender) -> # {{{1
        #Generates a primitive name
        str = choose([
            'Passing', 'Walking', 'Running', 'Sitting', 'Kneeling', 'Timid',# {{{
            'Dreaming', 'Swift', 'Deadly', 'Wise', 'Old', 'Young', 'Ugly',
            'Bright', 'Broken', 'Fine', 'Soulful', 'Loud', 'Mad', 'Crazed',
            'Unending', 'Lone', 'Sure', 'Steady', 'Hungry', 'Crafty',
            'Thirsty', 'Rising', 'Falling', 'Huge', 'Magnificent', 'Deep',
            'Aching', 'Mourning', 'Sweet', 'Kind', 'Comforting', 'Misshapen',
            'Smiling', 'Sneaking', 'Trusted', 'Shifty', 'Furious', 'Lustful',# }}}
        ])

        str += ' ' + choose([
            'Thought', 'Eyes', 'Legs', 'Hands', 'Nose', 'Sorrow', 'Scream',# {{{
            'Whisper', 'Rage', 'Stream', 'River', 'Sky', 'Light', 'Spark',
            'Moon', 'Sun', 'Star', 'Forest', 'Cloud', 'Tree', 'Rock', 'Beast',
            'Rabbit', 'Wolf', 'Auroch', 'Mammoth', 'Lion', 'Spear', 'Flame',
            'Cave', 'Ocean', 'Snail', 'Slug', 'Bear', 'Shark', 'Toad', 'Day',
            'Night', 'Friend', 'Snake', 'Ears', 'Spirit', 'Track', 'Pebble',
            'Boulder', 'Mountain', 'Volcano', 'Storm', 'Rain', 'Snow',# }}}
        ])

        if gender == MALE and randint(0, 250) == 1
            str = 'Dave'

        return str

    future: (gender) -> # {{{1
        # Generates a futuristic first name + last name

        if gender == FEMALE
            str = choose([
                'Alice', 'Trillian', 'Zeria', 'Zinda', 'Myriad', 'Shosset',# {{{
                'Tary', 'Wayt', 'Cassidy', 'Millanda', 'Replika', 'Simia',
                'Mirrix', 'Bariona', 'Sossis', 'Kroassent', 'Five', 'Seven',
                'Fourteen',# }}}
            ])
        else if gender == MALE
            str = choose([
                'Bob', 'Zaphod', 'Zorvax', 'Zerebius', 'Borbon', 'Bradbury',# {{{
                'Isaac', 'Werber', 'Omni', 'Robion', 'Shossur', 'Alistor',
                'Clonos', 'Sorbel', 'Boodin', 'Bagget', 'Three', 'Twelve',
                'Twenty',# }}}
            ])

        str += ' ' + choose([
            'Zar', 'Star', 'Solar', 'Jaro', 'Mera', 'Gar', 'Dar', 'Bar', 'Mar',# {{{
            'Mor', 'Dor', 'Kar', 'Kra', 'Sbur', 'Bostro', 'Astro', 'Cosmo',
            'Poly', 'Beeble', 'Pro', 'Nano', 'Shimmer', 'Glimmer', 'Wander',
            'Lea', 'Magna',# }}}
        ])

        str += choose([
            'bion', 'bius', 'micus', 'bicus', 'dion', 'dius', 'billion',# {{{
            'million', 'bistor', 'bostrud', 'wund', 'brox', 'biotis', 'saurus',
            'boticus', 'meld', 'sweep', 'block', 'dine', 'zine', 'nople',
            'neon', 'ba', 'zor', 'zar', 'klor',# }}}
        ])

        return str
