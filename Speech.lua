------------------------------------------------------------------------------------------------------
-- Necrosis LdC
--
-- Cr�ateur initial (US) : Infernal (http://www.shadydesign.com/necrosis/files/)
-- Impl�mentation de base (FR) : Tilienna Thorondor
-- Reprise du projet : Lomig & Nyx des Larmes de Cenarius, Kael'Thas
-- Skins et voix Fran�aises : Eliah, Ner'zhul
-- Version 01.05.2006-2

-- Version en español por Delvis Diaz Vidal
-- delvisdiazvidal@gmail.com
-- Version 2025.06.18
------------------------------------------------------------------------------------------------------


-- Les textes d'invocation du d�moniste
----------------------------------------
-- Ici sont rassembl�s les textes d'invocation pour le d�moniste. Vous pouvez les modifier
-- Pour qu'ils collent plus � votre personnage !
-- Pour ceci, voici une aide :
-- Les invocations sont de type "Blah blah blah" Le joueur invoqu� "Blah blah blah"
-- Si vous voulez �crire "Je vous invoque 'Nom du joueur' si vous cliquez sur mon portail"
-- Il faut savoir que le nom de la cible est remplac� par <target>
-- alors il faudra rajouter avant } :
-- "Je vous invoque <target> si vous cliquez sur mon portail"
--
-- La m�me chose est valable pour les messages de pierre d'�me
--
-- En ce qui concerne l'invocation des d�mons, �a a l'air compliqu� mais �a ne l'est pas vraiment
-- Chaque d�mon est num�rot� de 1 � 4
-- A l'int�rieur de ces d�mons chaque discours d'invocation est num�rot�e de 1 � x
-- A l'int�rieur de ces discours d'invocation, des retours � la ligne sur la fenetre de chat est possible
-- J'esp�re que les commentaires que j'y ai mis sont compr�hensibles
-- Sinon n'h�sitez pas � poster dans le sujet du forum officiel ou �crivez moi (lomig@larmes-cenarius.net)


-- Texts for a summoning by a warlock
--------------------------------------
-- Here are some summoning speeches for your warlock. You can change them for them to
-- fit your warlock-way-of-thinking a little more !
-- Need some help ? :)
-- Correct syntax is "Blah blah blah" SelectedPlayer "Blah blah blah"
-- If you want to write "In few seconds 'Player's name' will be able to help us"
-- The target's name is replaced by <target>
-- you need to add before the } :
-- "In few seconds <target> will be able to help us",
-- 
-- The same thing is available for soulstone messages
--
-- As for the demon summoning, it seems to be complicated but it is not
-- Each demon is numbered from 1 to 4
-- Inside those demons, each summon speech is numbered from 1 to x
-- Thoses speeches can contain several sentences in the chat window, in game
-- I made notes on the sentences given by example, I hope they are understandable
-- If not, do not hesistate to mail me (lomig@larmes-cenarius.net)


-- Texte f�r das Ritual der Beschw�rung
----------------------------------------
-- Hier sind einige Beschw�rungstexte f�r deinen Hexenmeister. Du kannst sie �ndern
-- um deinen Hexenmeisterdenken ein wenig anzupassen!
-- Hier ein paar Tipps. :)
-- Der korrekte Syntax ist "Blah blah blah" ausgew�lter Spieler "Blah blah blah"
-- Wenn du schreiben m�chtest "In wenigen Sekunden wird 'Spielername' in der Lage sein uns zu helfen"
-- musst du vor dem }; hinzuf�gen:
-- "In wenigen Sekunden wird <target> in der Lage sein uns zu helfen",
-- 
-- Das gleiche gilt f�r Seelenstein Nachrichten.
--
-- Das Beschw�ren von D�monen: Es sieht zwar kompliziert aus, aber es ist nicht kompliziert
-- Jeder D�mon ist von 1 bis 4 durchnummeriert
-- Innerhalb dieser D�monen ist jeder Beschw�rungsspruch von 1 bis X durchnummeriert
-- Diese Spr�che k�nnen einige Sequenzen enthalten, die ingame dann im Chatfenster angezeigt werden
-- Ich habe einige Anmerkungen bei den Beispiels�tzen hinzugef�gt, ich hoffe sie sind verst�ndlich
-- Sollten sie es nicht sein, z�gert nicht mich zu kontaktieren (lomig@larmes-cenarius.net)


