Config = {}

Config.Shops = {
    {
        ["name"] = "Saint Denis",
        ["coords"] = vector3(2816.37, -1322.24, 46.61), 
        ["gain"] = 1.11,
    },
    {
        ["name"] = "Valentine", 
        ["coords"] = vector3(-341.07, 767.35, 116.71),
        ["heading"] = 50,
        ["gain"] = 1.11,
    },
    {
        ["name"] = "Rhodes", 
        ["coords"] = vector3(1296.36, -1279.26, 75.84), 
        ["gain"] = 1.11,
    },
    {
        ["name"] = "Tumbleweed", 
        ["coords"] = vector3(-5508.10, -2947.73, -1.87), 
        ["gain"] = 1.11,
    },
    {
        ["name"] = "Annesburg", 
        ["coords"] = vector3(2932.54, 1302.00, 44.48), 
        ["gain"] = 1.11,
    },
    {
        ["name"] = "Van Horn", 
        ["coords"] = vector3(2994.23, 571.79, 44.35), 
        ["gain"] = 1.33,
    },
    {
        ["name"] = "Blackwater", 
        ["coords"] = vector3(-877.19, -1343.62, 43.29), 
        ["gain"] = 1.11,
    },
    {
        ["name"] = "Strawberry", 
        ["coords"] = vector3(-1752.91, -394.74, 156.19), 
        ["gain"] = 1.11,
    }
}

Config.ItemShop = {
    ['bigleather'] = {
        price = 0.2
    },
    ['smallleather'] = {
        price = 0.1
    },
    ['meat'] = {
        price = 0.1
    },
    ['gameymeat'] = {
        price = 0.5
    },
    ['fish'] = {
        price = 0.5
    },
    ['feather'] = {
        price = 0.5
    },
}


