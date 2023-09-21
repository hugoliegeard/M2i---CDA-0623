# Category

INSERT INTO `category` (`id_category`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 'Politique', 'politique', '2023-09-21 10:58:54', '2023-09-21 10:58:55', '0000-00-00 00:00:00');
INSERT INTO `category` (`id_category`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 'Economie', 'economie', '2023-09-21 10:59:07', '2023-09-21 10:59:07', '0000-00-00 00:00:00');
INSERT INTO `category` (`id_category`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 'Culture', 'culture', '2023-09-21 10:59:07', '2023-09-21 10:59:07', '0000-00-00 00:00:00');
INSERT INTO `category` (`id_category`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, 'Social', 'social', '2023-09-21 10:59:33', '2023-09-21 10:59:33', '0000-00-00 00:00:00');
INSERT INTO `category` (`id_category`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, 'Sport', 'sport', '2023-09-21 10:59:43', '2023-09-21 10:59:43', '0000-00-00 00:00:00');

# User

INSERT INTO `user` (`id_user`, `firstname`, `lastname`, `username`, `email`, `password`, `roles`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 'Hugo', 'LIEGEARD', 'hugoliegeard', 'hugo@ctu.news', '1234', 'ROLE_ADMIN', '2023-09-21 11:05:37', '2023-09-21 11:06:34', '0000-00-00 00:00:00');
INSERT INTO `user` (`id_user`, `firstname`, `lastname`, `username`, `email`, `password`, `roles`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 'Delphine', 'DE ALBA', 'delphfun', 'delphine@actu.news', '1234', 'ROLE_REPORTER', '2023-09-21 11:06:31', '2023-09-21 11:06:34', '0000-00-00 00:00:00');
INSERT INTO `user` (`id_user`, `firstname`, `lastname`, `username`, `email`, `password`, `roles`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 'Freddy', 'NGABOL', 'freddyn', 'freddy@actu.news', '1234', 'ROLE_REPORTER', '2023-09-21 11:07:50', '2023-09-21 11:08:00', '0000-00-00 00:00:00');

# Post