-------------------------------------
--  ENGLISH VERSION --
-------------------------------------

function Necrosis_Localization_Speech_En()

	NECROSIS_INVOCATION_MESSAGES = {
		[1] = {
			"Arcanum Taxi Cab ! I am summoning <target>, please click on the portal.",
		},
		[2] = {
			"Welcome aboard, <target>, you are flying on the ~Succubus Air Lines~ to <player>...",
			"Air Hostesses and their lashes are at your service during your trip !",
		},
		[3] = {
			"If you click on the portal, someone named <target> will appear and do your job for you !",
		},
		[4] = {
			"If you do not want a sprawling, phlegm-looking and asthmatic creature to come from this portal, click on it to help <target> find a path in Hell as quick as possible !",
		},
	};

	NECROSIS_SOULSTONE_ALERT_MESSAGE = {
		[1] = {
			"If you cherish the idea of a mass suicide, <target> now can self-resurrect, so all should be fine. Go ahead.",
		},
		[2]= {
			"<target> can go afk to drink a cup of coffee or so, soulstone is in place to allow for the wipe...",
		},
	};

	NECROSIS_PET_MESSAGE = {
		-- Imp
		[1] = {
			-- Summon speech 1
			[1] = {
				"Well, crapy nasty little Imp, now you stop sulking and you come to help ! AND THAT'S AN ORDER !",
			},
			-- Summon speech 2
			[2] = {
				"<pet>! HEEL ! NOW !",
			},
		};
		-- Voidwalker
		[2] = {
			-- Summon speech 1
			[1] = {
				-- First sentence in the chat window
				"Oops, I will probably need an idiot to be knocked for me...",
				-- Second setence in the chat window
				"<pet>, please help !",
			},
		};
		-- Succubus
		[3] = {
			-- Summon speech 1
			[1] = {
				"<pet> baby, please help me sweet heart !",
			},
		};
		-- Felhunter
		[4] = {
			-- Summon speech 1			
			[1] = {
				"<pet> ! <pet> ! Come on boy, come here ! <pet> !",
			},
		};
		-- Sentences for the first summon : When Necrosis do not know the name of your demons yet
		[5] = {
			-- Summon speech 1
			[1] = {
				-- First sentence in the chat window
				"Fishing ? Yes I love fishing... Look !",
				-- Second sentence in the chat window				
				"I close my eyes, I move my fingers like that... And voila ! Yes, yes, it is a fish, I can swear you !",
			},
			-- Summon speech 2			
			[2] = {
				-- First sentence in the chat window				
				"Anyway I hate you all ! I don't need you, I have friends.... Powerful friends !",
				-- Second sentence in the chat window				
				"COME TO ME, CREATURE OF HELL AND NIGHTMARE !",
			},
		};
		-- Sentences for the stead summon
		[6] = {
			-- Summon speech 1	
			[1] = {
				-- First sentence in the chat window
				"Hey, I'm late ! Let's find a horse that roxes !",
			},
			-- Summon speech 2	
			[2] = {
				-- First sentence in the chat window
				"I am summoning a stead from nightmare !",
				-- Second sentence in the chat window
				"AH AHA HA HA AH AH !",
			},
		};
	};
	
	NECROSIS_SHORT_MESSAGES = {
		{{"--> <target> is soulstoned for 30 minutes <--"}},
		{{"<TP> Summoning <target>, please click on the portal <TP>"}},
	};

end


-------------------------------------
--  SPANISH VERSION --
-------------------------------------

