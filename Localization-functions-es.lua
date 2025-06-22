------------------------------------------------------------------------------------------------------
-- Necrosis LdC
--
-- Cr�ateur initial (US) : Infernal (http://www.revolvus.com/games/interface/necrosis/)
-- Impl�mentation de base (FR) : Tilienna Thorondor
-- Reprise du projet : Lomig & Nyx des Larmes de Cenarius, Kael'Thas
--
-- Spanish Version Delvis Barba Roja
-- Version 18.06.2025

-- Version en español por Delvis Diaz Vidal
-- delvisdiazvidal@gmail.com
-- Version 2025.06.18
------------------------------------------------------------------------------------------------------



------------------------------------------------
-- SPANISH VERSION FUNCTIONS --
------------------------------------------------

if ( GetLocale() == "esES" ) then

NECROSIS_UNIT_WARLOCK = "Brujo";

NECROSIS_ANTI_FEAR_SPELL = {
	-- Buffs que otorgan inmunidad temporal al miedo
	["Buff"] = {
		"Guardia contra el Miedo",		-- Rasgo racial enano sacerdote
		"Voluntad de los Renegados",	-- Rasgo racial Renegado
		"Sin Miedo",					-- Abalorio
		"Ira de Berserker",				-- Talento guerrero furia
		"Desenfreno",					-- Talento guerrero furia
		"Deseo de Muerte",				-- Talento guerrero furia
		"Ira Bestial",					-- Talento cazador maestría de bestias (mascota)
		"Bloque de Hielo",				-- Talento mago hielo
		"Protección Divina",			-- Buff paladín sagrado
		"Escudo Divino",				-- Buff paladín sagrado
		"Tótem de Temblor",				-- Tótem chamán
		"Abolir Magia"					-- Hechizo Majordomo (NPC)
		-- "Tótem de Atadura" no se considera porque puede disipar hechizos que no son miedo, y solo 1 cada 10 segundos.
	},

	-- Debuffs y maldiciones que otorgan inmunidad temporal al miedo
	["Debuff"] = {
		"Maldición del Desenfreno"		-- Maldición brujo
	}
};

-- Tipos de criaturas absolutamente inmunes al miedo
NECROSIS_ANTI_FEAR_UNIT = {
	"No Muerto"
};

-- Texto a buscar para detectar inmunidad a hechizos. El primer (.+) es el nombre del hechizo, el segundo (.+) es el nombre de la criatura
NECROSIS_ANTI_FEAR_SRCH = "Tu (.+) ha fallado. (.+) es inmune."

NECROSIS_SPELL_TABLE = {
	[1] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Invocar Corcel Vil",		Length = 0,	Type = 0},
	[2] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Invocar Corcel Temible",		Length = 0,	Type = 0},
	[3] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Invocar Diablo Menor",			Length = 0,	Type = 0},
	[4] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Invocar Caminante del Vacío",			Length = 0,	Type = 0},
	[5] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Invocar Succubus",			Length = 0,	Type = 0},
	[6] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Invocar Manáfago",			Length = 0,	Type = 0},
	[7] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Rayo de Sombra",		Length = 0,	Type = 0},
	[8] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Infierno",				Length = 300,	Type = 3},
	[9] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Destierro",				Length = 30,	Type = 2},
	[10] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Esclavizar Demonio",			Length = 30000,	Type = 2},
	[11] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Resurrección Piedra de Alma",	Length = 1800,	Type = 1},
	[12] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Inmolar",				Length = 15,	Type = 5},
	[13] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Miedo",				Length = 15,	Type = 5},
	[14] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Corrupción",				Length = 17,	Type = 5},
	[15] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Dominación Vil",			Length = 300,	Type = 3},
	[16] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Maldición de Fatalidad",		Length = 60,	Type = 3},
	[17] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Sacrificio",				Length = 30,	Type = 3},
	[18] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Fuego de Alma",			Length = 60,	Type = 3},
	[19] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Espiral de la Muerte",		Length = 120,	Type = 3},
	[20] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Quemadura de Sombras",		Length = 15,	Type = 3},
	[21] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Conflagrar",				Length = 10,	Type = 3},
	[22] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Maldición de Agonía",			Length = 24,	Type = 4},
	[23] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Maldición de Debilidad",		Length = 120,	Type = 4},
	[24] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Maldición de Desenfreno",		Length = 120,	Type = 4},
	[25] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Maldición de los Lenguajes",		Length = 30,	Type = 4},
	[26] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Maldición de los Elementos",		Length = 300,	Type = 4},
	[27] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Maldición de las Sombras",		Length = 300,	Type = 4},
	[28] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Sifón de Vida",			Length = 30,	Type = 5},
	[29] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Aullido de Terror",			Length = 40,	Type = 3},
	[30] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Ritual de Fatalidad",		Length = 3600,	Type = 0},
	[31] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Armadura Demoníaca",			Length = 0,	Type = 0},
	[32] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Aliento Infinito",			Length = 0,	Type = 0},
	[33] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Invisibilidad",			Length = 0,	Type = 0},
	[34] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Ojo de Kilrogg",			Length = 0,	Type = 0},
	[35] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Esclavizar Demonio",			Length = 0,	Type = 0},
	[36] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Piel Demoníaca",			Length = 0,	Type = 0},
	[37] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Ritual de Invocación",		Length = 0,	Type = 0},
	[38] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Enlace de Alma",			Length = 0,	Type = 0},
	[39] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Sentir Demonios",			Length = 0,	Type = 0},
	[40] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Maldición de Agotamiento",		Length = 12,	Type = 4},
	[41] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Ritual de Drenar Vida",		Length = 0,	Type = 0},
	[42] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Amplificar Maldición",		Length = 180,	Type = 3},
	[43] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Guardia de las Sombras",		Length = 30,	Type = 3},
	[44] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Sacrificio Demoníaco",		Length = 0,	Type = 0},

};

-- Tipo 0 = Sin temporizador
-- Tipo 1 = Temporizador principal permanente
-- Tipo 2 = Temporizador permanente
-- Tipo 3 = Temporizador de cooldown
-- Tipo 4 = Temporizador de maldición
-- Tipo 5 = Temporizador de combate

NECROSIS_ITEM = {
	["Soulshard"] 		= "Fragmento de Alma",
	["Soulstone"] 		= "Piedra de Alma",
	["Healthstone"] 	= "Piedra de Salud",
	["Spellstone"] 		= "Piedra de Hechizo",
	["Firestone"] 		= "Piedra de Fuego",
	["Felstone"] 		= "Piedra Vil",
	["Wrathstone"] 		= "Piedra de Ira",
	["Offhand"] 		= "Mano Secundaria",
	["Twohand"] 		= "Dos Manos",
	["InfernalStone"] 	= "Piedra Infernal",
	["DemoniacStone"] 	= "Figura Demoníaca",
	["Hearthstone"] 	= "Piedra de Hogar",
	["SoulPouch"] 		= {"Bolsa de Alma", "Bolsa de Paño Vil", "Bolsa de pPño Vil Núcleo"}
};

NECROSIS_STONE_RANK = {
	[1] = " (Menor)",	-- Rango Menor
	[2] = " (Inferior)",	-- Rango Inferior
	[3] = "",		-- Rango Intermedio, sin nombre
	[4] = " (Superior)",	-- Rango Superior
	[5] = " (Mayor)"	-- Rango Mayor
};

NECROSIS_NIGHTFALL = {
	["BoltName"] = "Rayo de Sombra",
	["ShadowTrance"] = "Trance de las Sombras"
};

NECROSIS_CREATE = {
	[1] = "Crear Piedra de Alma",
	[2] = "Crear Piedra de Salud",
	[3] = "Crear Piedra de Hechizo",
	[4] = "Crear Piedra de Fuego",
	[5] = "Crear Piedra Vil",
	[6] = "Crear Piedra de Ira"
};

NECROSIS_PET_LOCAL_NAME = {
	[1] = "Diablo Menor",
	[2] = "Caminante del Vacío",
	[3] = "Succubus",
	[4] = "Manáfago",
	[5] = "Infernal",
	[6] = "Guardia apocalíptico"
};

NECROSIS_TRANSLATION = {
	["Cooldown"] = "Tiempo de reutilización",
	["Hearth"] = "Piedra de Hogar",
	["Rank"] = "Rango",
	["Invisible"] = "Detectar Invisibilidad",
	["LesserInvisible"] = "Detectar Invisibilidad Inferior",
	["GreaterInvisible"] = "Detectar Gran Invisibilidad",
	["SoulLinkGain"] = "Has obtenido Enlace de Alma.",
	["SacrificeGain"] = "Has obtenido Sacrificio.",
	["SummoningRitual"] = "Ritual de Invocación"
};

end