INSERT INTO `post` (`id_post`, `title`, `slug`, `content`, `image`, `created_at`, `updated_at`, `deleted_at`, `id_category`, `id_user`) VALUES (1, 'Dîner au château de Versailles avec Charles III : "Un peu de sobriété n\'aurait pas fait de mal", estime Manuel Bompard', 'diner-au-chateau-de-versailles-avec-charles-iii-un-peu-de-sobriete-n-aurait-pas-fait-de-mal-estime-manuel-bompard', 'Manuel Bompard, coordinateur de la France insoumise, député LFI des Bouches-du-Rhône, invité ce jeudi sur franceinfo, aurait préféré "un peu de sobriété" à l\'occasion de la visite du roi Charles III en France "vu le contexte actuel".\r\n\r\n>> Dîner au château de Versailles avec Charles III : "C\'est vraiment un truc qu\'on voit une fois dans sa vie", témoigne Yann Arthus-Bertrand\r\n\r\nEmmanuel Macron a organisé mercredi soir un dîner d\'État dans la galerie des Glaces du château de Versailles en l\'honneur du souverain. "C\'est normal qu\'on accueille le roi d\'Angleterre quand il vient en France. C\'est légitime que le président de la République le reçoive, mais je trouve que dans le contexte social actuel, avec les difficultés qui frappent une grande partie des Français, un peu de sobriété n\'aurait pas fait de mal", a-t-il estimé.\r\n\r\nAutour du roi Charles, 150 personnalités ont été invitées à partager un dîner royal avec au menu notamment du homard bleu, de la volaille de Bresse et des macarons à la rose. La République a mis les petits plats dans les grands. "Je trouve qu’il y avait une sorte d\'étalage avec un repas luxueux. Je peux comprendre que les Français aient le sentiment d\'une forme de déconnexion. Davantage de sobriété dans cette période aurait pu aussi être comprise à la fois par le roi lui-même et sans doute davantage par les Français", a-t-il expliqué.', 'https://www.francetvinfo.fr/pictures/mfxYumTYqL-jcp4fI3onJ3Lv9ps/0x0:1280x720/2656x1494/filters:format(avif):quality(50)/2023/09/21/whatsapp-image-2023-09-21-at-09-38-57-650c01249f4d7446261521.jpeg', '2023-09-21 09:08:41', '2023-09-21 09:08:41', '0000-00-00 00:00:00', 1, 3);
INSERT INTO `post` (`id_post`, `title`, `slug`, `content`, `image`, `created_at`, `updated_at`, `deleted_at`, `id_category`, `id_user`) VALUES (2, 'Nicolas Sarkozy a porté plainte pour des menaces de mort, une enquête a été ouverte à Paris', 'nicolas-sarkozy-a-porte-plainte-pour-des-menaces-de-mort-une-enquete-a-ete-ouverte-a-paris', 'Une enquête pour menaces de mort réitérées à l\'encontre de l\'ex-président Nicolas Sarkozy et de son fils Jean a été ouverte, mercredi 20 septembre, à Paris et confiée à la Brigade de répression de la délinquance contre la personne, a annoncé le parquet.\r\n\r\n"Nous avons été avisés d\'une plainte déposée ce matin au commissariat du 16e arrondissement de Paris", a précisé le parquet, confirmant une information d\'Actu17. Cette plainte a été déposée par l\'intermédiaire du chef de la sécurité de Nicolas Sarkozy.\r\n\r\nEn tournée promotionnelle de son dernier livre\r\nNicolas Sarkozy, âgé de 68 ans, promeut actuellement son dernier livre, Le Temps des combats. De Gérald Darmanin aux Républicains, l\'ancien chef de l\'Etat livre ses vérités sur la politique. Il y fait notamment l\'éloge du ministre de l\'Intérieur. "Jusqu\'à présent, les faits lui ont largement donné raison. Saura-t-il franchir une autre étape, voire l\'étape ultime, celle qui mène à la présidence de la République ? Je le lui souhaite, car il a des qualités évidentes", écrit-il. \r\n\r\nL\'ancien locataire de l\'Elysée relate qu\'il n\'a "jamais" été déçu par Bruno Le Maire, le ministre de l\'Economie, "son sérieux et sa capacité de travail". Il compare également l\'ancien Premier ministre Edouard Philippe à François Fillon et estime que le parti Les Républicains est un "vivier de talents".', 'https://www.francetvinfo.fr/pictures/YMLP5-LPTQDmVlDofbmDZWEAKFk/0x0:1024x575/2656x1494/filters:format(avif):quality(50)/2023/09/20/000-33te2em-650b3b192e8e1397555465.jpg', '2023-09-21 09:09:54', '2023-09-21 09:09:54', '0000-00-00 00:00:00', 1, 3);
INSERT INTO `post` (`id_post`, `title`, `slug`, `content`, `image`, `created_at`, `updated_at`, `deleted_at`, `id_category`, `id_user`) VALUES (3, '"C\'est un piège" : avec sa proposition de loi sur l\'endométriose, le Rassemblement national embarrasse encore la majorité et la gauche', 'c-est-un-piege-avec-sa-proposition-de-loi-sur-l-endometriose-le-rassemblement-national-embarrasse-encore-la-majorite-et-la-gauche', 'En choisissant un thème qui va au-delà des clivages, le groupe de Marine Le Pen à l\'Assemblée oblige ses adversaires politiques à se positionner une fois de plus sur le comportement à adopter face au RN.\r\n"Ce sont des textes emmerdants", dixit un cadre de la majorité. Dans le camp présidentiel, on redoute les propositions de loi qui seront portées le 12 octobre par le Rassemblement national, lors de sa niche parlementaire. Ce jour-là, le parti d\'extrême droite pourra fixer l\'ordre du jour de l\'Assemblée nationale, avec des textes qu\'il a choisis. Et pour le groupe dirigé par Marine Le Pen, qui a présenté mardi 19 septembre le programme de cette journée, rien de mieux que d\'y glisser des textes consensuels pour embarrasser ses adversaires politiques. Et ainsi poursuivre son entreprise de normalisation.\r\n\r\nDans cette niche parlementaire, il y a notamment une proposition de loi qui symbolise cette stratégie du Rassemblement national de ne pas cliver pour gagner en respectabilité : le texte "visant à soutenir les femmes qui souffrent d\'endométriose", pour que cette maladie soit reconnue comme une affection de longue durée (ALD).\r\n\r\nLe sujet n\'a pas été choisi au hasard : il fait consensus au sein de tous les groupes représentés au Palais-Bourbon. En janvier 2022, une résolution défendue par la députée La France insoumise Clémentine Autain en faveur de la reconnaissance de la maladie comme une ALD avait été votée à l\'unanimité des 111 voix exprimées. D\'ailleurs, à l\'époque, un seul député RN s\'était prononcé favorablement, les autres étant absents. "Au RN, ils se réveillent à la 25e heure et découvrent la situation", dénonce aujourd\'hui Sandrine Rousseau, députée EELV.\r\n\r\n"C\'est une proposition de loi d\'opportunisme politique, qui ne leur fait pas honneur."\r\n\r\nSandrine Rousseau, députée EELV à franceinfo\r\nLe Rassemblement national assure défendre une avancée sanitaire pour les femmes qui souffrent de cette maladie liée à la présence de cellules d\'origine utérine en dehors de l\'utérus. "Personne n\'est propriétaire d\'un sujet précis, il n\'y a pas de chasse gardée", se défend Emmanuel Taché de la Pagerie, député RN des Bouches-du-Rhône et rapporteur du texte.\r\n\r\n"Tant pis si c\'est le RN"\r\nEn attendant cette fameuse niche parlementaire du 12 octobre, chaque groupe tente de définir une stratégie face à ce texte du parti d\'extrême droite, avec des réunions prévues dans les prochains jours pour nombre d\'entre eux. Au sein de la majorité, l\'embarras est palpable et les divisions sur l\'attitude à avoir face au RN refont jour. "On n\'est pas prêts de voter un texte du RN, mais on peut réécrire", affirme un cadre de Renaissance. En clair : voter un amendement de réécriture qui dise peu ou prou la même chose, mais qui permettrait d\'éviter de voter la proposition de loi du groupe de Marine Le Pen. La piste, comme celle du rejet du texte, a été abordée lundi lors d\'une réunion du bureau du groupe, selon l\'AFP. \r\n\r\n"Ça ne changera pas la perception des gens, s\'agace un député macroniste. In fine, si ça arrive en séance, on adoptera une proposition de loi RN, personne ne verra ou comprendra la réécriture". Le même juge "complètement con" de rejeter a priori un texte du RN, alors que la question doit de nouveau être abordée mardi prochain.\r\n\r\n"Si on me dit que c\'est une bonne chose et que ça fait avancer la cause, je fais plutôt partie des personnes qui pensent qu\'il faut le voter."\r\n\r\nUn député Renaissance à franceinfo\r\nDu côté du MoDem, la position du groupe n\'est pas encore arrêtée, mais l\'opposition de principe à un texte du RN n\'est pas de mise. "On doit encore analyser la proposition de loi, mais l\'idée, c\'est de se prononcer sur le fond du texte et de l\'améliorer si nécessaire. Tant pis si c\'est le RN, livre l\'entourage de Jean-Paul Mattei, le président du groupe MoDem. Mais il faut que ce texte soit utile, car il y a déjà eu un plan sur le sujet [annoncé en janvier 2022 par Emmanuel Macron] et on va analyser son efficacité avant."\r\n\r\nChez Horizons, autre allié du parti présidentiel au sein de la majorité, cet autre député n\'est pas loin de partager le même avis : "On est bien contents parfois d\'avoir les voix du RN pour faire passer des textes. Si ça marche dans un sens, pourquoi ça ne marcherait pas dans l\'autre ? Il faut être lucide !" Ce dernier n\'est toutefois pas dupe de la stratégie du groupe de Marine Le Pen.\r\n\r\n"Ils utilisent leurs niches parlementaires comme des pièges... C\'est la stratégie du coucou : ils se mettent dans le nid des autres."\r\n\r\nUn député Horizons à franceinfo\r\n"C\'est un piège qui peut être grossier, mais qui est ennuyeux", traduit, embarrassé, un autre député du parti d\'Edouard Philippe.\r\n\r\nUn décret pour court-circuiter le texte ?\r\nFaut-il voter une proposition de loi d\'un ennemi politique ou maintenir un cordon sanitaire autour des idées d\'extrême droite, aux dépens d\'une proposition qui fait pourtant l\'unanimité ? La Nupes penche pour la seconde solution. "Le Rassemblement national est dans une stratégie de banalisation", a dénoncé lundi la cheffe de file des députés écologistes, Cyrielle Chatelain, s\'exprimant au nom de l\'alliance des partis de gauche. "On verra comment on réagit à cette niche mais en aucun cas (...) il n\'y aura de position commune entre nous et le Rassemblement national", a-t-elle insisté. Le PS, lui, abordera le sujet en réunion de groupe dans les prochains jours.\r\n\r\nPour contrer le texte, la députée LFI Clémentine Autain a demandé mardi au ministre de la Santé, Aurélien Rousseau, de prendre un décret pour faire reconnaître l\'endométriose comme une ALD. "Aucune réponse", assure une semaine plus tard la parlementaire, qui juge le texte du RN "mal fichu". Et elle n\'est pas la seule à demander au ministre d\'intervenir. "Le RN fait des coups (...) Il faut que le ministère de la Santé prenne un décret", appuie le socialiste Jérôme Guedj. Contacté à ce sujet, le cabinet d\'Aurélien Rousseau n\'avait pas répondu, mardi en fin d\'après-midi, aux questions de franceinfo.\r\n\r\nSi cette piste aboutissait, le Rassemblement national assure qu\'il n\'en prendrait pas ombrage. "Qu\'ils prennent un décret, j\'en serais très content", affirme même Emmanuel Taché de la Pagerie. "Prendre un décret, ce n\'est pas un front républicain. S\'il y a un décret, ça veut dire qu\'il y a une prise en charge correcte des femmes victimes. C\'est dans l\'intérêt général", se félicite également le député RN Jean-Philippe Tanguy.\r\n\r\nReste que, dans sa stratégie de normalisation, soigneusement appliquée depuis le début de la législature en juin 2022, le Rassemblement national n\'a pour l\'instant pas récolté de résultats concrets (pas un seul texte du groupe RN adopté). Même lorsqu\'il a tenté de reprendre à son compte la proposition de loi LFI sur la réintégration des soignants non vaccinés, finalement retirée.', 'https://www.francetvinfo.fr/pictures/JibR4Aam3SW7OELaGXek0sFifck/0x396:6000x3769/2656x1494/filters:format(avif):quality(50)/2023/09/19/080-hl-norchard-1886908-650999ba09851323015441.jpg', '2023-09-21 09:09:54', '2023-09-21 09:09:54', '0000-00-00 00:00:00', 1, 2);
INSERT INTO `post` (`id_post`, `title`, `slug`, `content`, `image`, `created_at`, `updated_at`, `deleted_at`, `id_category`, `id_user`) VALUES (4, '"On fera tout pour gagner un budget digne de notre mission": mobilisés, les enseignants du supérieur veulent "faire bouger le gouvernement"', 'on-fera-tout-pour-gagner-un-budget-digne-de-notre-mission-mobilises-les-enseignants-du-superieur-veulent-faire-bouger-le-gouvernement', 'Pendant que les étudiants font leur retour dans les amphis de leurs facultés, les enseignants du supérieur se mobilisent un peu partout en France ce jeudi 21 septembre. Une journée d\'action organisée à l\'appel du principal syndicat des enseignants-chercheurs, le Snesup-FSU. Ils réclament en priorité un budget plus important pour fonctionner, au début d\'une année qui s\'annonce financièrement difficile pour les universités, alertent-ils.\r\n\r\n>> Rentrée scolaire : dans quelles disciplines et académies manque-t-il le plus d\'enseignants ?\r\n\r\n"L’enseignement supérieur est asphyxié", assure le syndicat. L’université française est sous-financée depuis au moins 15 ans, affirme Anne Roger, la co-secrétaire générale du Snesup-FSU. Avec des conséquences très concrètes, comme "un manque de personnel pour accueillir les étudiants. Ça renvoie aussi à l\'impossiblité de payer le chauffage par exemple, à l\'impossibilité d\'investir dans le bâti pour contribuer à la transition écologique", détaille-t-elle. "Pour nous, on doit faire bouger le gouvernement sur le projet de finances. On fera tout pour gagner un budget digne de notre mission."\r\n\r\n"Ça témoigne d\'un désengagement du gouvernement"\r\nLe budget 2024 doit effectivement être débattu dans les prochaines semaines et ce que craignent ces enseignants-chercheurs, c’est que la part consacrée aux universités soit une fois de plus insuffisante. La faute, entre autres, à la ministre de l’enseignement supérieur, selon Hervé Christofol, autre représentant du Snesup-FSU : "Sylvie Retailleau peut mettre à son crédit qu\'en 2023, elle a négocié la part du budget de l\'Etat consacré à l\'enseignement supérieur et à la recherche la plus basse depuis 20 ans."\r\n\r\nPour lui, "ça témoigne d\'un désengagement du gouvernement. Sur certaines périodes, on a accueilli presque 600.000 étudiants de plus". L’année va être particulièrement difficile pour les budgets des universités, assurent ces professeurs. Certains ont déjà annoncé à leur personnel des séries d’économies à mener dans les prochains mois.\r\n\r\n', 'https://www.francetvinfo.fr/pictures/gasTL2QvjQCTdz_QF3BaD9hodW4/0x649:6240x4157/2656x1494/filters:format(avif):quality(50)/2023/09/20/080-hl-jmdelage-1824626-650b583c09fa1737954800.jpg', '2023-09-21 09:11:18', '2023-09-21 09:11:18', '0000-00-00 00:00:00', 4, 2);
INSERT INTO `post` (`id_post`, `title`, `slug`, `content`, `image`, `created_at`, `updated_at`, `deleted_at`, `id_category`, `id_user`) VALUES (5, 'Coupe du monde de rugby : l\'émergence contrariée du rugby africain', 'coupe-du-monde-de-rugby-l-emergence-contrariee-du-rugby-africain', 'La Namibie, troisième adversaire de la France lors de ce Mondial, est avec l\'Afrique du Sud le seul pays africain à avoir son rond de serviette dans cette grande compétition. Que vaut réellement le reste des équipes du continent ?\r\nAson arrivée à l\'aéroport de Ouagadougou, il a fallu un peu d\'aide à Antoine Yaméogo pour rassembler ses bagages. "J\'avais cinq valises pleines !", sourit ce rugbyman au club de Gennevilliers (Hauts-de-Seine) et pilier de la sélection burkinabé. "Du matériel, des équipements, des ballons, récupérés à droite à gauche auprès de copains… Vous croyez qu\'il y a un Go Sport ou un Décathlon ici ?" Ce commercial en informatique à la ville est l\'un des rares joueurs des Etalons à venir de France, et a pris des responsabilités à la Fédération de rugby du Burkina Faso pour développer son sport dans son pays. Le chantier est de taille : "On joue toujours sur des terrains de foot. On se débrouille pour rajouter des morceaux de bois au-dessus des buts pour faire le \'H\'. C\'est du bricolage", soupire-t-il. Comme une métaphore de l\'état du rugby africain.\r\n\r\nLa face émergée de l\'iceberg, c\'est l\'Afrique du Sud, championne du monde en titre. Tous les quatre ans, le fan de rugby lambda redécouvre l\'existence de l\'équipe de Namibie, adversaire des Bleus jeudi 21 septembre au stade Vélodrome de Marseille. Pour le reste, à part les participations épisodiques du Zimbabwe (en 1987) et de la Côte d\'Ivoire (en 1995) à la Coupe du monde, c\'est le désert, ou presque. "On a clairement loupé le train du professionnalisme", déplore Mohamed El Maatouk, directeur technique national (DTN) du rugby marocain. "Je dirais même qu\'on a perdu 20 ans. Dans les années 1990, le Maroc rencontrait régulièrement de bonnes équipes européennes, la Géorgie, l\'Espagne, la Roumanie… Depuis le développement de Rugby Afrique [la confédération continentale] au début des années 2000, on s\'est renfermé sur nous-mêmes, ce qui a entraîné une baisse de niveau, faute de pouvoir nous confronter aux meilleurs."\r\n\r\n"La cour des miracles"\r\nQui a participé de près ou de loin aux joutes nationales en Afrique aura forcément une anecdote. Paysagère : "On était allé jouer au Cameroun sur un terrain dont les lignes avaient été tracées à la craie", sourit l\'ancien international sénégalais Yogane Correa. Physique : "Lors d\'un match au Zimbabwe, lors d\'une échauffourée, des spectateurs étaient venus prêter main forte à leurs joueurs en sautant sur le terrain", continue le même. Douloureuse : "Ah, ce trajet de 18 heures de bus sur des routes défoncées entre Ouagadougou et Niamey…", s\'amuse Antoine Yamaéogo.\r\n\r\nDans le genre sanguinolent, Thierry Barbe, ancien sélectionneur du Burkina Faso entre 2017 et 2018, a même cru perdre un joueur, qui s\'était retrouvé momentanément tétraplégique après un choc lors d\'un match face au Niger. "Je ne vous raconte même pas l\'état de la salle des urgences traumatologiques de l\'hôpital de Niamey. Treize mètres sur treize, des brancards partout, à ma gauche, un gamin avec un bras arraché, de l\'autre, un petit garçon avec une fracture ouverte. La cour des miracles… Ça a été une histoire pas possible pour qu\'on trouve un scanner. Et il a fallu que je rameute les amis pour qu\'on se cotise pour payer l\'opération."\r\n\r\nLe ballon ovale peine encore à séduire sur un continent où le foot est roi. Localement, certains sports le relèguent encore plus bas dans la hiérarchie, comme la lutte au Sénégal. Des exceptions existent tout de même. "J\'atterris à Madagascar, il est 5 heures du matin, j\'attrape un taxi pour trouver un hôtel en centre-ville, décrit l\'ancien international tricolore "Jeff" Tordo. Et là, je vois des dizaines de gamins jouer au touch rugby [une variante sans contacts violents] sur du béton. C\'est comme ça que j\'ai découvert que le rugby était le sport roi à Madagascar... Juste derrière la corruption, malheureusement", soupire celui qui y a fondé l\'association humanitaire Pachamama, qui sort les enfants de la misère par le rugby.\r\n\r\nRares sont les fédérations qui peuvent compter sur les pouvoirs publics pour développer leur sport. "La fédération burkinabé tourne avec un budget de 30 000 euros. Forcément, on ne va pas très loin avec ça", soupire Antoine Yamaéogo. Les sponsors privés relèvent de la chimère une fois descendu au-dessous du Sahara. "C\'est culturel, soupire Yogane Correa. Les entreprises locales ne donnent pas, car elles n\'ont pas confiance dans l\'utilisation des fonds. Les seuls sponsors sont les boîtes dirigées par des Français, comme [le cimentier] Sococim au Sénégal." Et ce ne sont pas les subsides de la fédération internationale World Rugby qui vont changer la donne : quand chaque nation européenne reçoit 4,5 millions d\'euros par an, le continent africain doit se partager 2 millions d\'euros, comme l\'a révélé la Deutsche Welle. A presque quarante.\r\n\r\nPlans B et système D\r\nVous ne serez pas surpris d\'apprendre que nombre de joueurs de sélections africaines posent des congés pour participer à des matchs internationaux. Quant au paiement des primes de match, ça relève souvent du folklore. "On nous payait en dollars, se rappelle Mohamed Boughalem, ancien international marocain expatrié en France. Mais les dirigeants refusaient de payer les joueurs restés au pays autant que ceux qui jouaient à l\'étranger. Genre, \'avec 30 dollars, t\'es le roi du pétrole au Maroc\'. Vous pensez bien qu\'on s\'y est opposés… et on a fini par être tous payés la même somme." Quelques centaines de kilomètres plus au sud, au Burkina-Faso, Thierry Barbe se souvient que les primes de matchs servaient à acheter des chaussures. "Et des chaussures de foot, en plus ! Même pas de la bonne qualité. Faute de mieux."\r\n\r\nPas d\'argent, pas d\'équipements, pas de terrain, pas de sponsor… et pas de match. L\'équipe du Burkina Faso va ainsi passer 2023 et 2024 sans match officiel, et à l\'exception de deux gros stages au Zimbabwe et au pays. Certains joueurs locaux se retrouvent désœuvrés. "Ils n\'ont pas accès une salle de musculation, et ne peuvent pas se nourrir comme un sportif de haut niveau", se désole Antoine Yamaéogo. Bien souvent, les championnats locaux sont organisés de bric et de broc. Au Sénégal, il compte une demi-douzaine de clubs… pour "un terrain et demi", décrit Cédric Paniagua, président du club dakarois de S\'en fout le score jusqu\'à l\'an dernier. "Et ce terrain se trouve sur la base militaire. Donc on se retrouve parfois à jouer sur sable, ce qui ne va pas sans poser problème niveau sécurité. Imaginez un pilier qui s\'enfonce la tête dans le sable sur une mêlée…"\r\n\r\nLe joueur sénégalais Ibrahima Thiaw tient la balle avant une pénalité lors du match de Coupe d\'Afrique entre le Sénégal et l\'Ile Maurice, le 30 novembre 2019 au stade Léopold-Sédar-Senghor de Dakar. (SEYLLOU / AFP)\r\nLe joueur sénégalais Ibrahima Thiaw tient la balle avant une pénalité lors du match de Coupe d\'Afrique entre le Sénégal et l\'Ile Maurice, le 30 novembre 2019 au stade Léopold-Sédar-Senghor de Dakar. (SEYLLOU / AFP)\r\nEn dix-huit mois passés au sein du staff de la sélection algérienne, l\'ancien international tricolore François Gelez nourrit le regret de "ne jamais avoir disputé un match en Algérie. La plupart des rassemblements se faisaient en France, pour d\'évidentes raisons logistiques." Ce qui n\'est pas forcément gage de conditions de niveau internationales, peste le DTN marocain Mohamed El Maatouk. "J\'ai encore honte d\'un tournoi organisé à Toulouse, où tout ce que l\'on avait pour nourrir les joueurs, c\'était des couscous préparés par des mamans… Les gars dormaient sur des lits superposés."\r\n\r\nUn plafond de verre difficile à briser\r\nLe tournoi de qualification des équipes africaines pour le Mondial s\'est ainsi déroulé... à Marseille. Pour le deuxième ligne namibien Pieter-Jan van Lill, qui dispute le Mondial, c\'était une excellente nouvelle : "On était sûr qu\'on ne tomberait pas dans un traquenard, que le terrain serait le même pour tout le monde." Pour le tout nouveau patron de Rugby Afrique, c\'est un désaveu, "une mauvaise publicité pour l\'Afrique, (…) une grosse erreur, qui ne se reproduira pas", assure-t-il dans une interview sur RFI. Lors de ce tournoi, l\'équipe d\'Algérie a fait sensation, en passant près de la qualification. "Ils ont initié une stratégie intéressante pour décoller très vite, illustre François Gelez. Le championnat n\'a été créé qu\'il y a une dizaine d\'années, donc ils sont allés puiser dans le vivier des binationaux pour constituer rapidement une équipe première compétitive." Il suffit d\'une grand-mère née sur le sol algérien pour avoir le droit de porter le maillot des Lions. D\'où la présence des frères Caminati, bien connus des suiveurs du Top 14, sous le maillot blanc. "Et en parallèle, ils ont beaucoup investi dans la formation pour développer la génération d\'après".\r\n\r\nLe deuxième ligne algérien Yakine Djebbari tente de fausser compagnie à la défense kenyane, lors du match de qualification au Mondial 2023 entre l\'Algérie et le Kenya, le 6 juillet 2022 à Marseille. (CHRISTOPHE SIMON / AFP)\r\nLe deuxième ligne algérien Yakine Djebbari tente de fausser compagnie à la défense kenyane, lors du match de qualification au Mondial 2023 entre l\'Algérie et le Kenya, le 6 juillet 2022 à Marseille. (CHRISTOPHE SIMON / AFP)\r\nLe plan algérien ne s\'est pourtant pas déroulé sans accroc. "En se qualifiant pour le Mondial en France, on aurait affronté les Bleus à Marseille, ç\'aurait été un incroyable coup de projecteur", soupire le président de la fédération, Sofiane Ben Hassen. Le rêve algérien s\'est fracassé sur le Kenya en demi-finale du tournoi de qualification africaine. Car il n\'existe qu\'un seul ticket pour les 37 sélections du continent – hors Afrique du Sud. "C\'est bien trop peu, peste Sofiane Ben Hassen. Pourquoi ne pas élargir à 24 pays [contre 20 actuellement, formule gravée dans le marbre depuis 1999] ? Ce serait une vraie Coupe du monde. Et ne me dites pas que ça accroîtrait les écarts de niveau : l\'Irlande a bien collé 80 points à la Roumanie dans la formule actuelle."\r\n\r\nLe souvenir de l\'ailier ivoirien Max Brito, devenu tétraplégique après un choc lors d\'un match face aux Tonga lors du Mondial 1995, demeure dans tous les esprits au moment d\'évoquer un élargissement de l\'élite mondiale à des équipes africaines moins aguerries. "On a besoin d\'avoir plus de joueurs aguerris dans les grands championnats", pointe l\'ancien n°8 d\'Albi, Yogane Correa. "Pourquoi ne pas créer, sur le modèle de ce qui se fait aux Fidji, des antennes de clubs professionnels pour former directement les meilleurs éléments sur place avant de les envoyer dans l\'Hexagone ?"\r\n\r\nAu Sénégal, ce modèle existe déjà… pour le football, avec des clubs comme Metz, qui ont carrément investi dans une académie localement. "Et ça marche presque trop bien, pointe Cédric Paniagua, ex-dirigeant du club dakarois S\'en Fout le score. Au club, on avait un ailier doué et rapide, qui a fini par céder aux sirènes du ballon rond." A moins qu\'une autre forme de ballon ovale, qui nécessite moins de joueurs, de matériel et de gabarits spécifiques, finisse par s\'imposer en Afrique : le rugby à sept avec ses matchs de 10 minutes et ses tournois qui ne dépassent pas trois jours. Thierry Barbe acquiesce : "C\'est ça, la chance pour ce continent."', 'https://www.francetvinfo.fr/pictures/UE9hrWZByNwt5Qy8OYOQauMLFVE/0x0:1920x1080/2656x1494/filters:format(avif):quality(50)/2023/09/19/illu-light-6509a60bbb29f058405305.jpg', '2023-09-21 09:11:18', '2023-09-21 09:11:18', '0000-00-00 00:00:00', 5, 3);
INSERT INTO `post` (`id_post`, `title`, `slug`, `content`, `image`, `created_at`, `updated_at`, `deleted_at`, `id_category`, `id_user`) VALUES (6, 'Crise à l\'OM : "Les limites ont été dépassées"... Le président Pablo Longoria et l\'ex-entraîneur Marcelino sortent de leur silence', 'crise-a-l-om-les-limites-ont-ete-depassees-le-president-pablo-longoria-et-l-ex-entraineur-marcelino-sortent-de-leur-silence', 'Leur prise de parole était attendue après la crise soudaine dans laquelle a été plongé l\'Olympique de Marseille depuis lundi. Le désormais ex-entraîneur de l\'OM, Marcelino, et le président Pablo Longoria, qui s\'est mis en retrait avec les autres membres du directoire du club phocéen, sont sortis du silence, mercredi 20 septembre. Le premier dans un message publié sur X (anciennement Twitter), le second dans une interview à La Provence.\r\n\r\nLes deux hommes sont revenus sur la réunion qui s\'est déroulée lundi, au centre d\'entraînement Robert-Louis-Dreyfus, entre la direction olympienne et les représentants des associations de supporters. "Je m\'étais préparé aux critiques mais je restais optimiste quant à l\'avenir. J\'ai pu parler deux minutes, puis on m\'a coupé et ça a dérapé très vite... On nous a dit : \'Démissionnez tous les quatre, sinon c\'est la guerre !\' Les limites ont été dépassées", a déploré Pablo Longoria.\r\n\r\nLes supporters nient toute menace\r\nCes menaces proférées par les représentants de supporters ont provoqué la mise en retrait de Longoria et des autres membres de la direction, comme l\'expliquait le communiqué publié par l\'OM mardi soir. Absent de cette réunion, Marcelino l\'évoque dans son message, écrit en son nom et en celui des autres membres de son staff, pour expliquer les raisons de sa démission : "Les conditions de travail ne sont pas les plus appropriées pour exercer notre profession avec sécurité et dans la normalité habituellement inhérente à un club de football."\r\n\r\nDans des propos transmis à l\'AFP, les dirigeants de deux clubs de supporters, les South Winners et les Dodger\'s, assurent ne pas avoir "proféré de menaces de mort ni demandé la démission de Marcelino". Rachid Zeroual, qui dirige les South Winners, explique avoir "soulevé certains problèmes" auprès des dirigeants, notamment concernant le centre de formation.', 'https://www.francetvinfo.fr/pictures/NKFBxRTR2ysPPuVDoJwZASgZesE/0x25:2518x1441/2656x1494/filters:format(avif):quality(50)/2023/09/20/066-dppi-40023058-017-650b6a54235fa341176772.jpg', '2023-09-21 09:13:44', '2023-09-21 09:13:44', '0000-00-00 00:00:00', 5, 1);
INSERT INTO `post` (`id_post`, `title`, `slug`, `content`, `image`, `created_at`, `updated_at`, `deleted_at`, `id_category`, `id_user`) VALUES (7, 'Sept œuvres du peintre autrichien Egon Schiele restituées aux héritiers du collectionneur juif Fritz Grünbaum tué par les nazis', 'sept-oeuvres-du-peintre-autrichien-egon-schiele-restituees-aux-heritiers-du-collectionneur-juif-fritz-grunbaum-tue-par-les-nazis', 'Les héritiers de Fritz Grünbaum, artiste autrichien de cabaret et grand collectionneur d\'art, mort à Dachau en 1941, se battent depuis plusieurs décennies en justice pour recouvrer la possession de ses œuvres, essentiellement des dessins d\'Egon Schiele (1890-1918), figure de l\'expressionnisme autrichien. Sous pression de la justice, plusieurs institutions viennent de leur restituer sept œuvres.\r\n\r\n"Merci de vous être placés du bon côté de l\'Histoire. Ce que vous avez fait est historique", a salué le juge américain Timothy Reif, en s\'adressant, lors d\'une cérémonie officielle à New York, au procureur de Manhattan Alvin Bragg, dont le parquet est doté d\'une cellule spéciale de lutte contre le trafic d\'œuvres d\'art.\r\n\r\nPrésentés lors de la cérémonie, les dessins de Schiele, des aquarelles ou crayon sur papier, comme I love Antithesis, Femme debout, ou Portrait d\'un garçon, se trouvaient dans de prestigieuses collections, au Musée d\'art moderne de New York (MoMA), à la Morgan Library de New York, au Musée d\'art de Santa Barbara (Californie), dans la collection Ronald Lauder et au sein du trust Vally Sabarsky, du nom du marchand d\'art Serge Sabarsky, décédé en 1996.', 'https://www.francetvinfo.fr/pictures/27TZ90Owt3f2OZTRr34vhswEqhw/0x131:5043x2965/2656x1494/filters:format(avif):quality(50)/2023/09/21/000-33v7368-650bf9d63d0e5855769398.jpg', '2023-09-21 09:15:23', '2023-09-21 09:15:23', '0000-00-00 00:00:00', 3, 3);
INSERT INTO `post` (`id_post`, `title`, `slug`, `content`, `image`, `created_at`, `updated_at`, `deleted_at`, `id_category`, `id_user`) VALUES (8, 'Vers la fin du ticket de métro parisien : retour sur la saga d\'un bout de carton apparu il y a 121 ans', 'vers-la-fin-du-ticket-de-metro-parisien-retour-sur-la-saga-d-un-bout-de-carton-apparu-il-y-a-121-ans', 'La RATP se lance à son tour dans la dématérialisation des titres de transport. À partir de jeudi 14 octobre, les carnets de tickets papier ne sont plus vendus dans une centaine de gares et stations parisiennes. Et ils vont continuer à être progressivement retirés du marché dans les prochains mois. Pour le ticket de métro, tour à tour de couleur crème, verte, jaune, violette ou blanche, c\'est le début de la fin d\'une aventure commencée il y a 121 ans, à l\'époque, évidemment, où les premières rames du métro(politain) ont commencé à circuler dans la capitale. Retour sur la petite histoire du ticket de métro parisien. \r\n\r\nQuand la première ligne de métro est inaugurée, le 19 juillet 1900, les tickets ont trois tarifs et trois couleurs : rose pour les premières classes, crème pour les secondes et vert pour les billets aller-retour. "Il faut que ça aille vite pour le poinçonneur", explique Grégoire Thonnat, auteur de la Petite histoire du ticket de métro parisien aux éditions Télémaque et collectionneur. "C\'est un contrôle visuel, donc il faut qu\'il y ait des codes faciles à repérer."\r\n\r\n\r\nGrégoire Thonnat, ésitériophile (collectionneur d\'objets du métro) et auteur de la Petite histoire du ticket de métro parisien, (Éditions Télémaque). (SEBASTIEN BAER / RADIO FRANCE)\r\nGrégoire Thonnat, ésitériophile (collectionneur d\'objets du métro) et auteur de la Petite histoire du ticket de métro parisien, (Éditions Télémaque). (SEBASTIEN BAER / RADIO FRANCE)\r\nLes tickets sont alors vendus de 15 à 25 centimes. Ce n\'est que 30 ans plus tard qu\'apparaissent les premiers tarifs réduits pour les mutilés de guerre. "Ce sont les associations d\'anciens combattants, indique Grégoire Thonnat, qui font un lobbying en disant \'non mais attendez, on a souffert on a des droits\' et donc ils ont un tarif réduit pour eux." \r\n\r\nPostés à l\'entrée des quais, les poinçonneurs, célébrés dans la chanson de Serge Gainsbourg, sont chargés du contrôle des billets. "Un poinçonneur pouvait faire dans les grosses stations plus de 3 000 à 3 500 trous par jour."', 'https://www.francetvinfo.fr/pictures/d6zpX_kE_jUNH2TIod0VJ-lxsM8/0x324:4761x3003/2656x1494/filters:format(avif):quality(50)/2021/10/14/phpJ1xekl.jpg', '2023-09-21 09:18:25', '2023-09-21 09:18:25', '0000-00-00 00:00:00', 2, 1);