function Necrosis_Localization_Speech_Es()

	NECROSIS_INVOCATION_MESSAGES = {
		[1] = {
			"Las sombras se agitan... Estoy trayendo a <target>. Tocad el portal si deseáis servir a la oscuridad.",
		},
		[2] = {
			"El alma de <target> será arrastrada hasta <player>... Disfrutad del tormento durante el trayecto.",
		},
		[3] = {
			"Un sacrificio menor traerá a <target> desde el vacío... Solo debéis tocar el portal.",
		},
		[4] = {
			"Si no deseáis que un engendro de pesadilla surja de este portal, ayudemos a <target> a cruzar sin que se pierda en el abismo eterno.",
		},
	};

	NECROSIS_SOULSTONE_ALERT_MESSAGE = {
		[1] = {
			"La marca de las almas ha sido puesta sobre <target>. Si morimos... que renazca entre las cenizas.",
		},
		[2]= {
			"<target> ha sido bendecido con el poder de la Resurrección. Que el fracaso no sea en vano...",
		},
	};

	NECROSIS_PET_MESSAGE = {
		-- Diablo
		[1] = {
			[1] = {
				"¡Peste infernal! Sal de las sombras y cumple tu deber. ¡OBEDECE A TU AMO!",
			},
			[2] = {
				"¡<pet>! ¡El pacto esta sellado, hazte presente!", 
			},
		};
		-- Caminante del Vacío
		[2] = {
			[1] = {
				"Camina delante de mi para recibir el castigo...",
				"<pet>, invoco tu fuerza. Protéjeme.",
			},
			[2] = {
				"Por el poder vil ¡<pet>! Te invoco!", 
				"¡Destruye a todo a tu paso por mí!",
			},
		};
		-- Súcubo
		[3] = {
			[1] = {
				"Ven a mí, <pet>... Tu látigo y tus gemidos me serán útiles otra vez.",
			},
		};
		-- Manáfago
		[4] = {
			[1] = {
				"<pet>... <pet>... Que la magia corrupta te guíe a mi lado. ¡VEN!",
			},
		};
		-- Demonio desconocido (invocaciones iniciales)
		[5] = {
			[1] = {
				"Sí, juego con fuerzas prohibidas... Observad.",
				"Con un gesto y un susurro... el Infierno responde. ¿Lo dudáis?",
			},
			[2] = {
				"Odiadme si queréis. Yo tengo aliados más allá del velo...",
				"¡SURGE, BESTIA DE FUEGO Y PESADILLA!",
			},
		};
		-- Corcel
		[6] = {
			[1] = {
				"¡Mi hora se acerca y necesito velocidad! ¡Corcel de las sombras, ven!",
			},
			[2] = {
				"¡Del más profundo rincón del abismo... traigo mi montura maldita!",
			},
		};
	};

	NECROSIS_SHORT_MESSAGES = {
		{{"--> <target> lleva el Sello de la Piedra de Alma (30 min) <--"}},
		{{"<TP> Abriendo Portal para <target>. Tocadlo, mortales. <TP>"}},
	};

end


-------------------------------------
--  VERSION FRANCAISE --
-------------------------------------

