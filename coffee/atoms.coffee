#= require <thing>
#= require <rand>

# Source for isotope data:
# https://www.ncsu.edu/chemistry/msf/pdf/IsotopicMass_NaturalAbundance.pdf
# See notes/ for more info.

isotopeGenerator = (protons, electrons, naturalAbundances) ->
    ###
    # example naturalAbundances:
    # [[99, 16], [1, 15] 16 neutrons has 99% probability
    ###
    return ->
        neutrons = listWeightedChoose naturalAbundances
        return [
            "proton,#{protons}",
            "neutron,#{neutrons}",
            "electron,#{electrons}"
        ]

class Atom extends Thing
    constructor: (name_, protons, electrons, naturalAbundances, namegen) ->
        contains = isotopeGenerator(
            protons
            electrons
            naturalAbundances
        )

        super name_, contains, namegen

new Thing 'testium', isotopeGenerator(1, 1, [
    [50, 0], [50, 1]])

new Atom 'testium2', 1, 1, [
    [50, 0], [50, 1]]

# TODO: Hydrogen with two neutrons should be called deuterium. How would I go
#       about doing that?
new Thing 'hydrogen', isotopeGenerator(1, 1, [
    [99.9885, 1],
    [ 0.0115, 2],
    [ 0.0000, 3])

new Thing 'deuterium', isotopeGenerator(1, 1, [
    [100, 2]])

new Thing 'tritium',   isotopeGenerator(1, 1, [
    [100, 3]])

new Thing 'helium',  isotopeGenerator(2, 2, [
    [ 0.000137, 3],
    [99.999863, 4]])

new Thing 'lithium', isotopeGenerator(3, 3, [
    [ 7.59, 6],
    [92.41, 7]])

new Thing 'beryllium', isotopeGenerator(4, 4, [
    [100, 9]])

new Thing 'boron', isotopeGenerator(5, 5, [
    [19.9, 10],
    [80.1, 11]])

new Thing 'carbon', isotopeGenerator(6, 6, [
    [98.93, 12],
    [ 1.07, 13],
    [ 0.00, 14]])

new Thing 'nitrogen', isotopeGenerator(7, 7, [
    [99.632, 14],
    [ 0.368, 15]])

new Thing 'oxygen', isotopeGenerator(9, 9, [
    [99.757, 16],
    [ 0.038, 17],
    [ 0.205, 18]])

new Thing 'fluorine', isotopeGenerator(9, 9, [
    [100, 19]])

new Thing 'neon', isotopeGenerator(10, 10, [
    [90.48, 20],
    [ 0.27, 21],
    [ 9.25, 22]])

new Thing 'sodium', isotopeGenerator(11, 11, [
    [100, 23]])

new Thing 'magnesium', isotopeGenerator(12, 12, [
    [78.99, 24],
    [10.00, 25],
    [11.01, 26]])

new Thing 'aluminum', isotopeGenerator(13, 13, [
    [100, 27]])

new Thing 'silicon', isotopeGenerator(14, 14, [
    [92.2297, 28]
    [ 4.6832, 29]
    [ 3.0872, 30]])

new Thing 'phosphorus', isotopeGenerator(15, 15, [
    [100, 31]])

new Thing 'sulphur', isotopeGenerator(16, 16, [
    [94.93, 32]
    [ 0.76, 33]
    [ 4.29, 34]
    [ 0.02, 36]])

new Thing 'chlorine', isotopeGenerator(17, 17, [
    [75.78, 35]
    [24.22, 37]])

new Thing 'argon', isotopeGenerator(18, 18, [
    [ 0.3365, 36]
    [ 0.0632, 38]
    [99.6003, 40]])

new Thing 'potassium', isotopeGenerator(19, 19, [
    [93.2581, 39]
    [ 0.0117, 40]
    [ 6.7302, 41]])

new Thing 'calcium', isotopeGenerator(20, 20, [
    [96.941, 40]
    [ 0.647, 42]
    [ 0.135, 43]
    [ 2.086, 44]
    [ 0.004, 46]
    [ 0.187, 48]])

new Thing 'scandium', isotopeGenerator(21, 21, [
    [100, 45]])

new Thing 'titanium', isotopeGenerator(22, 22, [
    [ 8.25, 46]
    [ 7.44, 47]
    [73.72, 48]
    [ 5.41, 49]
    [ 5.18, 50]
])

new Thing 'vanadium', isotopeGenerator(23, 23, [
    [ 0.250, 50]
    [99.750, 51]])

new Thing 'chromium', isotopeGenerator(24, 24, [
    [ 4.345, 50]
    [83.789, 52]
    [ 9.501, 53]
    [ 2.365, 54]])

new Thing 'manganese', isotopeGenerator(25, 25, [
    [100, 55]])

new Thing 'iron', isotopeGenerator(26, 26, [
    [ 5.845, 54]
    [91.754, 56]
    [ 2.119, 57]
    [ 0.282, 58]])

new Thing 'cobalt', isotopeGenerator(27, 27, [
    [100, 59]])

new Thing 'nickel', isotopeGenerator(28, 28, [
    [68.0769, 58]
    [26.2231, 60]
    [ 1.1399, 61]
    [ 3.6345, 62]
    [ 0.9256, 64]])

new Thing 'copper', isotopeGenerator(29, 29, [
    [69.17, 63]
    [30.83, 65]])

new Thing 'zinc', isotopeGenerator(30, 30, [
    [48.63, 64]
    [27.90, 66]
    [ 4.10, 67]
    [18.75, 68]
    [ 0.62, 70]])

new Thing 'gallium', isotopeGenerator(31, 31, [
    [60.108, 69]
    [39.892, 71]])

new Thing 'germanium', isotopeGenerator(32, 32, [
    [20.84, 70]
    [27.54, 72]
    [ 7.73, 73]
    [36.28, 74]
    [ 7.61, 76]])

new Thing 'arsenic', isotopeGenerator(33, 33, [
    [100, 75]])

new Thing 'selenium', isotopeGenerator(34, 34, [
    [ 0.89, 74]
    [ 9.37, 76]
    [ 7.63, 77]
    [23.77, 78]
    [49.61, 80]
    [ 8.73, 82]])

new Thing 'bromine', isotopeGenerator(35, 35, [
    [50.69, 79]
    [49.31, 81]])

new Thing 'krypton', isotopeGenerator(36, 36, [
    [ 0.35, 78]
    [ 2.28, 80]
    [11.58, 82]
    [11.49, 83]
    [57.00, 84]
    [17.30, 86]])

new Thing 'rubidium', isotopeGenerator(37, 37, [
    [72.17, 85]
    [27.83, 87]])

new Thing 'strontium', isotopeGenerator(38, 38, [
    [ 0.56, 84]
    [ 9.86, 86]
    [ 7.00, 87]
    [82.58, 88]])

new Thing 'yttrium', isotopeGenerator(39, 39, [
    [100, 89]])

new Thing 'zirconium', isotopeGenerator(40, 40, [
    [51.45, 90]
    [11.22, 91]
    [17.15, 92]
    [17.38, 94]
    [ 2.80, 96]])

new Thing 'niobium', isotopeGenerator(41, 41, [
    [100, 93]])

new Thing 'molybdenum', isotopeGenerator(42, 42, [
    [14.84, 92]
    [ 9.25, 94]
    [15.92, 95]
    [16.68, 96]
    [ 9.55, 97]
    [24.13, 98]
    [ 9.63, 100]])

new Thing 'technetium', isotopeGenerator(43, 43, [
    [100, 98]])

new Thing 'ruthenium', isotopeGenerator(44, 44, [
    [5.54, 96]
    [1.87, 98]
    [12.76, 99]
    [12.60, 100]
    [17.06, 101]
    [31.55, 102]
    [18.62, 104]])

new Thing 'rhodium', isotopeGenerator(45, 45, [
    [100, 103]])

new Thing 'palladium', isotopeGenerator(46, 46, [
    [ 1.02, 102]
    [11.14, 104]
    [22.33, 105]
    [27.33, 106]
    [26.46, 108]
    [11.72, 110]])

new Thing 'silver', isotopeGenerator(47, 47, [
    [51.839, 107]
    [48.161, 109]])

new Thing 'cadmium', isotopeGenerator(48, 48, [
    [ 1.25, 106]
    [ 0.89, 108]
    [12.49, 110]
    [12.80, 111]
    [24.13, 112]
    [12.22, 113]
    [28.73, 114]
    [ 7.49, 116]])

new Thing 'indium', isotopeGenerator(49, 49, [
    [ 4.29, 113]
    [95.71, 115]])

new Thing 'tin', isotopeGenerator(50, 50, [
    [ 0.97, 112]
    [ 0.66, 114]
    [ 0.34, 115]
    [14.54, 116]
    [ 7.68, 117]
    [24.22, 118]
    [ 8.59, 119]
    [32.58, 120]
    [ 4.63, 122]
    [ 5.79, 124]])

new Thing 'antimony', isotopeGenerator(51, 51, [
    [57.21, 121]
    [42.79, 123]])

new Thing 'tellurium', isotopeGenerator(52, 52, [
    [0.09, 120]
    [2.55, 122]
    [0.89, 123]
    [4.74, 124]
    [7.07, 125]
    [18.84, 126]
    [31.74, 128]
    [34.08, 130]])

new Thing 'iodine', isotopeGenerator(53, 53, [
    [100, 127]])

new Thing 'xenon', isotopeGenerator(54, 54, [
    [ 0.09, 124]
    [ 0.09, 126]
    [ 1.92, 128]
    [26.44, 129]
    [ 4.08, 130]
    [21.18, 131]
    [26.89, 132]
    [10.44, 134]
    [ 8.87, 136]])

new Thing 'cesium', isotopeGenerator(55, 55, [
    [100, 133]])

new Thing 'barium', isotopeGenerator(56, 56, [
    [ 0.106, 130]
    [ 0.101, 132]
    [ 2.417, 134]
    [ 6.592, 135]
    [ 7.854, 136]
    [11.232, 137]
    [71.698, 138]])

new Thing 'lanthanum', isotopeGenerator(57, 57, [
    [ 0.090, 138]
    [99.910, 139]])

new Thing 'cerium', isotopeGenerator(58, 58, [
    [ 0.185, 136]
    [ 0.251, 138]
    [88.450, 140]
    [11.114, 142]])

new Thing 'praseodymium', isotopeGenerator(59, 59, [
    [100, 141]])

new Thing 'neodymium', isotopeGenerator(60, 60, [
    [27.2, 142]
    [12.2, 143]
    [23.8, 144]
    [ 8.3, 145]
    [17.2, 146]
    [ 5.7, 148]
    [ 5.6, 150]])

new Thing 'promethium', isotopeGenerator(61, 61, [
    [100, 145]])

new Thing 'samarium', isotopeGenerator(62, 62, [
    [ 3.07, 144]
    [14.99, 147]
    [11.24, 148]
    [13.82, 149]
    [ 7.38, 150]
    [26.75, 152]
    [22.75, 154]])

new Thing 'europium', isotopeGenerator(63, 63, [
    [47.81, 151]
    [52.19, 153]])

new Thing 'gadolinium', isotopeGenerator(64, 64, [
    [ 0.20, 152]
    [ 2.18, 154]
    [14.80, 155]
    [20.47, 156]
    [15.65, 157]
    [24.84, 158]
    [21.86, 160]])

new Thing 'terbium', isotopeGenerator(65, 65, [
    [100, 159]])

new Thing 'dysprosium', isotopeGenerator(66, 66, [
    [ 0.06, 156]
    [ 0.10, 158]
    [ 2.34, 160]
    [18.91, 161]
    [25.51, 162]
    [24.90, 163]
    [28.18, 164]])

new Thing 'holmium', isotopeGenerator(67, 67, [
    [100, 165]])

new Thing 'erbium', isotopeGenerator(68, 68, [
    [ 0.14, 162]
    [ 1.61, 164]
    [33.61, 166]
    [22.93, 167]
    [26.78, 168]
    [14.93, 170]])

new Thing 'thulium', isotopeGenerator(69, 69, [
    [100, 169]])

new Thing 'ytterbium', isotopeGenerator(70, 70, [
    [ 0.13, 168]
    [ 3.04, 170]
    [14.28, 171]
    [21.83, 172]
    [16.13, 173]
    [31.83, 174]
    [12.76, 176]])

new Thing 'lutetium', isotopeGenerator(71, 71, [
    [97.41, 175]
    [ 2.59, 176]])

new Thing 'hafnium', isotopeGenerator(72, 72, [
    [ 0.16, 174]
    [ 5.26, 176]
    [18.60, 177]
    [27.28, 178]
    [13.62, 179]
    [35.08, 180]])

new Thing 'tantalum', isotopeGenerator(73, 73, [
    [ 0.012, 180]
    [99.988, 181]])

new Thing 'tungsten', isotopeGenerator(74, 74, [
    [ 0.12, 180]
    [26.50, 182]
    [14.31, 183]
    [30.64, 184]
    [28.43, 186]])

new Thing 'rhenium', isotopeGenerator(75, 75, [
    [37.40, 185]
    [62.60, 187]])

new Thing 'osmium', isotopeGenerator(76, 76, [
    [ 0.02, 184]
    [ 1.59, 186]
    [ 1.96, 187]
    [13.24, 188]
    [16.15, 189]
    [26.26, 190]
    [40.78, 192]])

new Thing 'iridium', isotopeGenerator(77, 77, [
    [37.3, 191]
    [62.7, 193]])

new Thing 'platinum', isotopeGenerator(78, 78, [
    [ 0.014, 190]
    [ 0.782, 192]
    [32.967, 194]
    [33.832, 195]
    [25.242, 196]
    [ 7.163, 198]])

new Thing 'gold', isotopeGenerator(79, 79, [
    [100, 197]])

new Thing 'mercury', isotopeGenerator(80, 80, [
    [ 0.15, 196]
    [ 9.97, 198]
    [16.87, 199]
    [23.10, 200]
    [13.18, 201]
    [29.86, 202]
    [ 6.87, 204]])

new Thing 'thallium', isotopeGenerator(81, 81, [
    [29.524, 203]
    [70.476, 205]])

new Thing 'lead', isotopeGenerator(82, 82, [
    [ 1.4, 204]
    [24.1, 206]
    [22.1, 207]
    [52.4, 208]])

new Thing 'bismuth', isotopeGenerator(83, 83, [
    [100, 209]])

new Thing 'polonium', isotopeGenerator(84, 84, [
    [100, 209]])


new Thing 'astatine', isotopeGenerator(85, 85, [
    [100, 210]])

new Thing 'radon', isotopeGenerator(86, 86, [
    [100, 222]])

new Thing 'francium', isotopeGenerator(87, 87, [
    [100, 223]])

new Thing 'radium', isotopeGenerator(88, 88, [
    [100, 226]])

new Thing 'actinium', isotopeGenerator(89, 89, [
    [100, 227]])

new Thing 'thorium', isotopeGenerator(90, 90, [
    [100, 232]])

new Thing 'protactinium', isotopeGenerator(91, 91, [
    [100, 231]])

new Thing 'uranium', isotopeGenerator(92, 92, [
    [ 0.0055, 234]
    [ 0.7200, 235]
    [99.2745, 238]])

new Thing 'neptunium', isotopeGenerator(93, 93, [
    [100, 237]])

new Thing 'plutonium', isotopeGenerator(94, 94, [
    [100, 244]])

new Thing 'americium', isotopeGenerator(95, 95, [
    [100, 243]])

new Thing 'curium', isotopeGenerator(96, 96, [
    [100, 247]])

new Thing 'berkelium', isotopeGenerator(97, 97, [
    [100, 247]])

new Thing 'californium', isotopeGenerator(98, 98, [
    [100, 251]])

new Thing 'einsteinium', isotopeGenerator(99, 99, [
    [100, 252]])

new Thing 'fermium', isotopeGenerator(100, 100, [
    [100, 257]])

new Thing 'mendelevium', isotopeGenerator(101, 101, [
    [100, 258]])

new Thing 'nobelium', isotopeGenerator(102, 102, [
    [100, 259]])

new Thing 'lawrencium', isotopeGenerator(103, 103, [
    [100, 262]])

new Thing 'rutherfordium', isotopeGenerator(104, 104, [
    [100, 263]])

new Thing 'dubnium', isotopeGenerator(105, 105, [
    [100, 262]])

new Thing 'seaborgium', isotopeGenerator(106, 106, [
    [100, 266]])

new Thing 'bohrium', isotopeGenerator(107, 107, [
    [100, 264]])

new Thing 'hassium', isotopeGenerator(108, 108, [
    [100, 269]])

new Thing 'meitnerium', isotopeGenerator(109, 109, [
    [100, 268]])

new Thing 'ununnilium', isotopeGenerator(110, 110, [
    [100, 272]])

new Thing 'unununium', isotopeGenerator(111, 111, [
    [100, 272]])

new Thing 'ununbium', isotopeGenerator(112, 112, [
    [100, 277]])

new Thing 'ununquadium', isotopeGenerator(114, 114, [
    [100, 289]])

new Thing 'ununhexium', isotopeGenerator(116, 116, [
    [100, 289]])

new Thing 'ununoctium', isotopeGenerator(118, 118, [
    [100, 293]])
