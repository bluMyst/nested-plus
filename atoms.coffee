#= require <thing>

# Source for isotope data: https://www.ncsu.edu/chemistry/msf/pdf/IsotopicMass_NaturalAbundance.pdf

# TODO: Hydrogen with two neutrons should be called deuterium. How would I go
#       about doing that?
new Thing('hydrogen',  ['proton,1', 'neutron', 'neutron,0.0115%', 'electron,1'])
new Thing('deuterium', ['proton,1', 'neutron,2', 'electron,1'])
new Thing('tritium',   ['proton,1', 'neutron,3', 'electron,1'])

new Thing('helium', ['proton,2', 'neutron,3', 'neutron,99.999863%', 'electron,2'])
new Thing('lithium', ['proton,3', 'neutron,6', 'neutron,92.41%', 'electron,3'])
new Thing('beryllium', ['proton,4', 'neutron,9', 'electron,4'])
new Thing('boron', ['proton,5', 'neutron,10', 'neutron,80.1%', 'electron,5'])
new Thing('carbon', ['proton,6', 'neutron,12', 'neutron,1.07%', 'electron,6'])
new Thing('nitrogen', ['proton,7', 'neutron,14', 'neutron,0.368%', 'electron,7'])


# TODO: How am I supposed to do this?
# 8 Oxygen 16O 99.757
#          17O 0.038
#          18O 0.205
new Thing('oxygen', ['proton,9', 'neutron,16', 'neutron,0.038', 'neutron,0.205%', 'electron,8'])

new Thing('fluorine', ['proton,9', 'neutron,19', 'electron,9'])

# TODO:
# 10 Neon 20Ne 90.48
#         21Ne 0.27
#         22Ne 9.25
new Thing('neon', ['proton,10', 'neutron,20', 'neutron,0.27%', 'neutron,9.25%', 'electron,10'])

new Thing('sodium', ['proton,11', 'neutron,23', 'electron,11'])

# TODO:
# 12 Magnesium 24Mg 78.99
#              25Mg 10.00
#              26Mg 11.01
new Thing('magnesium', ['proton,12', 'neutron,24', 'neutron,10%', 'neutron,11.01%', 'electron,12'])
new Thing('aluminum', ['proton,13', 'neutron,27', 'electron,13'])
new Thing('silicon', ['proton,14', 'neutron,28', 'electron,14']) # TODO: isotope data
new Thing('phosphorus', ['proton,15', 'neutron,31', 'electron,15'])
new Thing('sulfur', ['proton,16', 'neutron,32', 'electron,16']) # TODO: isotope data