function Necrosis_Localization_Speech_Fr()

	NECROSIS_INVOCATION_MESSAGES = {
		[1] = {
			"Taxi des Arcanes ! J'invoque <target>, cliquez sur le portail svp !",
		},
		[2] = {
			"Bienvenue, <target>, sur le vol de ~Succube Air Lines~ \195\160 destination de <player>...",
			"Les h\195\180tesses et leur fouet sont \195\160 votre disposition durant le trajet",
		},
		[3] = {
			"Si vous ne voulez pas qu'une cr\195\169ature tentaculaire, glaireuse et asthmatique sorte de ce portail, cliquez dessus pour aider <target> \195\160 trouver son chemin au plus vite !",
		},
		[4] = {
			"Si vous cliquez sur le portail, un machin nomm\195\169 <target> sortira et fera le boulot \195\160 votre place...",
		},
		[5] = {
			"Tel un lapin dans un chapeau de mage, <target> va appara\195\174tre devant vos yeux \195\169bahis. Et hop.",
		},
		[6] = {
			"PAR ASTAROTH ET DASMODES, JE T'INVOQUE, O TOUT PUISSANT DEMON DES SEPTS ENFERS, PARANGON VELU DES INFRA MONDES DEMONIAQUES, PAR LA PUISSANCE DU SCEAU ANCESTR... euh ?!? Ah merde c�est <target> qui d\195\169barque !!",
		},
		[7] = {
			"Chantons ensemble ! Venu de nulle part, c'est <target>, Plus vif que le serpent, c'est <target> !",
			"Personne ne l'aper\195\167oit, c'est <target>, Mais il est toujours l\195\160, c'est <target> !",
			"Plein d'effroi les Pirates de Tanaris rien qu'\195\160 son nom voient leur sang qui se glace, se glace, se glace... Mais quand il y a danger, c'est <target> qui vient pour nous aider, <target>...",
			"(Cliquez vite sur le portail sinon je continue...)",
			"C'EST <target> ! <target> ! <target> !",
		},
	};

	NECROSIS_SOULSTONE_ALERT_MESSAGE = {
		[1] = {
			"Si ca vous tente un suicide collectif, <target> s'en fout, la pierre d'\195\162me lui permettra de se relever",
		},
		[2] = {
			"<target> peut partir siroter un caf\195\169, et pourra se relever du wipe qui s'en suivra gr\195\162ce \195\160 sa pierre d'\195\162me",
		},
		[3] = {
			"Pierre pos\195\169e sur <target>, vous pouvez recommencer \195\160 faire n�importe quoi sans risque",
		},
		[4] = {
			"Gr\195\162ce \195\160 sa pierre d�\195\162me, <target> est pass\195\169 en mode Easy wipe",
		},
		[5] = {
			"<target> peut d\195\169sormais revenir d�entre les morts, histoire d�organiser le prochain wipe",
		},
		[6] = {
			"Les hindous croient \195\160 l�immortalit\195\169, <target> aussi depuis que je lui ai pos\195\169 une pierre d�\195\162me",
		},
		[7] = {
			"<target> est d\195\169sormais \195\169quip\195\169 de son kit de survie temporaire.",
		},
		[8] = {
			"Tel le ph\195\169nix, <target> pourra revenir d�entre les flammes de l�enfer (Faut dire aussi qu�il a beaucoup de rf...)",
		},
		[9] = {
			"Gr\195\162ce \195\160 sa pierre d�\195\162me, <target> peut de nouveau faire n�importe quoi.",
		},
		[10] = {
			"Sur <target> poser une belle pierre d�\195\162me,",
			"Voil\195\160 qui peut ma foi \195\169viter bien des drames !",
		},
	};

	NECROSIS_PET_MESSAGE = {
		-- Diablotin
		[1] = {
			-- Phrase al�atoire 1
			[1] = {
				"Bon, s\195\162le petite peste de Diablotin, tu arr\195\170tes de bouder et tu viens m'aider ! ET C'EST UN ORDRE !",
			},
			-- Phrase al�atoire 2
			[2] = {
				"<pet> ! AU PIED ! TOUT DE SUITE !",
			},
			[3] = {
				"Attendez, je sors mon briquet !",
			},
		};
		-- Marcheur �th�r�
		[2] = {
			-- Phrase al�atoire 1
			[1] = {
				-- 1ere ligne dans la fen�tre de chat
				"Oups, je vais sans doute avoir besoin d'un idiot pour prendre les coups � ma place...",
				-- 1ere ligne dans la fen�tre de chat
				"<pet>, viens m'aider !",
			},
			[2] = {
				"GRAOUbouhhhhh GROUAHOUhououhhaahpfffROUAH !",
				"GRAOUbouhhhhh GROUAHOUhououhhaahpfffROUAH !",
				"(Non je ne suis pas dingue, j'imite le bruit du marcheur en rut !)",
			},
		};
		-- Succube
		[3] = {
			-- Phrase al�atoire 1
			[1] = {
				"<pet> ma grande, viens m'aider ch\195\169rie !",
			},
			[2] = {
				"Ch\195\169rie, l\195\162che ton rimmel et am\195\168ne ton fouet, y a du taf l\195\160 !",
			},
			[3] = {
				"<pet> ? Viens ici ma louloutte !",
			},
		};
		-- Chasseur corrompu
		[4] = {
			-- Phrase al�atoire 1
			[1] = {
				"<pet> ! <pet> ! Aller vient mon brave, viens ! <pet> !",
			},
			[2] = {
				"Rhoo, et qui c�est qui va se bouffer le mage hein ? C�est <pet> !",
				"Regardez, il bave d\195\169j\195\160 :)",
			},
			[3] = {
				"Une minute, je sors le caniche et j�arrive !",
			},
		};
		-- Phrase pour la premi�re invocation de pet (quand Necrosis ne connait pas encore leur nom)
		[5] = {
			-- Phrase al�atoire 1
			[1] = {
				-- 1ere ligne dans la fen�tre de chat
				"La p\195\170che au d\195\169mon ? Rien de plus facile !",
				-- 2eme ligne dans la fen�tre de chat
				"Bon, je ferme les yeux, j'agite les doigts comme \195\167a... et hop ! Oh, les jolies couleurs !",
			},
			-- Phrase al�atoire 2
			[2] = {
				-- 1ere ligne dans la fen�tre de chat
				"Toute fa\195\167on je vous d\195\169teste tous ! J'ai pas besoin de vous, j'ai des amis.... Puissants !",
				-- 2eme ligne dans la fen�tre de chat
				"VENEZ A MOI, CREATURES DE L'ENFER !",
			},
			-- Phrase al�atoire 3
			[3] = {
				-- 1ere ligne dans la fen�tre de chat
				"Eh, le d\195\169mon, viens voir, il y a un truc \195\160 cogner l\195\160 !",
			},
			-- Phrase al�atoire 4
			[4] = {
				"En farfouillant dans le monde abyssal, on trouve de ces trucs... Regardez, ceci par exemple !",
			},
				
		};
		-- Sentences for the stead summon
		[6] = {
			-- Phrase al�atoire 1
			[1] = {
				"Mmmphhhh, je suis en retard ! Invoquons vite un cheval qui rox !",
			},
			-- Phrase al�atoire 2
			[2] = {
				"J'invoque une monture de l'enfer !",
			},
			[3] = {
				"MOUHAhaHAAHAhaHAhAHAahAaHAAHaHAhaHAaaAahAHa !",
				"TREMBLEZ, MORTELS, J'ARRIVE A LA VITESSE DU CAUCHEMARD !!!!",
			},
			[4] = {
				"Et hop, un cheval tout feu tout flamme !",
			},
			[5] = {
				"Vous savez, depuis que j�ai mis une selle ignifug\195\169e, je n'ai plus de probl\195\168me de culotte !"
			},
		};
	};

	NECROSIS_SHORT_MESSAGES = {
		{{"--> <target> est prot\195\169g\195\169 par une pierre d'\195\162me <--"}},
		{{"<TP> Invocation de <target> en cours, cliquez sur le portail svp <TP>"}}
	};