Config.Animals = {
    -- Animals
    [-1124266369] = { 
        name = "Bear", 
        giveitem = { "bigpelt", "gameymeat" }, 
        money = 100, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = 957520252, 
        good = 143941906, 
        perfect = 1292673537 
    },
    [-15687816381] = { 
        name = "Big Horn Ram", 
        giveitem = { "bigpelt", "gameymeat" }, 
        money = 50, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = 1796037447, 
        good = -476045512, 
        perfect = 1795984405 
    },
    [2028722809]   = { 
        name = "Boar", 
        giveitem = { "bigpelt", "gameymeat" }, 
        money = 4, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = 1248540072, 
        good = nil, 
        perfect = -1858513856 
    },
    [-1963605336]  = { 
        name = "Buck", 
        giveitem = { "bigpelt", "gameymeat" }, 
        money = 7, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = 1603936352, 
        good = -868657362, 
        perfect = -702790226 
    },
    [1556473961]   = { 
        name = "Bison", 
        giveitem = { "bigpelt", "gameymeat" }, 
        money = 40, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = -1730060063, 
        good = -591117838, 
        perfect = -237756948 
    },
    [1957001316]   = { 
        name = "Bull", 
        giveitem = { "bigpelt", "gameymeat" }, 
        money = 40, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = 9293261, 
        good = -336086818, 
        perfect = -53270317 
    },
    [1110710183]   = { 
        name = "Deer", 
        giveitem = { "bigpelt", "gameymeat" }, 
        money = 10, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = -662178186, 
        good = -1827027577, 
        perfect = -1035515486 
    },
    [-1003616053]  = { 
        name = "Duck", 
        giveitem = { "feathers" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [1459778951]   = { 
        name = "Eagle", 
        giveitem = { "feathers" }, 
        money = 5, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [831859211]    = { 
        name = "Egret", 
        giveitem = { "feathers" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [-2021043433]  = { 
        name = "Elk", 
        giveitem = { "bigpelt", "gameymeat" }, 
        money = 10, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = 2053771712, 
        good = 1181652728, 
        perfect = -1332163079 
    },
    [252669332]    = { 
        name = "American Red Fox", 
        giveitem = { "pelt" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = 1647012424, 
        good = 238733925, 
        perfect = 500722008 
    },
    [-1143398950]  = { 
        name = "Big Grey Wolf", 
        giveitem = { "pelt" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = 85441452, 
        good = 1145777975, 
        perfect = 653400939 
    },
    [-885451903]   = { 
        name = "Medium Grey Wolf", 
        giveitem = { "pelt" }, 
        money = 6, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = 85441452, 
        good = 1145777975, 
        perfect = 653400939 
    },
    [-829273561]   = { 
        name = "Small Grey Wolf", 
        giveitem = { "pelt" }, 
        money = 6, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = 85441452, 
        good = 1145777975, 
        perfect = 653400939 
    },
    [1104697660]   = { 
        name = "Vulture", 
        giveitem = { "feathers" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [-407730502]   = { 
        name = "Snapping Turtle", 
        giveitem = { "pelt" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [-466054788]   = { 
        name = "Wild Turkey", 
        giveitem = { "feathers" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [-2011226991]  = { 
        name = "Wild Turkey", 
        giveitem = { "feathers" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [-166054593]   = { 
        name = "Wild Turkey", 
        giveitem = { "feathers" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [-229688157]   = { 
        name = "Water Snake", 
        giveitem = { "poison" }, 
        money = 2, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [-1790499186]  = { 
        name = "Snake Red Boa", 
        giveitem = { "poison" }, 
        money = 2, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [1464167925]   = { 
        name = "Snake Fer-De-Lance", 
        giveitem = { "poison" }, 
        money = 2, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [846659001]    = { 
        name = "Black-Tailed Rattlesnake", 
        giveitem = { "poison" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [545068538]    = { 
        name = "Western Rattlesnake", 
        giveitem = { "poison" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [-1211566332]  = { 
        name = "Striped Skunk", 
        giveitem = { "pelt" }, 
        money = 2, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [40345436]     = { 
        name = "Merino Sheep", 
        giveitem = { "wool" }, 
        money = 1, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = 1729948479, 
        good = -1317365569, 
        perfect = 1466150167 
    },
    [-164963696]   = { 
        name = "Herring Seagull", 
        giveitem = { "feathers" }, 
        money = 1, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [-1076508705]  = { 
        name = "Roseate Spoonbill", 
        giveitem = { "feathers" }, 
        money = 1, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [2023522846]   = { 
        name = "Dominique Rooster", 
        giveitem = { "feathers" }, 
        money = 1, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [-466687768]   = { 
        name = "Red-Footed Booby", 
        giveitem = { "feathers" }, 
        money = 1, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [-575340245]   = { 
        name = "Wester Raven", 
        giveitem = { "feathers" }, 
        money = 1, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [1458540991]   = { 
        name = "North American Racoon", 
        giveitem = { "pelt" }, 
        money = 2, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [-541762431]   = { 
        name = "Black-Tailed Jackrabbit", 
        giveitem = { "pelt" }, 
        money = 2, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [1755643085]   = { 
        name = "American Pronghorn Doe", 
        giveitem = { "bigpelt", "gameymeat" }, 
        money = 14, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = -983605026, 
        good = 554578289, 
        perfect = -1544126829 
    },
    [2079703102]   = { 
        name = "Greater Prairie Chicken", 
        giveitem = { "feathers" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [-1414989025]  = { 
        name = "Wirginia Possum", 
        giveitem = { "pelt" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [1007418994]   = { 
        name = "Berkshire Pig", 
        giveitem = { "pelt" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = -308965548, 
        good = -57190831, 
        perfect = -1102272634 
    },
    [1416324601]   = { 
        name = "Ring-Necked Pheasant", 
        giveitem = { "feathers" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [1265966684]   = { 
        name = "American White Pelican", 
        giveitem = { "feathers" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [-1797450568]  = { 
        name = "Blue And Yellow Macaw", 
        giveitem = { "feathers" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [1654513481]   = { 
        name = "Panther", 
        giveitem = { "pelt" }, 
        money = 20, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = 1584468323, 
        good = -395646254, 
        perfect = 1969175294 
    },
    [1205982615]   = { 
        name = "Californian Condor", 
        giveitem = { "feathers" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [-2063183075]  = { 
        name = "Dominique Chicken", 
        giveitem = { "feathers" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [-2073130256]  = { 
        name = "Double-Crested Cormorant", 
        giveitem = { "feathers" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [90264823]     = { 
        name = "Cougar", 
        giveitem = { "pelt" }, 
        money = 35, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = 1914602340, 
        good = 459744337, 
        perfect = -1791452194 
    },
    [-50684386]    = { 
        name = "Florida Cracker Cow", 
        giveitem = { "feathers" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = 334093551, 
        good = 1150594075, 
        perfect = -845037222 
    },
    [480688259]    = { 
        name = "Coyote", 
        giveitem = { "pelt" }, 
        money = 6, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = -1558096473, 
        good = 1150939141, 
        perfect = -794277189 
    },
    [-564099192]   = { 
        name = "Whooping Crane", 
        giveitem = { "feathers" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [457416415]    = { 
        name = "Gila Monster", 
        giveitem = { "pelt" }, 
        money = 70, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [-753902995]   = { 
        name = "Alpine Goat", 
        giveitem = { "bigpelt", "gameymeat" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = 699990316, 
        good = 1710714415, 
        perfect = -1648383828 
    },
    [723190474]    = { 
        name = "Canada Goose", 
        giveitem = { "feathers" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [-2145890973]  = { 
        name = "Ferruinous Hawk", 
        giveitem = { "feathers" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [1095117488]   = { 
        name = "Great Blue Heron", 
        giveitem = { "feathers" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [-1854059305]  = { 
        name = "Green Iguana", 
        giveitem = { "pelt" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [-593056309]   = { 
        name = "Desert Iguana", 
        giveitem = { "pelt" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [1751700893]   = { 
        name = "Peccary Pig", 
        giveitem = { "pelt" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = -99092070, 
        good = -1379330323, 
        perfect = 1963510418 
    },
    [386506078]    = { 
        name = "Common Loon", 
        giveitem = { "feathers" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [-1098441944]  = { 
        name = "Moose", 
        giveitem = { "bigpelt", "gameymeat" }, 
        money = 8, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = 1868576868, 
        good = 1636891382, 
        perfect = -217731719 
    },
    [-1134449699]  = { 
        name = "American Muskrat", 
        giveitem = { "pelt" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [-861544272]   = { 
        name = "Great Horned Owl", 
        giveitem = { "feathers" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [556355544]    = { 
        name = "Angus Ox", 
        giveitem = { "pelt" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = 4623248928, 
        good = 1208128650, 
        perfect = 659601266 
    },
    [-1892280447]  = { 
        name = "Alligator Small", 
        giveitem = { "BigGamepelt" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = 1806153689, 
        good = -802026654, 
        perfect = -1625078531 
    },
    [-2004866590]  = { 
        name = "Alligator", 
        giveitem = { "BigGamepelt" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 3, 
        poor = -1243878166, 
        good = nil, 
        perfect = -1475338121 
    },
    [759906147]    = { 
        name = "North American Beaver", 
        giveitem = { "pelt" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = -1569450319, 
        good = -2059726619, 
        perfect = 854596618 
    },
    [730092646]    = { 
        name = "American Black Bear", 
        giveitem = { "bigpelt", "gameymeat" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = 1083865179, 
        good = 1490032862, 
        perfect = 663376218 },
    -- Fish
    [-711779521]   = { 
        name = "Longnose Gar", 
        giveitem = { "fish" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [-1553593715]  = { 
        name = "Muskie", 
        giveitem = { "fish" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [-300867788]   = { 
        name = "Lake Sturgeon", 
        giveitem = { "fish" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [1538187374]   = { 
        name = "Channel Catfish", 
        giveitem = { "fish" }, 
        money = 3, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [697075200]    = { 
        name = "Northern Pike", 
        giveitem = { "fish" }, 
        money = 2, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [1867262572]   = { 
        name = "Bluegill", 
        giveitem = { "fish" }, 
        money = 2, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [1493541632]   = { 
        name = "Bullhead catfish", 
        giveitem = { "fish" }, 
        money = 2, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [3111984125]   = { 
        name = "Chain Pickerl", 
        giveitem = { "fish" }, 
        money = 2, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [463643368]    = { 
        name = "bigmouth bass", 
        giveitem = { "fish" }, 
        money = 2, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [3842742512]   = { 
        name = "Perch", 
        giveitem = { "fish" }, 
        money = 2, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [134747314]    = { 
        name = "Rainbow trout", 
        giveitem = { "fish" }, 
        money = 2, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [4051778898]   = { 
        name = "Redfin Pickerl", 
        giveitem = { "fish" }, 
        money = 2, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [2313405824]   = { 
        name = "Rock Bass", 
        giveitem = { "fish" }, 
        money = 2, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [2410477101]   = { 
        name = "Smallmouth bass", 
        giveitem = { "fish" }, 
        money = 2, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [543892122]    = { 
        name = "Salmon Redfish", 
        giveitem = { "fish" }, 
        money = 2, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
    [1702636991]   = { 
        name = "Salmon sockeye", 
        giveitem = { "fish" }, 
        money = 2, 
        poorQualityMultiplier = 1.0, 
        goodQualityMultiplier = 1.5, 
        perfectQualityMultiplier = 2, 
        poor = nil, 
        good = nil, 
        perfect = nil 
    },
}
