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
-- SPANISH VERSION TEXTS --
------------------------------------------------

function Necrosis_Localization_Dialog_Es()

	function NecrosisLocalization()
		Necrosis_Localization_Speech_Es();
	end

	NECROSIS_COOLDOWN = {
        ["Spellstone"] = "Tiempo de reutilización de Piedra de Hechizo",
        ["Healthstone"] = "Tiempo de reutilización de Piedra de Salud"
    };

	NecrosisTooltipData = {
		["Main"] = {
			Label = "|c00FFFFFFNecrosis|r",
			Stone = {
                [true] = "Sí";
                [false] = "No";
            },
            Hellspawn = {
                [true] = "Activado";
                [false] = "Desactivado";
            },
            ["Soulshard"] = "Fragmento(s) de Alma: ",
            ["InfernalStone"] = "Piedra(s) Infernal(es): ",
            ["DemoniacStone"] = "Figurilla(s) Demoníaca(s) ",
            ["Soulstone"] = "\nPiedra de Alma: ",
            ["Healthstone"] = "Piedra de Salud: ",
            ["Spellstone"] = "Piedra de Hechizo: ",
            ["Firestone"] = "Piedra de Fuego: ",
            ["Felstone"] = "Piedra Demoníaca: ",
            ["Wrathstone"] = "Piedra de Ira: ",
            ["CurrentDemon"] = "Demonio: ",
            ["EnslavedDemon"] = "Demonio: Esclavizado",
            ["NoCurrentDemon"] = "Demonio: Ninguno",
		},
		["Soulstone"] = {
            Label = "|c00FF99FFPiedra de Alma|r",
            Text = {"Crear","Usar","Usada","En espera"}
        },
        ["Healthstone"] = {
            Label = "|c0066FF33Piedra de Salud|r",
            Text = {"Crear","Usar"}
        },
        ["Spellstone"] = {
            Label = "|c0099CCFFPiedra de Hechizo|r",
            Text = {"Crear","Usar"}
        },
        ["Firestone"] = {
            Label = "|c00FF4444Piedra de Fuego|r",
            Text = {"Crear","Usar"}
        },
        ["Felstone"] = {
            Label = "|c00FF4444Piedra Demoníaca|r",
            Text = {"Crear","Usar"}
        },
        ["Wrathstone"] = {
            Label = "|c00FF4444Piedra de Ira|r",
            Text = {"Crear","Usar"}
        },
        ["SpellTimer"] = {
            Label = "|c00FFFFFFDuración de hechizos|r",
            Text = "Hechizos activos en el objetivo",
            Right = "Clic derecho para usar la Piedra de Hogar a "
        },
        ["ShadowTrance"] = {
            Label = "|c00FFFFFFTrance de las Sombras|r"
        },
        ["Domination"] = {
            Label = "|c00FFFFFFDominio Vil|r"
        },
        ["Enslave"] = {
            Label = "|c00FFFFFFEsclavizar Demonio|r"
        },
        ["Armor"] = {
            Label = "|c00FFFFFFArmadura Demoníaca|r"
        },
        ["Invisible"] = {
            Label = "|c00FFFFFFDetectar Invisibilidad|r"
        },
        ["Aqua"] = {
            Label = "|c00FFFFFFRespiración Inagotable|r"
        },
        ["Kilrogg"] = {
            Label = "|c00FFFFFFOjo de Kilrogg|r"
        },
        ["Banish"] = {
            Label = "|c00FFFFFFDesterrar|r"
        },
        ["TP"] = {
            Label = "|c00FFFFFFRitual de Invocación|r"
        },
        ["ShadowProtection"] = {
            Label = "|c00FFFFFFResguardo de las Sombras|r"
        },
        ["Imp"] = {
            Label = "|c00FFFFFFDiablo Menor|r"
        },
        ["Void"] = {
            Label = "|c00FFFFFFCaminante del Vacío|r"
        },
        ["Succubus"] = {
            Label = "|c00FFFFFFSuccubus|r"
        },
        ["Fel"] = {
            Label = "|c00FFFFFFFelhunter|r"
        },
        ["Infernal"] = {
            Label = "|c00FFFFFFInfernal|r"
        },
        ["Doomguard"] = {
            Label = "|c00FFFFFFGuardia Apocalíptico|r"
        },
        ["Sacrifice"] = {
            Label = "|c00FFFFFFSacrificio Demoníaco|r"
        },
        ["Amplify"] = {
            Label = "|c00FFFFFFAmplificar Maldición|r"
        },
        ["Weakness"] = {
            Label = "|c00FFFFFFMaldición de Debilidad|r"
        },
        ["Agony"] = {
            Label = "|c00FFFFFFMaldición de Agonía|r"
        },
        ["Reckless"] = {
            Label = "|c00FFFFFFMaldición de Imprudencia|r"
        },
        ["Tongues"] = {
            Label = "|c00FFFFFFMaldición de Lenguas|r"
        },
        ["Exhaust"] = {
            Label = "|c00FFFFFFMaldición de Agotamiento|r"
        },
        ["Elements"] = {
            Label = "|c00FFFFFFMaldición de los Elementos|r"
        },
        ["Shadow"] = {
            Label = "|c00FFFFFFMaldición de las Sombras|r"
        },
        ["Doom"] = {
            Label = "|c00FFFFFFMaldición de Fatalidad|r"
        },
        ["Mount"] = {
            Label = "|c00FFFFFFMontura|r"
        },
        ["Buff"] = {
            Label = "|c00FFFFFFMenú de Hechizos|r\nClic derecho para mantener abierto el menú"
        },
        ["Pet"] = {
            Label = "|c00FFFFFFMenú de Demonios|r\nClic derecho para mantener abierto el menú"
        },
        ["Curse"] = {
            Label = "|c00FFFFFFMenú de Maldiciones|r\nClic derecho para mantener abierto el menú"
        },
        ["Stone"] = {
            Label = "|c00FFFFFFMenú de Piedras|r\nClic derecho para mantener abierto el menú"
        },
        ["Radar"] = {
            Label = "|c00FFFFFFDetectar Demonios|r"
        },
        ["AmplifyCooldown"] = "Clic derecho para amplificar la maldición",
        ["DominationCooldown"] = "Clic derecho para invocación rápida",
        ["LastSpell"] = "Clic central para lanzar ",

	};


	NECROSIS_SOUND = {
        ["Fear"] = "Interface\\AddOns\\Necrosis\\sounds\\Fear-En.mp3",
        ["SoulstoneEnd"] = "Interface\\AddOns\\Necrosis\\sounds\\SoulstoneEnd-En.mp3",
        ["EnslaveEnd"] = "Interface\\AddOns\\Necrosis\\sounds\\EnslaveDemonEnd-En.mp3",
        ["ShadowTrance"] = "Interface\\AddOns\\Necrosis\\sounds\\ShadowTrance-En.mp3"
    };

    NECROSIS_NIGHTFALL_TEXT = {
        ["NoBoltSpell"] = "Parece que no tienes ningún hechizo de Rayo de Sombras.",
        ["Message"] = "<white>T<lightPurple1>r<lightPurple2>a<purple>n<darkPurple1>c<darkPurple2>e d<darkPurple1>e l<purple>a<lightPurple2>s S<lightPurple1>o<white>mbras"
    };

    NECROSIS_MESSAGE = {
        ["Error"] = {
            ["InfernalStoneNotPresent"] = "¡Requiere una Piedra Infernal para desatar el caos!",
            ["SoulShardNotPresent"] = "¡Sin Fragmento de Alma no puedes manipular la muerte!",
            ["DemoniacStoneNotPresent"] = "¡Una Figurilla Demoníaca es necesaria para invocar esas fuerzas oscuras!",
            ["NoRiding"] = "¡Aún no posees una montura del abismo!",
            ["FireStoneSpellInCombat"] = "No puedes canalizar la furia ígnea en medio del combate.",
            ["NoFireStoneSpell"] = "No conoces el rito para forjar una Piedra de Fuego.",
            ["FelStoneSpellInCombat"] = "El poder vil no puede ser invocado en plena batalla.",
            ["NoFelStoneSpell"] = "No dominas el arte para crear una Piedra Vil.",
            ["WrathStoneSpellInCombat"] = "No puedes invocar la Piedra de Ira mientras el caos ruge.",
            ["NoWrathStoneSpell"] = "No posees el hechizo para dar forma a la ira pura.",
            ["SpellStoneSpellInCombat"] = "No puedes moldear magia en combate con una Piedra de Hechizo.",
            ["NoSpellStoneSpell"] = "No dominas el arte para invocar una Piedra de Hechizo.",
            ["NoHealthStoneSpell"] = "No conoces el conjuro para crear una Piedra de Salud.",
            ["NoSoulStoneSpell"] = "No has aprendido a forjar una Piedra de Alma.",
            ["FullHealth"] = "Tu carne aún no ha sido rasgada... La Piedra de Salud debe esperar.",
            ["BagAlreadySelect"] = "Error: Esa bolsa ya está consagrada a los fragmentos.",
            ["WrongBag"] = "Error: El número de la bolsa debe estar entre 0 y 4, mortal.",
            ["BagIsNumber"] = "Error: Introduce un número válido, no jerga sin alma.",
            ["NoHearthStone"] = "Error: No posees Piedra de Hogar. Estás perdido en la penumbra..."
        },
        ["Bag"] = {
            ["FullPrefix"] = "Tu ",
            ["FullSuffix"] = " está rebosante de esencia atrapada.",
            ["FullDestroySuffix"] = " está al límite; los fragmentos siguientes serán consumidos por el vacío.",
            ["SelectedPrefix"] = "Has marcado tu ",
            ["SelectedSuffix"] = " como el receptáculo de tus fragmentos de alma."
        },
        ["Interface"] = {
            ["Welcome"] = "<white>Usa /necro para abrir el grimorio de configuración.",
            ["TooltipOn"] = "Susurros arcanos activados.",
            ["TooltipOff"] = "Susurros arcanos silenciados.",
            ["MessageOn"] = "Profecías en el chat habilitadas.",
            ["MessageOff"] = "Profecías en el chat silenciadas.",
            ["MessagePosition"] = "<- Aquí aparecerán los augurios de Necrosis ->",
            ["DefaultConfig"] = "<lightYellow>Se ha cargado la configuración oscura predeterminada.",
            ["UserConfig"] = "<lightYellow>Tu configuración blasfema ha sido restaurada."
        },
        ["Help"] = {
            "/necro recall -- Centra la esfera de Necrosis y sus símbolos arcanos.",
            "/necro sm -- Activa mensajes oscuros y breves para rituales y piedras del alma."
        },
        ["EquipMessage"] = "Equipando ",
        ["SwitchMessage"] = " en lugar de ",
        ["Information"] = {
            ["FearProtect"] = "Tu víctima está protegida contra el terror... por ahora.",
            ["EnslaveBreak"] = "¡El demonio ha quebrado sus cadenas y clama libertad!",
            ["SoulstoneEnd"] = "<lightYellow>La energía de tu Piedra de Alma se ha desvanecido."
        }
    };


    -- Gestión XML - Menú de configuración

    NECROSIS_COLOR_TOOLTIP = {
        ["Purple"] = "Púrpura",
        ["Blue"] = "Azul",
        ["Pink"] = "Rosa",
        ["Orange"] = "Naranja",
        ["Turquoise"] = "Turquesa",
        ["X"] = "X"
    };

    NECROSIS_CONFIGURATION = {
        ["Menu1"] = "Configuración de fragmentos",
        ["Menu2"] = "Configuración de mensajes",
        ["Menu3"] = "Configuración de botones",
        ["Menu4"] = "Configuración de temporizadores",
        ["Menu5"] = "Configuración gráfica",
        ["MainRotation"] = "Selección de ángulo de Necrosis",
        ["ShardMenu"] = "|CFFB700B7I|CFFFF00FFn|CFFFF50FFv|CFFFF99FFe|CFFFFC4FFn|CFFFF99FFt|CFFFF50FFo|CFFFF00FFr|CFFB700B7i: ",
        ["ShardMenu2"] = "|CFFB700B7C|CFFFF00FFo|CFFFF50FFn|CFFFF99FFt|CFFFFC4FFa|CFFFF99FFd|CFFFF50FFo|CFFFF00FFr d|CFFB700B7e fragmentos:",
        ["ShardMove"] = "Colocar los fragmentos en la bolsa seleccionada.",
        ["ShardDestroy"] = "Destruir los nuevos fragmentos si la bolsa está llena",
        ["SpellMenu1"] = "|CFFB700B7H|CFFFF00FFe|CFFFF50FFc|CFFFF99FFh|CFFFFC4FFi|CFFFF99FFz|CFFFF50FFo|CFFFF00FFF|CFFB700B7s:",
        ["SpellMenu2"] = "|CFFB700B7L|CFFFF00FFa|CFFFF50FFt|CFFFF99FFe|CFFFFC4FFr|CFFFF99FFa|CFFFF50FFl:",
        ["TimerMenu"] = "|CFFB700B7T|CFFFF00FFe|CFFFF50FFm|CFFFF99FFp|CFFFFC4FFo|CFFFF99FFr|CFFFF50FFi|CFFFF00FFz|CFFB700B7a|CFFFF00FFd|CFFFF50FFo|CFFFF99FFr|CFFFFC4FFe|CFFFF99FFs:",
        ["TimerColor"] = "Mostrar temporizador en blanco en lugar de amarillo",
        ["TimerDirection"] = "Temporizadores crecen hacia arriba",
        ["TranseWarning"] = "Avisarme cuando entre en trance",
        ["SpellTime"] = "Activar indicador de duración de hechizos",
        ["AntiFearWarning"] = "Avisarme si no puede ser afectado por miedo",
        ["GraphicalTimer"] = "Mostrar temporizadores gráficos en lugar de texto",
        ["TranceButtonView"] = "Mostrar botones ocultos para moverlos",
        ["ButtonLock"] = "Bloquear botones alrededor de la esfera",
        ["MainLock"] = "Bloquear botones y esfera de Necrosis",
        ["BagSelect"] = "Selección de contenedor de fragmentos de alma",
        ["BuffMenu"] = "Colocar el Menú de Hechizos a la izquierda",
        ["PetMenu"] = "Colocar el Menú de Demonios a la izquierda",
        ["CurseMenu"] = "Colocar el Menú de Maldiciones a la izquierda",
        ["StoneMenu"] = "Colocar el Menú de piedras a la izquierda",
        ["STimerLeft"] = "Temporizadores al lado izquierdo del botón",
        ["ShowCount"] = "Mostrar número de Fragmentos en Necrosis",
        ["CountType"] = "Tipo de Piedra que se contabiliza",
        ["Circle"] = "Evento mostrado por la esfera gráfica",
        ["Sound"] = "Activar sonidos",
        ["ShowMessage"] = "Activar frases aleatorias",
        ["ShowDemonSummon"] = "Activar frases aleatorias (Demonio)",
        ["ShowSteedSummon"] = "Activar frases aleatorias (Montura)",
        ["ChatType"] = "Mostrar como mensajes del sistema",
        ["NecrosisSize"] = "Tamaño del botón de Necrosis",
        ["BanishSize"] = "Tamaño del botón de Desterrar",
        ["TranseSize"] = "Tamaño de botones de Trance y Antimiedo",
        ["Skin"] = "Apariencia de la esfera de Necrosis",
        ["Show"] = {
            ["Firestone"] = "Mostrar botón de Piedra de Fuego",
            ["Felstone"] = "Mostrar botón de Piedra Demoníaca",
            ["Wrathstone"] = "Mostrar botón de Piedra de Ira",
            ["Spellstone"] = "Mostrar botón de Piedra de Hechizo",
            ["Healthstone"] = "Mostrar botón de Piedra de Salud",
            ["Soulstone"] = "Mostrar botón de Piedra de Alma",
            ["Stone"] = "Mostrar botón del menú de Piedras",
            ["Steed"] = "Mostrar botón de Montura",
            ["Buff"] = "Mostrar botón del menú de Hechizos",
            ["Curse"] = "Mostrar botón del menú de Maldiciones",
            ["Demon"] = "Mostrar botón del menú de Demonios",
            ["Tooltips"] = "Mostrar descripciones emergentes"
        },
        ["Count"] = {
            ["Shard"] = "Fragmentos de Alma",
            ["Inferno"] = "Piedras para invocar Demonios",
            ["Rez"] = "Temporizador de Resurrección"
        }
    };

end