end



-------------------------------------
--  VERSION GERMAN --
-------------------------------------

function Necrosis_Localization_Speech_De()

	NECROSIS_INVOCATION_MESSAGES = {
		[1] = {
			"Arcanum Taxi Cab ! Ich beschw\195\182re <target>, bitte klicke auf das Portal.",
		},
		[2] = {
			"Willkommen an Bord, <target>, du fliegst mit ~Sukkubus Air Lines~ zu <player>...",
			"Die Stewardessen und ihre Peitschen werden Dir w\195\164hrend der Reise zur Verf\195\188gung stehen!",
		},
		[3] = {
			"Wenn Du das Portal klicken w\195\188rdest, wird jemand mit dem Namen <target> erscheinen, und Deinen Job f\195\188r Dich tun !",
		},
		[4] = {
			"Wenn Du nicht m\195\182chtest, dass eine auf dem Boden kriechende, schleimige und einfach gr\195\164ssliche Kreatur aus diesem Portal kommt,",
			"klicke drauf und hilf <target>, so schnell wie m\195\182glich einen Weg zur H\195\182lle zu finden!",
		},
	};

	NECROSIS_SOULSTONE_ALERT_MESSAGE = {
		[1] = {
			"Solltet Ihr einen Massenselbstmord erw\195\164gen, denkt daran dass <target> sich nun selbst wiederbeleben kann. Alles wird gut werden, auf in den Kampf !",
		},
		[2] = {
			"<target> kann afk gehen um eine Tasse Kaffee oder so zu trinken, denn er wird Dank dieses Seelensteins in der Lage sein, unseren Tod zu \195\188berleben",
		},
};

	
	NECROSIS_SHORT_MESSAGES = {
		{{"--> <target> hat nun einen Seelenstein aktiv f\195\188r 30 Minuten <--"}},
		{{"<Portal> Ich beschw\195\182re <target>, bitte klickt auf das Tor <Portal>"}}
	};

	NECROSIS_PET_MESSAGE = {
		-- Wichtel
		[1] = {
			-- Beschw�rungsspruch 1
			[1] = {
				"Na mein kleiner, b\195\182ser Wichtel, nun h\195\182r auf rumzuzicken und hilf endlich! UND DAS IST EIN BEFEHL !",
			},
			-- Beschw�rungsspruch 2
			[2] = {
				"<pet> ! SCHWING DIE BEINE ! JETZT SOFORT !",
			},
		};
		-- Leerwandler
		[2] = {
			-- Beschw�rungsspruch 1
			[1] = {
				-- Erster Satz im Chatfenster
				"Huuuch, anscheinend brauch ich einen Idioten, der f\195\188r mich die R\195\188be hinh\195\164lt...",
				-- zweiter Satz im Chatfenster
				"<pet>, hilf mir !",
			},
		};
		-- Sukkubus
		[3] = {
			-- Beschw�rungsspruch 1
			[1] = {
				"<pet>, Baby, sei ein Schatzi und hilf mir!",
			},
		};
		-- Teufelsj�ger
		[4] = {
			-- Beschw�rungsspruch 1			
			[1] = {
				"<pet> ! <pet> ! Bei Fu\195\159, mein Guter, bei Fu\195\159 ! <pet> !",
			},
		};
		-- S�tze f�r die erste Beschw�rung : Wenn Necrosis den Namen Deines D�mons noch nicht kennt
		[5] = {
			-- Beschw�rungsspruch 1
			[1] = {
				-- Erster Satz im Chatfenster
				"Angeln ? Oh jaaa, ich liebe Angeln, schau !",
				-- Zweiter Satz im Chatfenster
				"Ich schlie\195\159e meine Augen, dann bewege ich meine Finger in etwa so... Und voila ! Ja, aber sicher, es ist ein Fisch, ich schw\195\182re es Dir !",
			},
			-- Beschw�rungsspruch 2			
			[2] = {
				-- Erster Satz im Chatfenster				
				"Nichtsdestotrotz hasse ich Euch alle ! Ich brauche Euch nicht, ich habe Freunde.... M\195\164chtige Freunde !",
				-- Zweiter Satz im Chatfenster				
				"KOMM ZU MIR, KREATUR, DIE DU KOMMST AUS DER H\195\150LLE UND ENDLOSEN ALPTR\195\132UMEN !",
			},
		};
		-- Spr�che zur Beschw�rung des Mounts
		[6] = {
			-- Beschw�rungsspruch 1	
			[1] = {
				-- Erster Satz im Chatfenster
				"Hey, ich bin sp\195\164t dran ! Ich hoffe ich finde ein Pferd das rennt wie ein ge\195\182lter Blitz !",
			},
			-- Beschw�rungsspruch 2	
			[2] = {
				-- Erster Satz im Chatfenster
				"Ich beschw\195\182re ein Reittier, das einem Alptraum entspringt!",
				-- Zweiter Satz im Chatfenster
				"AH AHA HA HA AH AH !",
			},
		};
	};

end


-- Pour les caract�res sp�ciaux :
-- Besondere Zeichen :
-- � = \195\169 ---- � = \195\168
-- � = \195\160 ---- � = \195\162
-- � = \195\180 ---- � = \195\170
-- � = \195\187 ---- � = \195\164
-- � = \195\132 ---- � = \195\182
-- � = \195\150 ---- � = \195\188
-- � = \195\156 ---- � = \195\159
-- � = \195\167 ---- � = \195\174

