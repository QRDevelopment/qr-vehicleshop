Config = {}

Config.PedLocation = vector4(-55.57, -1097.98, 26.42, 351.45) -- Default PDM location
Config.PedModel = "cs_siemonyetarian"
Config.TestDriveTime = 60                                -- Time in seconds for test drive
Config.FuelScript = 'ps-fuel'                            -- Options: 'LegacyFuel', 'ps-fuel', 'cdn-fuel'
Config.UseOxTarget = true

-- add custom images by adding 'image = "image.webp"

Config.Categories = {
    ["sports"] = "Sports",
    ["sportsclassic"] = "Sports Classic",
    ["super"] = "Super",
    ["sedans"] = "Sedans",
    ["muscle"] = "Muscle",
    ["suvs"] = "SUVs",
    ["coupes"] = "Coupes",
    ["compacts"] = "Compacts",
    ["motorcycles"] = "Motorcycles",
    ["off-road"] = "Off-Road",
    ["vans"] = "Vans"
}

Config.Vehicles = {
    ["compacts"] = {
        ["asbo"] = {
            name = "Asbo",
            brand = "Maxwell",
            model = "asbo",
            price = 408000,
            category = "compacts"
            -- add custom images by adding 'image = "image.webp"
        },
        ["blista"] = {
            name = "Blista",
            brand = "Dinka",
            model = "blista",
            price = 42000,
            category = "compacts"
        },
        ["brioso"] = {
            name = "Brioso R/A",
            brand = "Grotti",
            model = "brioso",
            price = 155000,
            category = "compacts"
        },
        ["brioso2"] = {
            name = "Brioso 300",
            brand = "Grotti",
            model = "brioso2",
            price = 610000,
            category = "compacts"
        },
        ["brioso3"] = {
            name = "Brioso 300 Widebody",
            brand = "Grotti",
            model = "brioso3",
            price = 1499000, -- Based on Criminal Enterprises DLC
            category = "compacts"
        },
        ["club"] = {
            name = "Club",
            brand = "BF",
            model = "club",
            price = 1280000,
            category = "compacts"
        },
        ["dilettante"] = {
            name = "Dilettante",
            brand = "Karin",
            model = "dilettante",
            price = 25000,
            category = "compacts"
        },
        ["issi2"] = {
            name = "Issi",
            brand = "Weeny",
            model = "issi2",
            price = 18000,
            category = "compacts"
        },
        ["issi3"] = {
            name = "Issi Classic",
            brand = "Weeny",
            model = "issi3",
            price = 360000,
            category = "compacts"
        },
        ["issi4"] = {
            name = "Apocalypse Issi",
            brand = "Weeny",
            model = "issi4",
            price = 1089000, -- Arena War vehicle base price
            category = "compacts"
        },
        ["issi5"] = {
            name = "Future Shock Issi",
            brand = "Weeny",
            model = "issi5",
            price = 1089000, -- Arena War vehicle base price
            category = "compacts"
        },
        ["issi6"] = {
            name = "Nightmare Issi",
            brand = "Weeny",
            model = "issi6",
            price = 1089000, -- Arena War vehicle base price
            category = "compacts"
        },
        ["kanjo"] = {
            name = "Blista Kanjo",
            brand = "Dinka",
            model = "kanjo",
            price = 580000,
            category = "compacts"
        },
        ["panto"] = {
            name = "Panto",
            brand = "Benefactor",
            model = "panto",
            price = 85000,
            category = "compacts"
        },
        ["prairie"] = {
            name = "Prairie",
            brand = "Bollokan",
            model = "prairie",
            price = 30000,
            category = "compacts"
        },
        ["rhapsody"] = {
            name = "Rhapsody",
            brand = "Declasse",
            model = "rhapsody",
            price = 140000,
            category = "compacts"
        },
        ["weevil"] = {
            name = "Weevil",
            brand = "BF",
            model = "weevil",
            price = 870000,
            category = "compacts"
        },
    },
    ["sedans"] = {
        ["asea"] = {
            name = "Asea",
            brand = "Declasse",
            model = "asea",
            price = 12000,
            category = "sedans"
        },
        ["asterope"] = {
            name = "Asterope",
            brand = "Karin",
            model = "asterope",
            price = 26000,
            category = "sedans"
        },
        ["asterope2"] = {
            name = "Asterope GZ",
            brand = "Karin",
            model = "asterope2",
            price = 1580000,
            category = "sedans"
        },
        ["cinquemila"] = {
            name = "Cinquemila",
            brand = "Lampadati",
            model = "cinquemila",
            price = 1740000,
            category = "sedans"
        },
        ["cog55"] = {
            name = "Cognoscenti 55",
            brand = "Enus",
            model = "cog55",
            price = 154000,
            category = "sedans"
        },
        ["cog552"] = {
            name = "Cognoscenti 55 (Armored)",
            brand = "Enus",
            model = "cog552",
            price = 396000,
            category = "sedans"
        },
        ["cognoscenti"] = {
            name = "Cognoscenti",
            brand = "Enus",
            model = "cognoscenti",
            price = 254000,
            category = "sedans"
        },
        ["cognoscenti2"] = {
            name = "Cognoscenti (Armored)",
            brand = "Enus",
            model = "cognoscenti2",
            price = 558000,
            category = "sedans"
        },
        ["deity"] = {
            name = "Deity",
            brand = "Enus",
            model = "deity",
            price = 1845000,
            category = "sedans"
        },
        ["emperor"] = {
            name = "Emperor",
            brand = "Albany",
            model = "emperor",
            price = 8000,
            category = "sedans"
        },
        ["emperor2"] = {
            name = "Emperor",
            brand = "Albany",
            model = "emperor2",
            price = 8000,
            category = "sedans"
        },
        ["fugitive"] = {
            name = "Fugitive",
            brand = "Cheval",
            model = "fugitive",
            price = 24000,
            category = "sedans"
        },
        ["glendale"] = {
            name = "Glendale",
            brand = "Benefactor",
            model = "glendale",
            price = 200000,
            category = "sedans"
        },
        ["glendale2"] = {
            name = "Glendale Custom",
            brand = "Benefactor",
            model = "glendale2",
            price = 520000,
            category = "sedans"
        },
        ["impaler5"] = {
            name = "Impaler SZ",
            brand = "Declasse",
            model = "impaler5",
            price = 1620000,
            category = "sedans"
        },
        ["ingot"] = {
            name = "Ingot",
            brand = "Vulcar",
            model = "ingot",
            price = 9000,
            category = "sedans"
        },
        ["intruder"] = {
            name = "Intruder",
            brand = "Karin",
            model = "intruder",
            price = 16000,
            category = "sedans"
        },
        ["premier"] = {
            name = "Premier",
            brand = "Declasse",
            model = "premier",
            price = 10000,
            category = "sedans"
        },
        ["primo"] = {
            name = "Primo",
            brand = "Albany",
            model = "primo",
            price = 9000,
            category = "sedans"
        },
        ["primo2"] = {
            name = "Primo Custom",
            brand = "Albany",
            model = "primo2",
            price = 400000,
            category = "sedans"
        },
        ["regina"] = {
            name = "Regina",
            brand = "Dundreary",
            model = "regina",
            price = 8000,
            category = "sedans"
        },
        ["rhinehart"] = {
            name = "Rhinehart",
            brand = "Ubermacht",
            model = "rhinehart",
            price = 1598000,
            category = "sedans"
        },
        ["romero"] = {
            name = "Romero",
            brand = "Chariot",
            model = "romero",
            price = 45000,
            category = "sedans"
        },
        ["schafter2"] = {
            name = "Schafter",
            brand = "Benefactor",
            model = "schafter2",
            price = 65000,
            category = "sedans"
        },
        ["schafter5"] = {
            name = "Schafter V12 (Armored)",
            brand = "Benefactor",
            model = "schafter5",
            price = 325000,
            category = "sedans"
        },
        ["schafter6"] = {
            name = "Schafter LWB (Armored)",
            brand = "Benefactor",
            model = "schafter6",
            price = 438000,
            category = "sedans"
        },
        ["stafford"] = {
            name = "Stafford",
            brand = "Enus",
            model = "stafford",
            price = 1272000,
            category = "sedans"
        },
        ["stanier"] = {
            name = "Stanier",
            brand = "Vapid",
            model = "stanier",
            price = 10000,
            category = "sedans"
        },
        ["stratum"] = {
            name = "Stratum",
            brand = "Zirconium",
            model = "stratum",
            price = 10000,
            category = "sedans"
        },
        ["stretch"] = {
            name = "Stretch",
            brand = "Dundreary",
            model = "stretch",
            price = 30000,
            category = "sedans"
        },
        ["superd"] = {
            name = "Super Diamond",
            brand = "Enus",
            model = "superd",
            price = 250000,
            category = "sedans"
        },
        ["surge"] = {
            name = "Surge",
            brand = "Cheval",
            model = "surge",
            price = 38000,
            category = "sedans"
        },
        ["tailgater"] = {
            name = "Tailgater",
            brand = "Obey",
            model = "tailgater",
            price = 55000,
            category = "sedans"
        },
        ["tailgater2"] = {
            name = "Tailgater S",
            brand = "Obey",
            model = "tailgater2",
            price = 1495000,
            category = "sedans"
        },
        ["warrener"] = {
            name = "Warrener",
            brand = "Vulcar",
            model = "warrener",
            price = 120000,
            category = "sedans"
        },
        ["warrener2"] = {
            name = "Warrener HKR",
            brand = "Vulcar",
            model = "warrener2",
            price = 1260000,
            category = "sedans"
        },
        ["washington"] = {
            name = "Washington",
            brand = "Albany",
            model = "washington",
            price = 15000,
            category = "sedans"
        },
    },
    ["suvs"] = {
        ["aleutian"] = {
            name = "Aleutian",
            brand = "Vapid",
            model = "aleutian",
            price = 1760000,
            category = "suvs"
        },
        ["astron"] = {
            name = "Astron",
            brand = "Pfister",
            model = "astron",
            price = 1580000,
            category = "suvs"
        },
        ["baller"] = {
            name = "Baller",
            brand = "Gallivanter",
            model = "baller",
            price = 90000,
            category = "suvs"
        },
        ["baller2"] = {
            name = "Baller",
            brand = "Gallivanter",
            model = "baller2",
            price = 90000,
            category = "suvs"
        },
        ["baller3"] = {
            name = "Baller LE",
            brand = "Gallivanter",
            model = "baller3",
            price = 149000,
            category = "suvs"
        },
        ["baller4"] = {
            name = "Baller LE LWB",
            brand = "Gallivanter",
            model = "baller4",
            price = 247000,
            category = "suvs"
        },
        ["baller5"] = {
            name = "Baller LE (Armored)",
            brand = "Gallivanter",
            model = "baller5",
            price = 374000,
            category = "suvs"
        },
        ["baller6"] = {
            name = "Baller LE LWB (Armored)",
            brand = "Gallivanter",
            model = "baller6",
            price = 513000,
            category = "suvs"
        },
        ["baller7"] = {
            name = "Baller ST",
            brand = "Gallivanter",
            model = "baller7",
            price = 890000,
            category = "suvs"
        },
        ["baller8"] = {
            name = "Baller ST-D",
            brand = "Gallivanter",
            model = "baller8",
            price = 1715000,
            category = "suvs"
        },
        ["bjxl"] = {
            name = "BeeJay XL",
            brand = "Karin",
            model = "bjxl",
            price = 27000,
            category = "suvs"
        },
        ["cavalcade"] = {
            name = "Cavalcade",
            brand = "Albany",
            model = "cavalcade",
            price = 60000,
            category = "suvs"
        },
        ["cavalcade2"] = {
            name = "Cavalcade",
            brand = "Albany",
            model = "cavalcade2",
            price = 70000,
            category = "suvs"
        },
        ["cavalcade3"] = {
            name = "Cavalcade XL",
            brand = "Albany",
            model = "cavalcade3",
            price = 1790000,
            category = "suvs"
        },
        ["contender"] = {
            name = "Contender",
            brand = "Vapid",
            model = "contender",
            price = 250000,
            category = "suvs"
        },
        ["dorado"] = {
            name = "Dorado",
            brand = "Bravado",
            model = "dorado",
            price = 1985000,
            category = "suvs"
        },
        ["dubsta"] = {
            name = "Dubsta",
            brand = "Benefactor",
            model = "dubsta",
            price = 120000,
            category = "suvs"
        },
        ["dubsta2"] = {
            name = "Dubsta",
            brand = "Benefactor",
            model = "dubsta2",
            price = 120000,
            category = "suvs"
        },
        ["fq2"] = {
            name = "FQ 2",
            brand = "Fathom",
            model = "fq2",
            price = 50000,
            category = "suvs"
        },
        ["granger"] = {
            name = "Granger",
            brand = "Declasse",
            model = "granger",
            price = 35000,
            category = "suvs"
        },
        ["granger2"] = {
            name = "Granger 3600LX",
            brand = "Declasse",
            model = "granger2",
            price = 1380000,
            category = "suvs"
        },
        ["gresley"] = {
            name = "Gresley",
            brand = "Bravado",
            model = "gresley",
            price = 29000,
            category = "suvs"
        },
        ["habanero"] = {
            name = "Habanero",
            brand = "Emperor",
            model = "habanero",
            price = 42000,
            category = "suvs"
        },
        ["huntley"] = {
            name = "Huntley S",
            brand = "Enus",
            model = "huntley",
            price = 195000,
            category = "suvs"
        },
        ["issi8"] = {
            name = "Issi Rally",
            brand = "Grotti",
            model = "issi8",
            price = 1835000,
            category = "suvs"
        },
        ["iwagen"] = {
            name = "I-Wagen",
            brand = "Obey",
            model = "iwagen",
            price = 1720000,
            category = "suvs"
        },
        ["jubilee"] = {
            name = "Jubilee",
            brand = "Enus",
            model = "jubilee",
            price = 1650000,
            category = "suvs"
        },
        ["landstalker"] = {
            name = "Landstalker",
            brand = "Dundreary",
            model = "landstalker",
            price = 58000,
            category = "suvs"
        },
        ["landstalker2"] = {
            name = "Landstalker XL",
            brand = "Dundreary",
            model = "landstalker2",
            price = 1220000,
            category = "suvs"
        },
        ["mesa"] = {
            name = "Mesa",
            brand = "Canis",
            model = "mesa",
            price = 87000,
            category = "suvs"
        },
        ["novak"] = {
            name = "Novak",
            brand = "Lampadati",
            model = "novak",
            price = 608000,
            category = "suvs"
        },
        ["patriot"] = {
            name = "Patriot",
            brand = "Mammoth",
            model = "patriot",
            price = 50000,
            category = "suvs"
        },
        ["patriot2"] = {
            name = "Patriot Stretch",
            brand = "Mammoth",
            model = "patriot2",
            price = 612500,
            category = "suvs"
        },
        ["radi"] = {
            name = "Radius",
            brand = "Vapid",
            model = "radi",
            price = 32000,
            category = "suvs"
        },
        ["rebla"] = {
            name = "Rebla GTS",
            brand = "Ubermacht",
            model = "rebla",
            price = 1175000,
            category = "suvs"
        },
        ["rocoto"] = {
            name = "Rocoto",
            brand = "Obey",
            model = "rocoto",
            price = 85000,
            category = "suvs"
        },
        ["seminole"] = {
            name = "Seminole",
            brand = "Canis",
            model = "seminole",
            price = 30000,
            category = "suvs"
        },
        ["seminole2"] = {
            name = "Seminole Frontier",
            brand = "Canis",
            model = "seminole2",
            price = 678000,
            category = "suvs"
        },
        ["serrano"] = {
            name = "Serrano",
            brand = "Benefactor",
            model = "serrano",
            price = 60000,
            category = "suvs"
        },
        ["squaddie"] = {
            name = "Squaddie",
            brand = "Mammoth",
            model = "squaddie",
            price = 1130000,
            category = "suvs"
        },
        ["toros"] = {
            name = "Toros",
            brand = "Pegassi",
            model = "toros",
            price = 498000,
            category = "suvs"
        },
        ["vivanite"] = {
            name = "Vivanite",
            brand = "Karin",
            model = "vivanite",
            price = 1805000,
            category = "suvs"
        },
        ["xls"] = {
            name = "XLS",
            brand = "Benefactor",
            model = "xls",
            price = 253000,
            category = "suvs"
        },
        ["xls2"] = {
            name = "XLS (Armored)",
            brand = "Benefactor",
            model = "xls2",
            price = 522000,
            category = "suvs"
        },
    },
    ["coupes"] = {
        ["cogcabrio"] = {
            name = "Cognoscenti Cabrio",
            brand = "Enus",
            model = "cogcabrio",
            price = 185000,
            category = "coupes"
        },
        ["driftfr36"] = {
            name = "FR36 (Drift)",
            brand = "Fathom",
            model = "driftfr36",
            price = 1990000,
            category = "coupes"
        },
        ["exemplar"] = {
            name = "Exemplar",
            brand = "Dewbauchee",
            model = "exemplar",
            price = 205000,
            category = "coupes"
        },
        ["f620"] = {
            name = "F620",
            brand = "Ocelot",
            model = "f620",
            price = 80000,
            category = "coupes"
        },
        ["felon"] = {
            name = "Felon",
            brand = "Lampadati",
            model = "felon",
            price = 90000,
            category = "coupes"
        },
        ["felon2"] = {
            name = "Felon GT",
            brand = "Lampadati",
            model = "felon2",
            price = 95000,
            category = "coupes"
        },
        ["fr36"] = {
            name = "FR36",
            brand = "Fathom",
            model = "fr36",
            price = 1680000,
            category = "coupes"
        },
        ["jackal"] = {
            name = "Jackal",
            brand = "Ocelot",
            model = "jackal",
            price = 60000,
            category = "coupes"
        },
        ["kanjosj"] = {
            name = "Kanjo SJ",
            brand = "Dinka",
            model = "kanjosj",
            price = 1370000,
            category = "coupes"
        },
        ["oracle"] = {
            name = "Oracle XS",
            brand = "Ubermacht",
            model = "oracle",
            price = 82000,
            category = "coupes"
        },
        ["oracle2"] = {
            name = "Oracle",
            brand = "Ubermacht",
            model = "oracle2",
            price = 80000,
            category = "coupes"
        },
        ["postlude"] = {
            name = "Postlude",
            brand = "Dinka",
            model = "oracle2",
            price = 1310000,
            category = "coupes"
        },
        ["previon"] = {
            name = "Previon",
            brand = "Karin",
            model = "previon",
            price = 1490000,
            category = "coupes"
        },
        ["sentinel"] = {
            name = "Sentinel XS",
            brand = "Ubermacht",
            model = "sentinel",
            price = 60000,
            category = "coupes"
        },
        ["sentinel2"] = {
            name = "Sentinel",
            brand = "Ubermacht",
            model = "sentinel2",
            price = 95000,
            category = "coupes"
        },
        ["windsor"] = {
            name = "Windsor",
            brand = "Enus",
            model = "windsor",
            price = 845000,
            category = "coupes"
        },
        ["windsor2"] = {
            name = "Windsor Drop",
            brand = "Enus",
            model = "windsor2",
            price = 900000,
            category = "coupes"
        },
        ["zion"] = {
            name = "Zion",
            brand = "Ubermacht",
            model = "zion",
            price = 60000,
            category = "coupes"
        },
        ["zion2"] = {
            name = "Zion Cabrio",
            brand = "Ubermacht",
            model = "zion2",
            price = 65000,
            category = "coupes"
        },
    },
    ["muscle"] = {
        ["blade"] = {
            name = "Blade",
            brand = "Vapid",
            model = "blade",
            price = 160000,
            category = "muscle"
        },
        ["brigham"] = {
            name = "Brigham",
            brand = "Albany",
            model = "brigham",
            price = 1790000,
            category = "muscle"
        },
        ["broadway"] = {
            name = "Broadway",
            brand = "Classique",
            model = "broadway",
            price = 925000,
            category = "muscle"
        },
        ["buccaneer"] = {
            name = "Buccaneer",
            brand = "Albany",
            model = "buccaneer",
            price = 29000,
            category = "muscle"
        },
        ["buccaneer2"] = {
            name = "Buccaneer Custom",
            brand = "Albany",
            model = "buccaneer2",
            price = 390000,
            category = "muscle"
        },
        ["fudge"] = {
            name = "Fudge Charger",
            brand = "Fudge",
            model = "buffalo4",
            price = 20000,
            category = "muscle",
            image = "fudge_charger.webp"
        },
        ["buffalo4"] = {
            name = "Buffalo STX",
            brand = "Bravado",
            model = "buffalo4",
            price = 2150000,
            category = "muscle"
        },
        ["buffalo5"] = {
            name = "Buffalo EVX",
            brand = "Bravado",
            model = "buffalo5",
            price = 2140000,
            category = "muscle"
        },
        ["chino"] = {
            name = "Chino",
            brand = "Vapid",
            model = "chino",
            price = 225000,
            category = "muscle"
        },
        ["chino2"] = {
            name = "Chino Custom",
            brand = "Vapid",
            model = "chino2",
            price = 180000,
            category = "muscle"
        },
        ["clique"] = {
            name = "Clique",
            brand = "Vapid",
            model = "clique",
            price = 909000,
            category = "muscle"
        },
        ["clique2"] = {
            name = "Clique Wagon",
            brand = "Vapid",
            model = "clique2",
            price = 1848000,
            category = "muscle"
        },
        ["coquette3"] = {
            name = "Coquette BlackFin",
            brand = "Vapid",
            model = "coquette3",
            price = 695000,
            category = "muscle"
        },
        ["deviant"] = {
            name = "Deviant",
            brand = "Schyster",
            model = "deviant",
            price = 512000,
            category = "muscle"
        },
        ["dominator"] = {
            name = "Dominator",
            brand = "Vapid",
            model = "dominator",
            price = 35000,
            category = "muscle"
        },
        ["dominator2"] = {
            name = "Pisswasser Dominator",
            brand = "Vapid",
            model = "dominator2",
            price = 315000,
            category = "muscle"
        },
        ["dominator3"] = {
            name = "Dominator GTX",
            brand = "Vapid",
            model = "dominator3",
            price = 725000,
            category = "muscle"
        },
        ["dominator4"] = {
            name = "Apocalypse Dominator",
            brand = "Vapid",
            model = "dominator4",
            price = 1132000,
            category = "muscle"
        },
        ["dominator5"] = {
            name = "Future Shock Dominator",
            brand = "Vapid",
            model = "dominator5",
            price = 1132000,
            category = "muscle"
        },
        ["dominator6"] = {
            name = "Nightmare Dominator",
            brand = "Vapid",
            model = "dominator6",
            price = 1132000,
            category = "muscle"
        },
        ["dominator7"] = {
            name = "Dominator ASP",
            brand = "Vapid",
            model = "dominator7",
            price = 1775000,
            category = "muscle"
        },
        ["dominator8"] = {
            name = "Dominator GTT",
            brand = "Vapid",
            model = "dominator8",
            price = 1220000,
            category = "muscle"
        },
        ["dominator9"] = {
            name = "Dominator GT",
            brand = "Vapid",
            model = "dominator9",
            price = 2195000,
            category = "muscle"
        },
        ["driftyosemite"] = {
            name = "Yosemite (Drift)",
            brand = "Declasse",
            model = "driftyosemite",
            price = 1308000,
            category = "muscle"
        },
        ["dukes"] = {
            name = "Dukes",
            brand = "Imponte",
            model = "dukes",
            price = 62000,
            category = "muscle"
        },
        ["dukes3"] = {
            name = "Beater Dukes",
            brand = "Imponte",
            model = "dukes3",
            price = 378000,
            category = "muscle"
        },
        ["ellie"] = {
            name = "Ellie",
            brand = "Vapid",
            model = "ellie",
            price = 565000,
            category = "muscle"
        },
        ["eudora"] = {
            name = "Eudora",
            brand = "Willard",
            model = "eudora",
            price = 1250000,
            category = "muscle"
        },
        ["faction"] = {
            name = "Faction",
            brand = "Willard",
            model = "faction",
            price = 36000,
            category = "muscle"
        },
        ["faction2"] = {
            name = "Faction Custom",
            brand = "Willard",
            model = "faction2",
            price = 335000,
            category = "muscle"
        },
        ["faction3"] = {
            name = "Faction Custom Donk",
            brand = "Willard",
            model = "faction3",
            price = 695000,
            category = "muscle"
        },
        ["gauntlet"] = {
            name = "Gauntlet",
            brand = "Bravado",
            model = "gauntlet",
            price = 32000,
            category = "muscle"
        },
        ["gauntlet2"] = {
            name = "Redwood Gauntlet",
            brand = "Bravado",
            model = "gauntlet2",
            price = 230000,
            category = "muscle"
        },
        ["gauntlet3"] = {
            name = "Gauntlet Classic",
            brand = "Bravado",
            model = "gauntlet3",
            price = 615000,
            category = "muscle"
        },
        ["gauntlet4"] = {
            name = "Gauntlet Hellfire",
            brand = "Bravado",
            model = "gauntlet4",
            price = 745000,
            category = "muscle"
        },
        ["gauntlet5"] = {
            name = "Gauntlet Classic Custom",
            brand = "Bravado",
            model = "gauntlet5",
            price = 815000,
            category = "muscle"
        },
        ["greenwood"] = {
            name = "Greenwood",
            brand = "Bravado",
            model = "greenwood",
            price = 1465000,
            category = "muscle"
        },
        ["hermes"] = {
            name = "Hermes",
            brand = "Albany",
            model = "hermes",
            price = 535000,
            category = "muscle"
        },
        ["hotknife"] = {
            name = "Hotknife",
            brand = "Vapid",
            model = "hotknife",
            price = 90000,
            category = "muscle"
        },
        ["hustler"] = {
            name = "Hustler",
            brand = "Vapid",
            model = "hustler",
            price = 625000,
            category = "muscle"
        },
        ["impaler"] = {
            name = "Impaler",
            brand = "Declasse",
            model = "impaler",
            price = 331835,
            category = "muscle"
        },
        ["impaler2"] = {
            name = "Apocalypse Impaler",
            brand = "Declasse",
            model = "impaler2",
            price = 1209350,
            category = "muscle"
        },
        ["impaler3"] = {
            name = "Future Shock Impaler",
            brand = "Declasse",
            model = "impaler3",
            price = 1209350,
            category = "muscle"
        },
        ["impaler4"] = {
            name = "Nightmare Impaler",
            brand = "Declasse",
            model = "impaler4",
            price = 1209350,
            category = "muscle"
        },
        ["impaler6"] = {
            name = "Impaler LX",
            brand = "Declasse",
            model = "impaler6",
            price = 1657500,
            category = "muscle"
        },
        ["imperator"] = {
            name = "Apocalypse Imperator",
            brand = "Vapid",
            model = "imperator",
            price = 1718000,
            category = "muscle"
        },
        ["imperator2"] = {
            name = "Future Shock Imperator",
            brand = "Vapid",
            model = "imperator2",
            price = 1718000,
            category = "muscle"
        },
        ["imperator3"] = {
            name = "Nightmare Imperator",
            brand = "Vapid",
            model = "imperator3",
            price = 1718000,
            category = "muscle"
        },
        ["lurcher"] = {
            name = "Lurcher",
            brand = "Albany",
            model = "lurcher",
            price = 650000,
            category = "muscle"
        },
        ["manana2"] = {
            name = "Manana Custom",
            brand = "Albany",
            model = "manana2",
            price = 925000,
            category = "muscle"
        },
        ["moonbeam"] = {
            name = "Moonbeam",
            brand = "Declasse",
            model = "moonbeam",
            price = 32500,
            category = "muscle"
        },
        ["moonbeam2"] = {
            name = "Moonbeam Custom",
            brand = "Declasse",
            model = "moonbeam2",
            price = 370000,
            category = "muscle"
        },
        ["nightshade"] = {
            name = "Nightshade",
            brand = "Imponte",
            model = "nightshade",
            price = 585000,
            category = "muscle"
        },
        ["peyote2"] = {
            name = "Peyote Gasser",
            brand = "Vapid",
            model = "peyote2",
            price = 805000,
            category = "muscle"
        },
        ["phoenix"] = {
            name = "Phoenix",
            brand = "Imponte",
            model = "phoenix",
            price = 250000,
            category = "muscle"
        },
        ["picador"] = {
            name = "Picador",
            brand = "Cheval",
            model = "picador",
            price = 9000,
            category = "muscle"
        },
        ["ratloader"] = {
            name = "Rat-Loader",
            brand = "Bravado",
            model = "ratloader",
            price = 6000,
            category = "muscle"
        },
        ["ratloader2"] = {
            name = "Rat-Truck",
            brand = "Bravado",
            model = "ratloader2",
            price = 37500,
            category = "muscle"
        },
        ["ruiner"] = {
            name = "Ruiner",
            brand = "Imponte",
            model = "ruiner",
            price = 10000,
            category = "muscle"
        },
        ["ruiner4"] = {
            name = "Ruiner ZZ-8",
            brand = "Imponte",
            model = "ruiner4",
            price = 1320000,
            category = "muscle"
        },
        ["sabregt"] = {
            name = "Sabre Turbo",
            brand = "Declasse",
            model = "sabregt",
            price = 15000,
            category = "muscle"
        },
        ["sabregt2"] = {
            name = "Sabre Turbo Custom",
            brand = "Declasse",
            model = "sabregt2",
            price = 490000,
            category = "muscle"
        },
        ["slamvan"] = {
            name = "Slamvan",
            brand = "Vapid",
            model = "slamvan",
            price = 49500,
            category = "muscle"
        },
        ["slamvan2"] = {
            name = "Lost Slamvan",
            brand = "Vapid",
            model = "slamvan2",
            price = 49500,
            category = "muscle"
        },
        ["slamvan3"] = {
            name = "Slamvan Custom",
            brand = "Vapid",
            model = "slamvan3",
            price = 415000,
            category = "muscle"
        },
        ["slamvan4"] = {
            name = "Apocalypse Slamvan",
            brand = "Vapid",
            model = "slamvan4",
            price = 1268000,
            category = "muscle"
        },
        ["slamvan5"] = {
            name = "Future Shock Slamvan",
            brand = "Vapid",
            model = "slamvan5",
            price = 1268000,
            category = "muscle"
        },
        ["slamvan6"] = {
            name = "Nightmare Slamvan",
            brand = "Vapid",
            model = "slamvan6",
            price = 1268000,
            category = "muscle"
        },
        ["stalion"] = {
            name = "Stalion",
            brand = "Declasse",
            model = "stalion",
            price = 71000,
            category = "muscle"
        },
        ["stalion2"] = {
            name = "Burger Shot Stallion",
            brand = "Declasse",
            model = "stalion2",
            price = 277000,
            category = "muscle"
        },
        ["tahoma"] = {
            name = "Tahoma Coupe",
            brand = "Declasse",
            model = "tahoma",
            price = 1500000,
            category = "muscle"
        },
        ["tampa"] = {
            name = "Tampa",
            brand = "Declasse",
            model = "tampa",
            price = 375000,
            category = "muscle"
        },
        ["tulip"] = {
            name = "Tulip",
            brand = "Declasse",
            model = "tulip",
            price = 718000,
            category = "muscle"
        },
        ["tulip2"] = {
            name = "Tulip M-100",
            brand = "Declasse",
            model = "tulip2",
            price = 1658000,
            category = "muscle"
        },
        ["vamos"] = {
            name = "Vamos",
            brand = "Declasse",
            model = "vamos",
            price = 596000,
            category = "muscle"
        },
        ["vigero"] = {
            name = "Vigero",
            brand = "Declasse",
            model = "vigero",
            price = 21000,
            category = "muscle"
        },
        ["vigero2"] = {
            name = "Vigero ZX",
            brand = "Declasse",
            model = "vigero2",
            price = 1947000,
            category = "muscle"
        },
        ["vigero3"] = {
            name = "Vigero ZX Convertible",
            brand = "Declasse",
            model = "vigero3",
            price = 2250000,
            category = "muscle"
        },
        ["virgo"] = {
            name = "Virgo",
            brand = "Albany",
            model = "virgo",
            price = 195000,
            category = "muscle"
        },
        ["virgo2"] = {
            name = "Virgo Classic Custom",
            brand = "Dundreary",
            model = "virgo2",
            price = 415000,
            category = "muscle"
        },
        ["virgo3"] = {
            name = "Virgo Classic",
            brand = "Dundreary",
            model = "virgo3",
            price = 165000,
            category = "muscle"
        },
        ["voodoo"] = {
            name = "Voodoo Custom",
            brand = "Declasse",
            model = "voodoo",
            price = 420000,
            category = "muscle"
        },
        ["voodoo2"] = {
            name = "Voodoo",
            brand = "Declasse",
            model = "voodoo2",
            price = 5500,
            category = "muscle"
        },
        ["weevil2"] = {
            name = "Weevil Custom",
            brand = "BF",
            model = "weevil2",
            price = 980000,
            category = "muscle"
        },
        ["yosemite2"] = {
            name = "Yosemite Rancher",
            brand = "Declasse",
            model = "yosemite2",
            price = 700000,
            category = "muscle"
        },
        ["yosemite"] = {
            name = "Yosemite",
            brand = "Declasse",
            model = "yosemite",
            price = 485000,
            category = "muscle"
        },
    },
    ["sportsclassic"] = {
        ["ardent"] = {
            name = "Ardent",
            brand = "Ocelot",
            model = "ardent",
            price = 1150000,
            category = "sportsclassic"
        },
        ["btype"] = {
            name = "Roosevelt",
            brand = "Albany",
            model = "btype",
            price = 750000,
            category = "sportsclassic"
        },
        ["btype2"] = {
            name = "Fränken Stange",
            brand = "Albany",
            model = "btype2",
            price = 550000,
            category = "sportsclassic"
        },
        ["btype3"] = {
            name = "Roosevelt Valor",
            brand = "Albany",
            model = "btype3",
            price = 982000,
            category = "sportsclassic"
        },
        ["casco"] = {
            name = "Casco",
            brand = "Lampadati",
            model = "casco",
            price = 904000,
            category = "sportsclassic"
        },
        ["cheburek"] = {
            name = "Cheburek",
            brand = "Rune",
            model = "cheburek",
            price = 145000,
            category = "sportsclassic"
        },
        ["cheetah2"] = {
            name = "Cheetah Classic",
            brand = "Grotti",
            model = "cheetah2",
            price = 865000,
            category = "sportsclassic"
        },
        ["coquette2"] = {
            name = "Coquette Classic",
            brand = "Invetero",
            model = "coquette2",
            price = 665000,
            category = "sportsclassic"
        },
        ["deluxo"] = {
            name = "Deluxo",
            brand = "Imponte",
            model = "deluxo",
            price = 4721500,
            category = "sportsclassic"
        },
        ["dynasty"] = {
            name = "Dynasty",
            brand = "Weeny",
            model = "dynasty",
            price = 450000,
            category = "sportsclassic"
        },
        ["fagaloa"] = {
            name = "Fagaloa",
            brand = "Vulcar",
            model = "fagaloa",
            price = 335000,
            category = "sportsclassic"
        },
        ["feltzer3"] = {
            name = "Feltzer Classic",
            brand = "Benefactor",
            model = "feltzer3",
            price = 975000,
            category = "sportsclassic"
        },
        ["gt500"] = {
            name = "GT500",
            brand = "Grotti",
            model = "gt500",
            price = 785000,
            category = "sportsclassic"
        },
        ["jb700"] = {
            name = "JB 700",
            brand = "Dewbauchee",
            model = "jb700",
            price = 350000,
            category = "sportsclassic"
        },
        ["jb7002"] = {
            name = "JB 700W",
            brand = "Dewbauchee",
            model = "jb7002",
            price = 1470000,
            category = "sportsclassic"
        },
        ["mamba"] = {
            name = "Mamba",
            brand = "Declasse",
            model = "mamba",
            price = 995000,
            category = "sportsclassic"
        },
        ["manana"] = {
            name = "Manana",
            brand = "Albany",
            model = "manana",
            price = 10000,
            category = "sportsclassic"
        },
        ["michelli"] = {
            name = "Michelli GT",
            brand = "Lampadati",
            model = "michelli",
            price = 1225000,
            category = "sportsclassic"
        },
        ["monroe"] = {
            name = "Monroe",
            brand = "Pegassi",
            model = "monroe",
            price = 490000,
            category = "sportsclassic"
        },
        ["nebula"] = {
            name = "Nebula Turbo",
            brand = "Vulcar",
            model = "nebula",
            price = 797000,
            category = "sportsclassic"
        },
        ["peyote"] = {
            name = "Peyote",
            brand = "Vapid",
            model = "peyote",
            price = 12000,
            category = "sportsclassic"
        },
        ["peyote3"] = {
            name = "Peyote Custom",
            brand = "Vapid",
            model = "peyote3",
            price = 378000,
            category = "sportsclassic"
        },
        ["pigalle"] = {
            name = "Pigalle",
            brand = "Lampadati",
            model = "pigalle",
            price = 400000,
            category = "sportsclassic"
        },
        ["rapidgt3"] = {
            name = "Rapid GT Classic",
            brand = "Dewbauchee",
            model = "rapidgt3",
            price = 885000,
            category = "sportsclassic"
        },
        ["retinue"] = {
            name = "Retinue",
            brand = "Vapid",
            model = "retinue",
            price = 615000,
            category = "sportsclassic"
        },
        ["retinue2"] = {
            name = "Retinue Mk II",
            brand = "Vapid",
            model = "retinue2",
            price = 1620000,
            category = "sportsclassic"
        },
        ["savestra"] = {
            name = "Savestra",
            brand = "Annis",
            model = "savestra",
            price = 990000,
            category = "sportsclassic"
        },
        ["stinger"] = {
            name = "Stinger",
            brand = "Grotti",
            model = "stinger",
            price = 850000,
            category = "sportsclassic"
        },
        ["stingergt"] = {
            name = "Stinger GT",
            brand = "Grotti",
            model = "stingergt",
            price = 875000,
            category = "sportsclassic"
        },
        ["stromberg"] = {
            name = "Stromberg",
            brand = "Ocelot",
            model = "stromberg",
            price = 3185350,
            category = "sportsclassic"
        },
        ["swinger"] = {
            name = "Swinger",
            brand = "Ocelot",
            model = "swinger",
            price = 909000,
            category = "sportsclassic"
        },
        ["toreador"] = {
            name = "Toreador",
            brand = "Pegassi",
            model = "toreador",
            price = 3660000,
            category = "sportsclassic"
        },
        ["torero"] = {
            name = "Torero",
            brand = "Pegassi",
            model = "torero",
            price = 998000,
            category = "sportsclassic"
        },
        ["tornado"] = {
            name = "Tornado",
            brand = "Declasse",
            model = "tornado",
            price = 30000,
            category = "sportsclassic"
        },
        ["tornado2"] = {
            name = "Tornado",
            brand = "Declasse",
            model = "tornado2",
            price = 30000,
            category = "sportsclassic"
        },
        ["tornado3"] = {
            name = "Tornado",
            brand = "Declasse",
            model = "tornado3",
            price = 30000,
            category = "sportsclassic"
        },
        ["tornado4"] = {
            name = "Tornado",
            brand = "Declasse",
            model = "tornado4",
            price = 30000,
            category = "sportsclassic"
        },
        ["tornado5"] = {
            name = "Tornado Custom",
            brand = "Declasse",
            model = "tornado5",
            price = 375000,
            category = "sportsclassic"
        },
        ["tornado6"] = {
            name = "Tornado Rat Rod",
            brand = "Declasse",
            model = "tornado6",
            price = 378000,
            category = "sportsclassic"
        },
        ["turismo2"] = {
            name = "Turismo Classic",
            brand = "Grotti",
            model = "turismo2",
            price = 705000,
            category = "sportsclassic"
        },
        ["viseris"] = {
            name = "Viseris",
            brand = "Lampadati",
            model = "viseris",
            price = 875000,
            category = "sportsclassic"
        },
        ["z190"] = {
            name = "190z",
            brand = "Karin",
            model = "z190",
            price = 900000,
            category = "sportsclassic"
        },
        ["zion3"] = {
            name = "Zion Classic",
            brand = "Ubermacht",
            model = "zion3",
            price = 812000,
            category = "sportsclassic"
        },
        ["ztype"] = {
            name = "Z-Type",
            brand = "Truffade",
            model = "ztype",
            price = 950000,
            category = "sportsclassic"
        },
    },
    ["sports"] = {
        ["alpha"] = {
            name = "Alpha",
            brand = "Albany",
            model = "alpha",
            price = 150000,
            category = "sports"
        },
        ["banshee"] = {
            name = "Banshee",
            brand = "Bravado",
            model = "banshee",
            price = 105000,
            category = "sports"
        },
        ["bestiagts"] = {
            name = "Bestia GTS",
            brand = "Grotti",
            model = "bestiagts",
            price = 610000,
            category = "sports"
        },
        ["blista2"] = {
            name = "Blista Compact",
            brand = "Dinka",
            model = "blista2",
            price = 42000,
            category = "sports"
        },
        ["blista3"] = {
            name = "Go Go Monkey Blista",
            brand = "Dinka",
            model = "blista3",
            price = 42000,
            category = "sports"
        },
        ["buffalo"] = {
            name = "Buffalo",
            brand = "Bravado",
            model = "buffalo",
            price = 35000,
            category = "sports"
        },
        ["buffalo2"] = {
            name = "Buffalo S",
            brand = "Bravado",
            model = "buffalo2",
            price = 96000,
            category = "sports"
        },
        ["buffalo3"] = {
            name = "Sprunk Buffalo",
            brand = "Bravado",
            model = "buffalo3",
            price = 96000,
            category = "sports"
        },
        ["calico"] = {
            name = "Calico GTF",
            brand = "Karin",
            model = "calico",
            price = 1995000,
            category = "sports"
        },
        ["carbonizzare"] = {
            name = "Carbonizzare",
            brand = "Grotti",
            model = "carbonizzare",
            price = 195000,
            category = "sports"
        },
        ["comet2"] = {
            name = "Comet",
            brand = "Pfister",
            model = "comet2",
            price = 100000,
            category = "sports"
        },
        ["comet3"] = {
            name = "Comet Retro Custom",
            brand = "Pfister",
            model = "comet3",
            price = 710000,
            category = "sports"
        },
        ["comet4"] = {
            name = "Comet Safari",
            brand = "Pfister",
            model = "comet4",
            price = 710000,
            category = "sports"
        },
        ["comet5"] = {
            name = "Comet SR",
            brand = "Pfister",
            model = "comet5",
            price = 1145000,
            category = "sports"
        },
        ["comet6"] = {
            name = "Comet S2",
            brand = "Pfister",
            model = "comet6",
            price = 1878000,
            category = "sports"
        },
        ["comet7"] = {
            name = "Comet S2 Cabrio",
            brand = "Pfister",
            model = "comet7",
            price = 1797000,
            category = "sports"
        },
        ["coquette"] = {
            name = "Coquette",
            brand = "Invetero",
            model = "coquette",
            price = 138000,
            category = "sports"
        },
        ["coquette4"] = {
            name = "Coquette D10",
            brand = "Invetero",
            model = "coquette4",
            price = 1510000,
            category = "sports"
        },
        ["corsita"] = {
            name = "Corsita",
            brand = "Lampadati",
            model = "corsita",
            price = 1795000,
            category = "sports"
        },
        ["coureur"] = {
            name = "La Coureuse",
            brand = "Classique",
            model = "coureur",
            price = 1925000,
            category = "sports"
        },
        ["cypher"] = {
            name = "Cypher",
            brand = "Ubermacht",
            model = "cypher",
            price = 1550000,
            category = "sports"
        },
        ["drafter"] = {
            name = "8F Drafter",
            brand = "Obey",
            model = "drafter",
            price = 718000,
            category = "sports"
        },
        ["drifteuros"] = {
            name = "Euros (Drift)",
            brand = "Annis",
            model = "drifteuros",
            price = 1390000,
            category = "sports"
        },
        ["driftfuto"] = {
            name = "Futo GTX (Drift)",
            brand = "Karin",
            model = "driftfuto",
            price = 1590000,
            category = "sports"
        },
        ["driftjester"] = {
            name = "Jester RR (Drift)",
            brand = "Dinka",
            model = "driftjester",
            price = 1970000,
            category = "sports"
        },
        ["driftremus"] = {
            name = "Remus (Drift)",
            brand = "Annis",
            model = "driftremus",
            price = 1370000,
            category = "sports"
        },
        ["drifttampa"] = {
            name = "Drift Tampa (Drift)",
            brand = "Declasse",
            model = "drifttampa",
            price = 995000,
            category = "sports"
        },
        ["driftzr350"] = {
            name = "ZR350 (Drift)",
            brand = "Annis",
            model = "driftzr350",
            price = 1615000,
            category = "sports"
        },
        ["elegy"] = {
            name = "Elegy Retro Custom",
            brand = "Annis",
            model = "elegy",
            price = 904000,
            category = "sports"
        },
        ["elegy2"] = {
            name = "Elegy RH8",
            brand = "Annis",
            model = "elegy2",
            price = 95000,
            category = "sports"
        },
        ["euros"] = {
            name = "Euros",
            brand = "Annis",
            model = "euros",
            price = 1800000,
            category = "sports"
        },
        ["everon2"] = {
            name = "Hotring Everon",
            brand = "Karin",
            model = "everon2",
            price = 1790000,
            category = "sports"
        },
        ["feltzer2"] = {
            name = "Feltzer",
            brand = "Benefactor",
            model = "feltzer2",
            price = 130000,
            category = "sports"
        },
        ["flashgt"] = {
            name = "Flash GT",
            brand = "Vapid",
            model = "flashgt",
            price = 1675000,
            category = "sports"
        },
        ["furoregt"] = {
            name = "Furore GT",
            brand = "Lampadati",
            model = "furoregt",
            price = 448000,
            category = "sports"
        },
        ["fusilade"] = {
            name = "Fusilade",
            brand = "Schyster",
            model = "fusilade",
            price = 36000,
            category = "sports"
        },
        ["futo"] = {
            name = "Futo",
            brand = "Karin",
            model = "futo",
            price = 9000,
            category = "sports"
        },
        ["futo2"] = {
            name = "Futo GTX",
            brand = "Karin",
            model = "futo2",
            price = 1590000,
            category = "sports"
        },
        ["gauntlet6"] = {
            name = "Hotring Hellfire",
            brand = "Bravado",
            model = "gauntlet6",
            price = 1870000,
            category = "sports"
        },
        ["gb200"] = {
            name = "GB200",
            brand = "Vapid",
            model = "gb200",
            price = 940000,
            category = "sports"
        },
        ["growler"] = {
            name = "Growler",
            brand = "Pfister",
            model = "growler",
            price = 1627000,
            category = "sports"
        },
        ["hotring"] = {
            name = "Hotring Sabre",
            brand = "Declasse",
            model = "hotring",
            price = 830000,
            category = "sports"
        },
        ["imorgon"] = {
            name = "Imorgon",
            brand = "Overflod",
            model = "imorgon",
            price = 2165000,
            category = "sports"
        },
        ["issi7"] = {
            name = "Issi Sport",
            brand = "Weeny",
            model = "issi7",
            price = 897000,
            category = "sports"
        },
        ["italigto"] = {
            name = "Itali GTO",
            brand = "Grotti",
            model = "italigto",
            price = 1965000,
            category = "sports"
        },
        ["italirsx"] = {
            name = "Itali RSX",
            brand = "Grotti",
            model = "italirsx",
            price = 3465000,
            category = "sports"
        },
        ["jester"] = {
            name = "Jester",
            brand = "Dinka",
            model = "jester",
            price = 240000,
            category = "sports"
        },
        ["jester2"] = {
            name = "Jester (Racecar)",
            brand = "Dinka",
            model = "jester2",
            price = 350000,
            category = "sports"
        },
        ["jester3"] = {
            name = "Jester Classic",
            brand = "Dinka",
            model = "jester3",
            price = 790000,
            category = "sports"
        },
        ["jester4"] = {
            name = "Jester RR",
            brand = "Dinka",
            model = "jester4",
            price = 1970000,
            category = "sports"
        },
        ["jugular"] = {
            name = "Jugular",
            brand = "Ocelot",
            model = "jugular",
            price = 1225000,
            category = "sports"
        },
        ["khamelion"] = {
            name = "Khamelion",
            brand = "Hijak",
            model = "khamelion",
            price = 100000,
            category = "sports"
        },
        ["komoda"] = {
            name = "Komoda",
            brand = "Lampadati",
            model = "komoda",
            price = 1700000,
            category = "sports"
        },
        ["kuruma"] = {
            name = "Kuruma",
            brand = "Karin",
            model = "kuruma",
            price = 95000,
            category = "sports"
        },
        ["kuruma2"] = {
            name = "Kuruma (Armored)",
            brand = "Karin",
            model = "kuruma2",
            price = 698250,
            category = "sports"
        },
        ["locust"] = {
            name = "Locust",
            brand = "Ocelot",
            model = "locust",
            price = 1625000,
            category = "sports"
        },
        ["lynx"] = {
            name = "Lynx",
            brand = "Ocelot",
            model = "lynx",
            price = 1735000,
            category = "sports"
        },
        ["massacro"] = {
            name = "Massacro",
            brand = "Dewbauchee",
            model = "massacro",
            price = 275000,
            category = "sports"
        },
        ["massacro2"] = {
            name = "Massacro (Racecar)",
            brand = "Dewbauchee",
            model = "massacro2",
            price = 385000,
            category = "sports"
        },
        ["neo"] = {
            name = "Neo",
            brand = "Vysser",
            model = "neo",
            price = 1875000,
            category = "sports"
        },
        ["neon"] = {
            name = "Neon",
            brand = "Pfister",
            model = "neon",
            price = 1500000,
            category = "sports"
        },
        ["ninef"] = {
            name = "9F",
            brand = "Obey",
            model = "ninef",
            price = 120000,
            category = "sports"
        },
        ["ninef2"] = {
            name = "9F Cabrio",
            brand = "Obey",
            model = "ninef2",
            price = 130000,
            category = "sports"
        },
        ["omnis"] = {
            name = "Omnis",
            brand = "Obey",
            model = "omnis",
            price = 701000,
            category = "sports"
        },
        ["omnisegt"] = {
            name = "Omnis e-GT",
            brand = "Obey",
            model = "omnisegt",
            price = 1795000,
            category = "sports"
        },
        ["panthere"] = {
            name = "Panthere",
            brand = "Toundra",
            model = "panthere",
            price = 2170000,
            category = "sports"
        },
        ["paragon"] = {
            name = "Paragon R",
            brand = "Enus",
            model = "paragon",
            price = 905000,
            category = "sports"
        },
        ["paragon2"] = {
            name = "Paragon R (Armored)",
            brand = "Enus",
            model = "paragon2",
            price = 0,
            category = "sports"
        },
        ["pariah"] = {
            name = "Pariah",
            brand = "Ocelot",
            model = "pariah",
            price = 1420000,
            category = "sports"
        },
        ["penumbra"] = {
            name = "Penumbra",
            brand = "Maibatsu",
            model = "penumbra",
            price = 24000,
            category = "sports"
        },
        ["penumbra2"] = {
            name = "Penumbra FF",
            brand = "Maibatsu",
            model = "penumbra2",
            price = 1380000,
            category = "sports"
        },
        ["r300"] = {
            name = "300R",
            brand = "Declasse",
            model = "r300",
            price = 2075000,
            category = "sports"
        },
        ["raiden"] = {
            name = "Raiden",
            brand = "Coil",
            model = "raiden",
            price = 1375000,
            category = "sports"
        },
        ["rapidgt"] = {
            name = "Rapid GT",
            brand = "Dewbauchee",
            model = "rapidgt",
            price = 132000,
            category = "sports"
        },
        ["rapidgt2"] = {
            name = "Rapid GT",
            brand = "Dewbauchee",
            model = "rapidgt2",
            price = 140000,
            category = "sports"
        },
        ["raptor"] = {
            name = "Raptor",
            brand = "BF",
            model = "raptor",
            price = 648000,
            category = "sports"
        },
        ["remus"] = {
            name = "Remus",
            brand = "Annis",
            model = "remus",
            price = 1370000,
            category = "sports"
        },
        ["revolter"] = {
            name = "Revolter",
            brand = "Ubermacht",
            model = "revolter",
            price = 1610000,
            category = "sports"
        },
        ["rt3000"] = {
            name = "RT3000",
            brand = "Dinka",
            model = "rt3000",
            price = 1715000,
            category = "sports"
        },
        ["ruston"] = {
            name = "Ruston",
            brand = "Hijak",
            model = "ruston",
            price = 430000,
            category = "sports"
        },
        ["schafter3"] = {
            name = "Schafter V12",
            brand = "Benefactor",
            model = "schafter3",
            price = 116000,
            category = "sports"
        },
        ["schafter4"] = {
            name = "Schafter LWB",
            brand = "Benefactor",
            model = "schafter4",
            price = 120000,
            category = "sports"
        },
        ["schlagen"] = {
            name = "Schlagen GT",
            brand = "Benefactor",
            model = "schlagen",
            price = 1300000,
            category = "sports"
        },
        ["schwarzer"] = {
            name = "Schwarzer",
            brand = "Benefactor",
            model = "schwarzer",
            price = 80000,
            category = "sports"
        },
        ["sentinel3"] = {
            name = "Sentinel",
            brand = "Ubermacht",
            model = "sentinel3",
            price = 650000,
            category = "sports"
        },
        ["sentinel4"] = {
            name = "Sentinel Classic Widebody",
            brand = "Ubermacht",
            model = "sentinel4",
            price = 700000,
            category = "sports"
        },
        ["seven70"] = {
            name = "Seven-70",
            brand = "Dewbauchee",
            model = "seven70",
            price = 695000,
            category = "sports"
        },
        ["sm722"] = {
            name = "SM722",
            brand = "Benefactor",
            model = "sm722",
            price = 2115000,
            category = "sports"
        },
        ["specter"] = {
            name = "Specter",
            brand = "Dewbauchee",
            model = "specter",
            price = 599000,
            category = "sports"
        },
        ["specter2"] = {
            name = "Specter Custom",
            brand = "Dewbauchee",
            model = "specter2",
            price = 252000,
            category = "sports"
        },
        ["stingertt"] = {
            name = "Itali GTO Stinger TT",
            brand = "Grotti",
            model = "stingertt",
            price = 2380000,
            category = "sports"
        },
        ["streiter"] = {
            name = "Streiter",
            brand = "Benefactor",
            model = "streiter",
            price = 500000,
            category = "sports"
        },
        ["sugoi"] = {
            name = "Sugoi",
            brand = "Dinka",
            model = "sugoi",
            price = 1224000,
            category = "sports"
        },
        ["sultan"] = {
            name = "Sultan",
            brand = "Karin",
            model = "sultan",
            price = 12000,
            category = "sports"
        },
        ["sultan2"] = {
            name = "Sultan Classic",
            brand = "Karin",
            model = "sultan2",
            price = 1718000,
            category = "sports"
        },
        ["sultan3"] = {
            name = "Sultan RS Classic",
            brand = "Karin",
            model = "sultan3",
            price = 1789000,
            category = "sports"
        },
        ["surano"] = {
            name = "Surano",
            brand = "Benefactor",
            model = "surano",
            price = 110000,
            category = "sports"
        },
        ["tampa2"] = {
            name = "Drift Tampa",
            brand = "Declasse",
            model = "tampa2",
            price = 995000,
            category = "sports"
        },
        ["tenf"] = {
            name = "10F",
            brand = "Obey",
            model = "tenf",
            price = 1675000,
            category = "sports"
        },
        ["tenf2"] = {
            name = "10F Widebody",
            brand = "Obey",
            model = "tenf2",
            price = 1875000,
            category = "sports"
        },
        ["tropos"] = {
            name = "Tropos Rallye",
            brand = "Lampadati",
            model = "tropos",
            price = 816000,
            category = "sports"
        },
        ["vectre"] = {
            name = "Vectre",
            brand = "Emperor",
            model = "vectre",
            price = 1785000,
            category = "sports"
        },
        ["verlierer2"] = {
            name = "Verlierer",
            brand = "Bravado",
            model = "verlierer2",
            price = 695000,
            category = "sports"
        },
        ["veto"] = {
            name = "Veto Classic",
            brand = "Dinka",
            model = "veto",
            price = 895000,
            category = "sports"
        },
        ["veto2"] = {
            name = "Veto Modern",
            brand = "Dinka",
            model = "veto2",
            price = 995000,
            category = "sports"
        },
        ["vstr"] = {
            name = "V-STR",
            brand = "Albany",
            model = "vstr",
            price = 1285000,
            category = "sports"
        },
        ["zr350"] = {
            name = "ZR350",
            brand = "Annis",
            model = "zr350",
            price = 1615000,
            category = "sports"
        },
    },
    ["super"] = {
        ["adder"] = {
            name = "Adder",
            brand = "Truffade",
            model = "adder",
            price = 1000000,
            category = "super"
        },
        ["autarch"] = {
            name = "Autarch",
            brand = "Overflod",
            model = "autarch",
            price = 1955000,
            category = "super"
        },
        ["banshee2"] = {
            name = "Banshee 900R",
            brand = "Bravado",
            model = "banshee2",
            price = 565000,
            category = "super"
        },
        ["bullet"] = {
            name = "Bullet",
            brand = "Vapid",
            model = "bullet",
            price = 155000,
            category = "super"
        },
        ["champion"] = {
            name = "Champion",
            brand = "Dewbauchee",
            model = "champion",
            price = 3750000,
            category = "super"
        },
        ["cheetah"] = {
            name = "Cheetah",
            brand = "Grotti",
            model = "cheetah",
            price = 650000,
            category = "super"
        },
        ["cyclone"] = {
            name = "Cyclone",
            brand = "Coil",
            model = "cyclone",
            price = 1890000,
            category = "super"
        },
        ["deveste"] = {
            name = "Deveste Eight",
            brand = "Principe",
            model = "deveste",
            price = 1795000,
            category = "super"
        },
        ["emerus"] = {
            name = "Emerus",
            brand = "Progen",
            model = "emerus",
            price = 2750000,
            category = "super"
        },
        ["entity2"] = {
            name = "Entity XXR",
            brand = "Overflod",
            model = "entity2",
            price = 2305000,
            category = "super"
        },
        ["entity3"] = {
            name = "Entity MT",
            brand = "Overflod",
            model = "entity3",
            price = 2355000,
            category = "super"
        },
        ["entityxf"] = {
            name = "Entity XF",
            brand = "Overflod",
            model = "entityxf",
            price = 795000,
            category = "super"
        },
        ["fmj"] = {
            name = "FMJ",
            brand = "Vapid",
            model = "fmj",
            price = 1750000,
            category = "super"
        },
        ["furia"] = {
            name = "Furia",
            brand = "Grotti",
            model = "furia",
            price = 2740000,
            category = "super"
        },
        ["gp1"] = {
            name = "GP1",
            brand = "Progen",
            model = "gp1",
            price = 1260000,
            category = "super"
        },
        ["ignus"] = {
            name = "Ignus",
            brand = "Pegassi",
            model = "ignus",
            price = 2765000,
            category = "super"
        },
        ["infernus"] = {
            name = "Infernus",
            brand = "Pegassi",
            model = "infernus",
            price = 440000,
            category = "super"
        },
        ["italigtb"] = {
            name = "Itali GTB",
            brand = "Progen",
            model = "italigtb",
            price = 1189000,
            category = "super"
        },
        ["italigtb2"] = {
            name = "Itali GTB Custom",
            brand = "Progen",
            model = "italigtb2",
            price = 495000,
            category = "super"
        },
        ["krieger"] = {
            name = "Krieger",
            brand = "Benefactor",
            model = "krieger",
            price = 2875000,
            category = "super"
        },
        ["le7b"] = {
            name = "RE-7B",
            brand = "Annis",
            model = "le7b",
            price = 2475000,
            category = "super"
        },
        ["lm87"] = {
            name = "LM87",
            brand = "Benefactor",
            model = "lm87",
            price = 2915000,
            category = "super"
        },
        ["nero"] = {
            name = "Nero",
            brand = "Truffade",
            model = "nero",
            price = 1440000,
            category = "super"
        },
        ["nero2"] = {
            name = "Nero Custom",
            brand = "Truffade",
            model = "nero2",
            price = 605000,
            category = "super"
        },
        ["osiris"] = {
            name = "Osiris",
            brand = "Pegassi",
            model = "osiris",
            price = 1950000,
            category = "super"
        },
        ["penetrator"] = {
            name = "Penetrator",
            brand = "Ocelot",
            model = "penetrator",
            price = 880000,
            category = "super"
        },
        ["pfister811"] = {
            name = "811",
            brand = "Pfister",
            model = "pfister811",
            price = 1135000,
            category = "super"
        },
        ["prototipo"] = {
            name = "X80 Proto",
            brand = "Grotti",
            model = "prototipo",
            price = 2700000,
            category = "super"
        },
        ["reaper"] = {
            name = "Reaper",
            brand = "Pegassi",
            model = "reaper",
            price = 1595000,
            category = "super"
        },
        ["s80"] = {
            name = "S80RR",
            brand = "Annis",
            model = "s80",
            price = 2575000,
            category = "super"
        },
        ["sc1"] = {
            name = "SC1",
            brand = "Ubermacht",
            model = "sc1",
            price = 1603000,
            category = "super"
        },
        ["sheava"] = {
            name = "ETR1",
            brand = "Emperor",
            model = "sheava",
            price = 1995000,
            category = "super"
        },
        ["sultanrs"] = {
            name = "Sultan RS",
            brand = "Karin",
            model = "sultanrs",
            price = 795000,
            category = "super"
        },
        ["t20"] = {
            name = "T20",
            brand = "Progen",
            model = "t20",
            price = 2200000,
            category = "super"
        },
        ["taipan"] = {
            name = "Taipan",
            brand = "Cheval",
            model = "taipan",
            price = 1980000,
            category = "super"
        },
        ["tempesta"] = {
            name = "Tempesta",
            brand = "Pegassi",
            model = "tempesta",
            price = 1329000,
            category = "super"
        },
        ["tezeract"] = {
            name = "Tezeract",
            brand = "Pegassi",
            model = "tezeract",
            price = 2825000,
            category = "super"
        },
        ["thrax"] = {
            name = "Thrax",
            brand = "Truffade",
            model = "thrax",
            price = 2325000,
            category = "super"
        },
        ["tigon"] = {
            name = "Tigon",
            brand = "Lampadati",
            model = "tigon",
            price = 2310000,
            category = "super"
        },
        ["torero2"] = {
            name = "Torero XO",
            brand = "Pegassi",
            model = "torero2",
            price = 2890000,
            category = "super"
        },
        ["turismo3"] = {
            name = "Turismo Omaggio",
            brand = "Grotti",
            model = "turismo3",
            price = 2845000,
            category = "super"
        },
        ["turismor"] = {
            name = "Turismo R",
            brand = "Grotti",
            model = "turismor",
            price = 500000,
            category = "super"
        },
        ["tyrant"] = {
            name = "Tyrant",
            brand = "Överflöd",
            model = "tyrant",
            price = 2515000,
            category = "super"
        },
        ["tyrus"] = {
            name = "Tyrus",
            brand = "Progen",
            model = "tyrus",
            price = 2550000,
            category = "super"
        },
        ["vacca"] = {
            name = "Vacca",
            brand = "Pegassi",
            model = "vacca",
            price = 240000,
            category = "super"
        },
        ["vagner"] = {
            name = "Vagner",
            brand = "Dewbauchee",
            model = "vagner",
            price = 1535000,
            category = "super"
        },
        ["virtue"] = {
            name = "Virtue",
            brand = "Ocelot",
            model = "virtue",
            price = 2980000,
            category = "super"
        },
        ["visione"] = {
            name = "Visione",
            brand = "Grotti",
            model = "visione",
            price = 2250000,
            category = "super"
        },
        ["voltic"] = {
            name = "Voltic",
            brand = "Coil",
            model = "voltic",
            price = 150000,
            category = "super"
        },
        ["xa21"] = {
            name = "XA-21",
            brand = "Ocelot",
            model = "xa21",
            price = 2375000,
            category = "super"
        },
        ["zeno"] = {
            name = "Zeno",
            brand = "Overflod",
            model = "zeno",
            price = 2820000,
            category = "super"
        },
        ["zentorno"] = {
            name = "Zentorno",
            brand = "Pegassi",
            model = "zentorno",
            price = 725000,
            category = "super"
        },
        ["zorrusso"] = {
            name = "Zorrusso",
            brand = "Pegassi",
            model = "zorrusso",
            price = 1925000,
            category = "super"
        },
    },
    ["motorcycles"] = {
        ["akuma"] = {
            name = "Akuma",
            brand = "Dinka",
            model = "akuma",
            price = 9000,
            category = "motorcycles"
        },
        ["avarus"] = {
            name = "Avarus",
            brand = "LCC",
            model = "avarus",
            price = 116000,
            category = "motorcycles"
        },
        ["bagger"] = {
            name = "Bagger",
            brand = "Western",
            model = "bagger",
            price = 16000,
            category = "motorcycles"
        },
        ["bati"] = {
            name = "Bati 801",
            brand = "Pegassi",
            model = "bati",
            price = 15000,
            category = "motorcycles"
        },
        ["bati2"] = {
            name = "Bati 801RR",
            brand = "Pegassi",
            model = "bati2",
            price = 15000,
            category = "motorcycles"
        },
        ["bf400"] = {
            name = "BF400",
            brand = "Nagasaki",
            model = "bf400",
            price = 95000,
            category = "motorcycles"
        },
        ["carbonrs"] = {
            name = "Carbon RS",
            brand = "Nagasaki",
            model = "carbonrs",
            price = 40000,
            category = "motorcycles"
        },
        ["chimera"] = {
            name = "Chimera",
            brand = "Nagasaki",
            model = "chimera",
            price = 210000,
            category = "motorcycles"
        },
        ["cliffhanger"] = {
            name = "Cliffhanger",
            brand = "Western",
            model = "cliffhanger",
            price = 225000,
            category = "motorcycles"
        },
        ["daemon"] = {
            name = "Daemon",
            brand = "Western",
            model = "daemon",
            price = 12000,
            category = "motorcycles"
        },
        ["daemon2"] = {
            name = "Daemon Custom",
            brand = "Western",
            model = "daemon2",
            price = 145000,
            category = "motorcycles"
        },
        ["deathbike"] = {
            name = "Apocalypse Deathbike",
            brand = "Western",
            model = "deathbike",
            price = 1269000,
            category = "motorcycles"
        },
        ["deathbike2"] = {
            name = "Future Shock Deathbike",
            brand = "Western",
            model = "deathbike2",
            price = 1269000,
            category = "motorcycles"
        },
        ["deathbike3"] = {
            name = "Nightmare Deathbike",
            brand = "Western",
            model = "deathbike3",
            price = 1269000,
            category = "motorcycles"
        },
        ["defiler"] = {
            name = "Defiler",
            brand = "Shitzu",
            model = "defiler",
            price = 412000,
            category = "motorcycles"
        },
        ["diablous"] = {
            name = "Diablous",
            brand = "Principe",
            model = "diablous",
            price = 169000,
            category = "motorcycles"
        },
        ["diablous2"] = {
            name = "Diablous Custom",
            brand = "Principe",
            model = "diablous2",
            price = 245000,
            category = "motorcycles"
        },
        ["double"] = {
            name = "Double-T",
            brand = "Dinka",
            model = "double",
            price = 12000,
            category = "motorcycles"
        },
        ["enduro"] = {
            name = "Enduro",
            brand = "Dinka",
            model = "enduro",
            price = 48000,
            category = "motorcycles"
        },
        ["esskey"] = {
            name = "Esskey",
            brand = "Pegassi",
            model = "esskey",
            price = 264000,
            category = "motorcycles"
        },
        ["faggio"] = {
            name = "Faggio Sport",
            brand = "Pegassi",
            model = "faggio",
            price = 5000,
            category = "motorcycles"
        },
        ["faggio2"] = {
            name = "Faggio",
            brand = "Pegassi",
            model = "faggio2",
            price = 5000,
            category = "motorcycles"
        },
        ["faggio3"] = {
            name = "Faggio Mod",
            brand = "Pegassi",
            model = "faggio3",
            price = 55000,
            category = "motorcycles"
        },
        ["fcr"] = {
            name = "FCR 1000",
            brand = "Pegassi",
            model = "fcr",
            price = 135000,
            category = "motorcycles"
        },
        ["fcr2"] = {
            name = "FCR 1000 Custom",
            brand = "Pegassi",
            model = "fcr2",
            price = 196000,
            category = "motorcycles"
        },
        ["gargoyle"] = {
            name = "Gargoyle",
            brand = "Western",
            model = "gargoyle",
            price = 120000,
            category = "motorcycles"
        },
        ["hakuchou"] = {
            name = "Hakuchou",
            brand = "Shitzu",
            model = "hakuchou",
            price = 82000,
            category = "motorcycles"
        },
        ["hakuchou2"] = {
            name = "Hakuchou Drag",
            brand = "Shitzu",
            model = "hakuchou2",
            price = 976000,
            category = "motorcycles"
        },
        ["hexer"] = {
            name = "Hexer",
            brand = "LCC",
            model = "hexer",
            price = 15000,
            category = "motorcycles"
        },
        ["innovation"] = {
            name = "Innovation",
            brand = "LCC",
            model = "innovation",
            price = 92500,
            category = "motorcycles"
        },
        ["lectro"] = {
            name = "Lectro",
            brand = "Principe",
            model = "lectro",
            price = 700000,
            category = "motorcycles"
        },
        ["manchez"] = {
            name = "Manchez",
            brand = "Maibatsu",
            model = "manchez",
            price = 67000,
            category = "motorcycles"
        },
        ["manchez2"] = {
            name = "Manchez Scout",
            brand = "Maibatsu",
            model = "manchez2",
            price = 225000,
            category = "motorcycles"
        },
        ["manchez3"] = {
            name = "Manchez Scout C",
            brand = "Maibatsu",
            model = "manchez3",
            price = 1995000,
            category = "motorcycles"
        },
        ["nemesis"] = {
            name = "Nemesis",
            brand = "Principe",
            model = "nemesis",
            price = 12000,
            category = "motorcycles"
        },
        ["nightblade"] = {
            name = "Nightblade",
            brand = "Western",
            model = "nightblade",
            price = 100000,
            category = "motorcycles"
        },
        ["pcj"] = {
            name = "PCJ-600",
            brand = "Shitzu",
            model = "pcj",
            price = 9000,
            category = "motorcycles"
        },
        ["powersurge"] = {
            name = "Powersurge",
            brand = "Western",
            model = "powersurge",
            price = 1605000,
            category = "motorcycles"
        },
        ["ratbike"] = {
            name = "Rat Bike",
            brand = "Western",
            model = "ratbike",
            price = 48000,
            category = "motorcycles"
        },
        ["reever"] = {
            name = "Reever",
            brand = "Western",
            model = "reever",
            price = 1900000,
            category = "motorcycles"
        },
        ["ruffian"] = {
            name = "Ruffian",
            brand = "Pegassi",
            model = "ruffian",
            price = 9000,
            category = "motorcycles"
        },
        ["sanchez"] = {
            name = "Sanchez",
            brand = "Maibatsu",
            model = "sanchez",
            price = 8000,
            category = "motorcycles"
        },
        ["sanchez2"] = {
            name = "Sanchez (livery)",
            brand = "Maibatsu",
            model = "sanchez2",
            price = 8000,
            category = "motorcycles"
        },
        ["sanctus"] = {
            name = "Sanctus",
            brand = "LCC",
            model = "sanctus",
            price = 1995000,
            category = "motorcycles"
        },
        ["shinobi"] = {
            name = "Shinobi",
            brand = "Nagasaki",
            model = "shinobi",
            price = 2480500,
            category = "motorcycles"
        },
        ["sovereign"] = {
            name = "Sovereign",
            brand = "Western",
            model = "sovereign",
            price = 120000,
            category = "motorcycles"
        },
        ["stryder"] = {
            name = "Stryder",
            brand = "Nagasaki",
            model = "stryder",
            price = 670000,
            category = "motorcycles"
        },
        ["thrust"] = {
            name = "Thrust",
            brand = "Dinka",
            model = "thrust",
            price = 75000,
            category = "motorcycles"
        },
        ["vader"] = {
            name = "Vader",
            brand = "Shitzu",
            model = "vader",
            price = 9000,
            category = "motorcycles"
        },
        ["vindicator"] = {
            name = "Vindicator",
            brand = "Dinka",
            model = "vindicator",
            price = 630000,
            category = "motorcycles"
        },
        ["vortex"] = {
            name = "Vortex",
            brand = "Pegassi",
            model = "vortex",
            price = 356000,
            category = "motorcycles"
        },
        ["wolfsbane"] = {
            name = "Wolfsbane",
            brand = "Western",
            model = "wolfsbane",
            price = 95000,
            category = "motorcycles"
        },
        ["zombiea"] = {
            name = "Zombie Bobber",
            brand = "Western",
            model = "zombiea",
            price = 99000,
            category = "motorcycles"
        },
        ["zombieb"] = {
            name = "Zombie Chopper",
            brand = "Western",
            model = "zombieb",
            price = 122000,
            category = "motorcycles"
        },
    },
    ["off-road"] = {
        ["bfinjection"] = {
            name = "Injection",
            brand = "BF",
            model = "bfinjection",
            price = 16000,
            category = "off-road"
        },
        ["bifta"] = {
            name = "Bifta",
            brand = "BF",
            model = "bifta",
            price = 75000,
            category = "off-road"
        },
        ["blazer"] = {
            name = "Blazer",
            brand = "Nagasaki",
            model = "blazer",
            price = 8000,
            category = "off-road"
        },
        ["blazer2"] = {
            name = "Blazer Lifeguard",
            brand = "Nagasaki",
            model = "blazer2",
            price = 8000,
            category = "off-road"
        },
        ["blazer3"] = {
            name = "Hot Rod Blazer",
            brand = "Nagasaki",
            model = "blazer3",
            price = 69000,
            category = "off-road"
        },
        ["blazer4"] = {
            name = "Street Blazer",
            brand = "Nagasaki",
            model = "blazer4",
            price = 81000,
            category = "off-road"
        },
        ["blazer5"] = {
            name = "Blazer Aqua",
            brand = "Nagasaki",
            model = "blazer5",
            price = 1755600,
            category = "off-road"
        },
        ["bodhi2"] = {
            name = "Bodhi",
            brand = "Canis",
            model = "bodhi2",
            price = 25000,
            category = "off-road"
        },
        ["boor"] = {
            name = "Boor",
            brand = "Karin",
            model = "boor",
            price = 1280000,
            category = "off-road"
        },
        ["brawler"] = {
            name = "Brawler",
            brand = "Coil",
            model = "brawler",
            price = 715000,
            category = "off-road"
        },
        ["brutus"] = {
            name = "Apocalypse Brutus",
            brand = "Declasse",
            model = "brutus",
            price = 2666000,
            category = "off-road"
        },
        ["brutus2"] = {
            name = "Future Shock Brutus",
            brand = "Declasse",
            model = "brutus2",
            price = 2666000,
            category = "off-road"
        },
        ["brutus3"] = {
            name = "Nightmare Brutus",
            brand = "Declasse",
            model = "brutus3",
            price = 2666000,
            category = "off-road"
        },
        ["caracara2"] = {
            name = "Caracara 4x4",
            brand = "Vapid",
            model = "caracara2",
            price = 875000,
            category = "off-road"
        },
        ["contender"] = {
            name = "Contender",
            brand = "Vapid",
            model = "contender",
            price = 250000,
            category = "off-road"
        },
        ["draugur"] = {
            name = "Draugur",
            brand = "Declasse",
            model = "draugur",
            price = 1870000,
            category = "off-road"
        },
        ["dubsta3"] = {
            name = "Dubsta 6x6",
            brand = "Benefactor",
            model = "dubsta3",
            price = 249000,
            category = "off-road"
        },
        ["dune"] = {
            name = "Dune Buggy",
            brand = "BF",
            model = "dune",
            price = 20000,
            category = "off-road"
        },
        ["freecrawler"] = {
            name = "Freecrawler",
            brand = "Canis",
            model = "freecrawler",
            price = 597000,
            category = "off-road"
        },
        ["hellion"] = {
            name = "Hellion",
            brand = "Annis",
            model = "hellion",
            price = 835000,
            category = "off-road"
        },
        ["kalahari"] = {
            name = "Kalahari",
            brand = "Canis",
            model = "kalahari",
            price = 40000,
            category = "off-road"
        },
        ["kamacho"] = {
            name = "Kamacho",
            brand = "Canis",
            model = "kamacho",
            price = 345000,
            category = "off-road"
        },
        ["mesa3"] = {
            name = "Mesa",
            brand = "Canis",
            model = "mesa3",
            price = 87000,
            category = "off-road"
        },
        ["nightshark"] = {
            name = "Nightshark",
            brand = "HVY",
            model = "nightshark",
            price = 1245000,
            category = "off-road"
        },
        ["outlaw"] = {
            name = "Outlaw",
            brand = "Nagasaki",
            model = "outlaw",
            price = 1268000,
            category = "off-road"
        },
        ["patriot3"] = {
            name = "Patriot Mil-Spec",
            brand = "Mammoth",
            model = "patriot3",
            price = 1710000,
            category = "off-road"
        },
        ["rancherxl"] = {
            name = "Rancher XL",
            brand = "Declasse",
            model = "rancherxl",
            price = 9000,
            category = "off-road"
        },
        ["rebel"] = {
            name = "Rusty Rebel",
            brand = "Karin",
            model = "rebel",
            price = 3000,
            category = "off-road"
        },
        ["rebel2"] = {
            name = "Rebel",
            brand = "Karin",
            model = "rebel2",
            price = 22000,
            category = "off-road"
        },
        ["riata"] = {
            name = "Riata",
            brand = "Vapid",
            model = "riata",
            price = 380000,
            category = "off-road"
        },
        ["sandking"] = {
            name = "Sandking SWB",
            brand = "Vapid",
            model = "sandking",
            price = 38000,
            category = "off-road"
        },
        ["sandking2"] = {
            name = "Sandking XL",
            brand = "Vapid",
            model = "sandking2",
            price = 45000,
            category = "off-road"
        },
        ["trophytruck"] = {
            name = "Trophy Truck",
            brand = "Vapid",
            model = "trophytruck",
            price = 550000,
            category = "off-road"
        },
        ["trophytruck2"] = {
            name = "Desert Raid",
            brand = "Vapid",
            model = "trophytruck2",
            price = 695000,
            category = "off-road"
        },
        ["vagrant"] = {
            name = "Vagrant",
            brand = "Maxwell",
            model = "vagrant",
            price = 2214000,
            category = "off-road"
        },
        ["verus"] = {
            name = "Verus",
            brand = "Dinka",
            model = "verus",
            price = 1920000,
            category = "off-road"
        },
        ["winky"] = {
            name = "Winky",
            brand = "Vapid",
            model = "winky",
            price = 1100000,
            category = "off-road"
        },
        ["yosemite3"] = {
            name = "Yosemite Rancher",
            brand = "Declasse",
            model = "yosemite3",
            price = 700000,
            category = "off-road"
        },
    },

    ["vans"] = {
        ["bison"] = {
            name = "Bison",
            brand = "Bravado",
            model = "bison",
            price = 30000,
            category = "vans"
        },
        ["bison2"] = {
            name = "Bison",
            brand = "Bravado",
            model = "bison2",
            price = 30000,
            category = "vans"
        },
        ["bison3"] = {
            name = "Bison",
            brand = "Bravado",
            model = "bison3",
            price = 30000,
            category = "vans"
        },
        ["bobcatxl"] = {
            name = "Bobcat XL",
            brand = "Vapid",
            model = "bobcatxl",
            price = 23000,
            category = "vans"
        },
        ["boxville"] = {
            name = "Boxville",
            brand = "Brute",
            model = "boxville",
            price = 45000,
            category = "vans"
        },
        ["boxville2"] = {
            name = "Boxville (Water & Power)",
            brand = "Brute",
            model = "boxville2",
            price = 45000,
            category = "vans"
        },
        ["boxville3"] = {
            name = "Boxville (Postal)",
            brand = "Brute",
            model = "boxville3",
            price = 45000,
            category = "vans"
        },
        ["boxville4"] = {
            name = "Boxville (Post OP)",
            brand = "Brute",
            model = "boxville4",
            price = 45000,
            category = "vans"
        },
        ["burrito"] = {
            name = "Burrito",
            brand = "Declasse",
            model = "burrito",
            price = 25000,
            category = "vans"
        },
        ["burrito2"] = {
            name = "Burrito",
            brand = "Declasse",
            model = "burrito2",
            price = 25000,
            category = "vans"
        },
        ["burrito3"] = {
            name = "Burrito",
            brand = "Declasse",
            model = "burrito3",
            price = 25000,
            category = "vans"
        },
        ["burrito4"] = {
            name = "Burrito",
            brand = "Declasse",
            model = "burrito4",
            price = 25000,
            category = "vans"
        },
        ["burrito5"] = {
            name = "Burrito",
            brand = "Declasse",
            model = "burrito5",
            price = 25000,
            category = "vans"
        },
        ["camper"] = {
            name = "Camper",
            brand = "Brute",
            model = "camper",
            price = 42500,
            category = "vans"
        },
        ["gburrito"] = {
            name = "Gang Burrito",
            brand = "Declasse",
            model = "gburrito",
            price = 65000,
            category = "vans"
        },
        ["gburrito2"] = {
            name = "Gang Burrito",
            brand = "Declasse",
            model = "gburrito2",
            price = 65000,
            category = "vans"
        },
        ["journey"] = {
            name = "Journey",
            brand = "Zirconium",
            model = "journey",
            price = 15000,
            category = "vans"
        },
        ["journey2"] = {
            name = "Journey II",
            brand = "Zirconium",
            model = "journey2",
            price = 790000,
            category = "vans"
        },
        ["minivan"] = {
            name = "Minivan",
            brand = "Vapid",
            model = "minivan",
            price = 30000,
            category = "vans"
        },
        ["minivan2"] = {
            name = "Minivan Custom",
            brand = "Vapid",
            model = "minivan2",
            price = 330000,
            category = "vans"
        },
        ["paradise"] = {
            name = "Paradise",
            brand = "Bravado",
            model = "paradise",
            price = 25000,
            category = "vans"
        },
        ["pony"] = {
            name = "Pony",
            brand = "Brute",
            model = "pony",
            price = 15000,
            category = "vans"
        },
        ["pony2"] = {
            name = "Pony",
            brand = "Brute",
            model = "pony2",
            price = 15000,
            category = "vans"
        },
        ["rumpo"] = {
            name = "Rumpo",
            brand = "Bravado",
            model = "rumpo",
            price = 13000,
            category = "vans"
        },
        ["rumpo2"] = {
            name = "Rumpo",
            brand = "Bravado",
            model = "rumpo2",
            price = 13000,
            category = "vans"
        },
        ["rumpo3"] = {
            name = "Rumpo Custom",
            brand = "Bravado",
            model = "rumpo3",
            price = 130000,
            category = "vans"
        },
        ["speedo"] = {
            name = "Speedo",
            brand = "Vapid",
            model = "speedo",
            price = 15000,
            category = "vans"
        },
        ["speedo2"] = {
            name = "Speedo",
            brand = "Vapid",
            model = "speedo2",
            price = 15000,
            category = "vans"
        },
        ["speedo4"] = {
            name = "Speedo Custom",
            brand = "Vapid",
            model = "speedo4",
            price = 185000,
            category = "vans"
        },
        ["surfer"] = {
            name = "Surfer",
            brand = "BF",
            model = "surfer",
            price = 11000,
            category = "vans"
        },
        ["surfer2"] = {
            name = "Surfer",
            brand = "BF",
            model = "surfer2",
            price = 8000,
            category = "vans"
        },
        ["surfer3"] = {
            name = "Surfer Custom",
            brand = "BF",
            model = "surfer3",
            price = 90000,
            category = "vans"
        },
        ["taco"] = {
            name = "Taco Van",
            brand = "Declasse",
            model = "taco",
            price = 25000,
            category = "vans"
        },
        ["youga"] = {
            name = "Youga",
            brand = "Bravado",
            model = "youga",
            price = 16000,
            category = "vans"
        },
        ["youga2"] = {
            name = "Youga Classic",
            brand = "Bravado",
            model = "youga2",
            price = 195000,
            category = "vans"
        },
        ["youga3"] = {
            name = "Youga Classic 4x4",
            brand = "Bravado",
            model = "youga3",
            price = 1288000,
            category = "vans"
        },
        ["youga4"] = {
            name = "Youga Custom",
            brand = "Bravado",
            model = "youga4",
            price = 370000,
            category = "vans"
        },
    },
}