# TODO: Everything after this point has no isotope data
new Thing('chlorine', ['proton,17', 'neutron,0-3', 'electron,17'])
new Thing('argon', ['proton,18', 'neutron,0-3', 'electron,18'])
new Thing('potassium', ['proton,19', 'neutron,0-3', 'electron,19'])
new Thing('calcium', ['proton,20', 'neutron,0-3', 'electron,20'])
new Thing('scandium', ['proton,21', 'neutron,0-3', 'electron,21'])
new Thing('titanium', ['proton,22', 'neutron,0-3', 'electron,22'])
new Thing('vanadium', ['proton,23', 'neutron,0-3', 'electron,23'])
new Thing('chromium', ['proton,24', 'neutron,0-3', 'electron,24'])
new Thing('manganese', ['proton,25', 'neutron,0-3', 'electron,25'])
new Thing('iron', ['proton,26', 'neutron,0-3', 'electron,26'])
new Thing('cobalt', ['proton,27', 'neutron,0-3', 'electron,27'])
new Thing('nickel', ['proton,28', 'neutron,0-3', 'electron,28'])
new Thing('copper', ['proton,29', 'neutron,0-3', 'electron,29'])
new Thing('zinc', ['proton,30', 'neutron,0-3', 'electron,30'])
new Thing('gallium', ['proton,31', 'neutron,0-3', 'electron,31'])
new Thing('germanium', ['proton,32', 'neutron,0-3', 'electron,32'])
new Thing('arsenic', ['proton,33', 'neutron,0-3', 'electron,33'])
new Thing('selenium', ['proton,34', 'neutron,0-3', 'electron,34'])
new Thing('bromine', ['proton,35', 'neutron,0-3', 'electron,35'])
new Thing('krypton', ['proton,36', 'neutron,0-3', 'electron,36'])
new Thing('rubidium', ['proton,37', 'neutron,0-3', 'electron,37'])
new Thing('strontium', ['proton,38', 'neutron,0-3', 'electron,38'])
new Thing('yttrium', ['proton,39', 'neutron,0-3', 'electron,39'])
new Thing('zirconium', ['proton,40', 'neutron,0-3', 'electron,40'])
new Thing('niobium', ['proton,41', 'neutron,0-3', 'electron,41'])
new Thing('molybdenum', ['proton,42', 'neutron,0-3', 'electron,42'])
new Thing('technetium', ['proton,43', 'neutron,0-3', 'electron,43'])
new Thing('ruthenium', ['proton,44', 'neutron,0-3', 'electron,44'])
new Thing('rhodium', ['proton,45', 'neutron,0-3', 'electron,45'])
new Thing('palladium', ['proton,46', 'neutron,0-3', 'electron,46'])
new Thing('silver', ['proton,47', 'neutron,0-3', 'electron,47'])
new Thing('cadmium', ['proton,48', 'neutron,0-3', 'electron,48'])
new Thing('indium', ['proton,49', 'neutron,0-3', 'electron,49'])
new Thing('tin', ['proton,50', 'neutron,0-3', 'electron,50'])
new Thing('antimony', ['proton,51', 'neutron,0-3', 'electron,51'])
new Thing('tellurium', ['proton,52', 'neutron,0-3', 'electron,52'])
new Thing('iodine', ['proton,53', 'neutron,0-3', 'electron,53'])
new Thing('xenon', ['proton,54', 'neutron,0-3', 'electron,54'])
new Thing('cesium', ['proton,55', 'neutron,0-3', 'electron,55'])
new Thing('barium', ['proton,56', 'neutron,0-3', 'electron,56'])
new Thing('lanthanum', ['proton,57', 'neutron,0-3', 'electron,57'])
new Thing('cerium', ['proton,58', 'neutron,0-3', 'electron,58'])
new Thing('praseodymium', ['proton,59', 'neutron,0-3', 'electron,59'])
new Thing('neodymium', ['proton,60', 'neutron,0-3', 'electron,60'])
new Thing('promethium', ['proton,61', 'neutron,0-3', 'electron,61'])
new Thing('samarium', ['proton,62', 'neutron,0-3', 'electron,62'])
new Thing('europium', ['proton,63', 'neutron,0-3', 'electron,63'])
new Thing('gadolinium', ['proton,64', 'neutron,0-3', 'electron,64'])
new Thing('terbium', ['proton,65', 'neutron,0-3', 'electron,65'])
new Thing('dysprosium', ['proton,66', 'neutron,0-3', 'electron,66'])
new Thing('holmium', ['proton,67', 'neutron,0-3', 'electron,67'])
new Thing('erbium', ['proton,68', 'neutron,0-3', 'electron,68'])
new Thing('thulium', ['proton,69', 'neutron,0-3', 'electron,69'])
new Thing('ytterbium', ['proton,70', 'neutron,0-3', 'electron,70'])
new Thing('lutetium', ['proton,71', 'neutron,0-3', 'electron,71'])
new Thing('hafnium', ['proton,72', 'neutron,0-3', 'electron,72'])
new Thing('tantalum', ['proton,73', 'neutron,0-3', 'electron,73'])
new Thing('tungsten', ['proton,74', 'neutron,0-3', 'electron,74'])
new Thing('rhenium', ['proton,75', 'neutron,0-3', 'electron,75'])
new Thing('osmium', ['proton,76', 'neutron,0-3', 'electron,76'])
new Thing('iridium', ['proton,77', 'neutron,0-3', 'electron,77'])
new Thing('platinum', ['proton,78', 'neutron,0-3', 'electron,78'])
new Thing('gold', ['proton,79', 'neutron,0-3', 'electron,79'])
new Thing('mercury', ['proton,80', 'neutron,0-3', 'electron,80'])
new Thing('thallium', ['proton,81', 'neutron,0-3', 'electron,81'])
new Thing('lead', ['proton,82', 'neutron,0-3', 'electron,82'])
new Thing('bismuth', ['proton,83', 'neutron,0-3', 'electron,83'])
new Thing('polonium', ['proton,84', 'neutron,0-3', 'electron,84'])
new Thing('astatine', ['proton,85', 'neutron,0-3', 'electron,85'])
new Thing('radon', ['proton,86', 'neutron,0-3', 'electron,86'])
new Thing('francium', ['proton,87', 'neutron,0-3', 'electron,87'])
new Thing('radium', ['proton,88', 'neutron,0-3', 'electron,88'])
new Thing('actinium', ['proton,89', 'neutron,0-3', 'electron,89'])
new Thing('thorium', ['proton,90', 'neutron,0-3', 'electron,90'])
new Thing('protactinium', ['proton,91', 'neutron,0-3', 'electron,91'])
new Thing('uranium', ['proton,92', 'neutron,0-3', 'electron,92'])
new Thing('neptunium', ['proton,93', 'neutron,0-3', 'electron,93'])
new Thing('plutonium', ['proton,94', 'neutron,0-3', 'electron,94'])
new Thing('americium', ['proton,95', 'neutron,0-3', 'electron,95'])
new Thing('curium', ['proton,96', 'neutron,0-3', 'electron,96'])
new Thing('berkelium', ['proton,97', 'neutron,0-3', 'electron,97'])
new Thing('californium', ['proton,98', 'neutron,0-3', 'electron,98'])
new Thing('einsteinium', ['proton,99', 'neutron,0-3', 'electron,99'])
new Thing('fermium', ['proton,100', 'neutron,0-3', 'electron,100'])
new Thing('mendelevium', ['proton,101', 'neutron,0-3', 'electron,101'])
new Thing('nobelium', ['proton,102', 'neutron,0-3', 'electron,102'])
new Thing('lawrencium', ['proton,103', 'neutron,0-3', 'electron,103'])
new Thing('rutherfordium', ['proton,104', 'neutron,0-3', 'electron,104'])
new Thing('dubnium', ['proton,105', 'neutron,0-3', 'electron,105'])
new Thing('seaborgium', ['proton,106', 'neutron,0-3', 'electron,106'])
new Thing('bohrium', ['proton,107', 'neutron,0-3', 'electron,107'])
new Thing('hassium', ['proton,108', 'neutron,0-3', 'electron,108'])
new Thing('meitnerium', ['proton,109', 'neutron,0-3', 'electron,109'])
new Thing('darmstadtium', ['proton,110', 'neutron,0-3', 'electron,110'])
new Thing('roentgenium', ['proton,111', 'neutron,0-3', 'electron,111'])
new Thing('ununbium', ['proton,112', 'neutron,0-3', 'electron,112'])
new Thing('ununtrium', ['proton,113', 'neutron,0-3', 'electron,113'])
new Thing('ununquadium', ['proton,114', 'neutron,0-3', 'electron,114'])
new Thing('ununpentium', ['proton,115', 'neutron,0-3', 'electron,115'])
new Thing('ununhexium', ['proton,116', 'neutron,0-3', 'electron,116'])
new Thing('ununseptium', ['proton,117', 'neutron,0-3', 'electron,117'])
new Thing('ununoctium', ['proton,118', 'neutron,0-3', 'electron,118'])
