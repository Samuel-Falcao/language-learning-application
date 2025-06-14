import '../models/lesson_model.dart';
import '../models/quiz_question_model.dart';
import '../models/phrase_model.dart';

List<LessonModel> getFrenchLessonsData() {
  return [
    LessonModel(
      id: 'fr_lecon_1',
      title: 'Leçon 1 : Les bases',
      description: 'Apprenez les salutations, les couleurs et les nombres.',
      xpReward: 15,
      quizQuestions: [
        QuizQuestionModel(
            id: 'fr_q1',
            questionText: 'Como se diz "Olá" em francês?',
            options: ['Au revoir', 'Merci', 'Bonjour', 'Pardon'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'fr_q2',
            questionText: 'Como se diz "Obrigado"?',
            options: ['S’il vous plaît', 'Pardon', 'Merci', 'Bonjour'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'fr_q3',
            questionText: 'Como se diz "Com licença" ou "Perdão"?',
            options: ['Merci', 'Pardon', 'Au revoir', 'S’il vous plaît'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'fr_q4',
            questionText: 'Qual é a tradução de "Por favor"?',
            options: ['Merci', 'S’il vous plaît', 'Pardon', 'Bonjour'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'fr_q5',
            questionText: 'Como se diz "Adeus"?',
            options: ['Au revoir', 'Bonjour', 'S’il vous plaît', 'Pardon'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q6',
            questionText: 'Qual é a cor "azul" em francês?',
            options: ['Bleu', 'Vert', 'Jaune', 'Rouge'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q7',
            questionText: 'Qual é a cor "vermelho"?',
            options: ['Rouge', 'Vert', 'Bleu', 'Jaune'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q8',
            questionText: 'Como se diz "verde"?',
            options: ['Vert', 'Gris', 'Rose', 'Orange'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q9',
            questionText: 'Como se diz "amarelo"?',
            options: ['Jaune', 'Violet', 'Blanc', 'Bleu'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q10',
            questionText: 'Qual é a tradução de "um"?',
            options: ['Un', 'Premier', 'Deux', 'Une'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q11',
            questionText: 'Como se diz "dois"?',
            options: ['Trois', 'Deuxième', 'Deux', 'À'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'fr_q12',
            questionText: 'Como se diz "três"?',
            options: ['Arbre', 'Trois', 'Troisième', 'Libre'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'fr_q13',
            questionText: 'Qual é a cor do céu normalmente?',
            options: ['Bleu', 'Rouge', 'Noir', 'Marron'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q14',
            questionText: 'Como se diz "Olá"?',
            options: ['Au revoir', 'Pardon', 'Salut', 'Bonjour'],
            correctAnswerIndex: 3),
        QuizQuestionModel(
            id: 'fr_q15',
            questionText: 'Qual destas palavras é uma saudação?',
            options: ['Au revoir', 'Bonjour', 'Pardon', 'Merci'],
            correctAnswerIndex: 1),
      ],
      phraseActivities: [
        PhraseModel(
            id: 'fr_p1', phraseTemplate: 'Olá', correctAnswer: 'Bonjour'),
        PhraseModel(
            id: 'fr_p2', phraseTemplate: 'Adeus', correctAnswer: 'Au revoir'),
        PhraseModel(
            id: 'fr_p3', phraseTemplate: 'Obrigado', correctAnswer: 'Merci'),
        PhraseModel(
            id: 'fr_p4', phraseTemplate: 'Desculpe', correctAnswer: 'Pardon'),
        PhraseModel(
            id: 'fr_p5',
            phraseTemplate: 'Por favor',
            correctAnswer: 'S’il vous plaît'),
        PhraseModel(
            id: 'fr_p6',
            phraseTemplate: 'O céu é azul',
            correctAnswer: 'Le ciel est bleu'),
        PhraseModel(
            id: 'fr_p7',
            phraseTemplate: 'A grama é verde',
            correctAnswer: 'L’herbe est verte'),
        PhraseModel(
            id: 'fr_p8',
            phraseTemplate: 'O sol é amarelo',
            correctAnswer: 'Le soleil est jaune'),
        PhraseModel(
            id: 'fr_p9',
            phraseTemplate: 'Eu sou um',
            correctAnswer: 'Je suis un'),
        PhraseModel(
            id: 'fr_p10',
            phraseTemplate: 'Dois mais um é três',
            correctAnswer: 'Deux plus un font trois'),
        PhraseModel(
            id: 'fr_p11',
            phraseTemplate: 'Três menos um é dois',
            correctAnswer: 'Trois moins un font deux'),
        PhraseModel(
            id: 'fr_p12',
            phraseTemplate: 'Diga olá para seu amigo',
            correctAnswer: 'Dis bonjour à ton ami'),
        PhraseModel(
            id: 'fr_p13',
            phraseTemplate: 'Sempre diga obrigado',
            correctAnswer: 'Dis toujours merci'),
        PhraseModel(
            id: 'fr_p14',
            phraseTemplate: 'Ele disse por favor',
            correctAnswer: 'Il a dit s’il vous plaît'),
        PhraseModel(
            id: 'fr_p15',
            phraseTemplate: 'Ela disse desculpe',
            correctAnswer: 'Elle a dit pardon'),
      ],
    ),
    LessonModel(
      id: 'fr_lecon_2',
      title: 'Leçon 2 : Les animaux',
      description: 'Apprenez les noms des animaux courants.',
      xpReward: 20,
      quizQuestions: [
        QuizQuestionModel(
            id: 'fr_q16',
            questionText: 'Como se diz "gato"?',
            options: ['Chat', 'Chien', 'Oiseau', 'Poisson'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q17',
            questionText: 'Como se diz "cachorro"?',
            options: ['Oiseau', 'Chien', 'Cochon', 'Chat'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'fr_q18',
            questionText: 'Qual é a tradução de "pássaro"?',
            options: ['Poisson', 'Mouton', 'Oiseau', 'Cheval'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'fr_q19',
            questionText: 'Como se diz "peixe"?',
            options: ['Poisson', 'Canard', 'Grenouille', 'Chat'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q20',
            questionText: 'Como se diz "vaca"?',
            options: ['Cheval', 'Chèvre', 'Vache', 'Cochon'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'fr_q21',
            questionText: 'Como se diz "porco"?',
            options: ['Cochon', 'Chien', 'Chat', 'Vache'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q22',
            questionText: 'Como se diz "cavalo"?',
            options: ['Cheval', 'Grenouille', 'Mouton', 'Vache'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q23',
            questionText: 'Qual é a tradução de "ovelha"?',
            options: ['Vache', 'Chien', 'Mouton', 'Chat'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'fr_q24',
            questionText: 'Qual destes animais mia?',
            options: ['Chien', 'Chat', 'Oiseau', 'Vache'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'fr_q25',
            questionText: 'Qual destes animais late?',
            options: ['Chat', 'Chien', 'Poisson', 'Mouton'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'fr_q26',
            questionText: 'Qual destes animais voa?',
            options: ['Poisson', 'Oiseau', 'Cochon', 'Vache'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'fr_q27',
            questionText: 'Qual destes animais vive na água?',
            options: ['Oiseau', 'Chien', 'Poisson', 'Cheval'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'fr_q28',
            questionText: 'Qual animal faz "meuh"?',
            options: ['Cochon', 'Vache', 'Oiseau', 'Mouton'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'fr_q29',
            questionText: 'Como se diz "pato"?',
            options: ['Canard', 'Chien', 'Cheval', 'Grenouille'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q30',
            questionText: 'Qual é a tradução de "rã"?',
            options: ['Grenouille', 'Chien', 'Vache', 'Oiseau'],
            correctAnswerIndex: 0),
      ],
      phraseActivities: [
        PhraseModel(
            id: 'fr_p16',
            phraseTemplate: 'O gato está dormindo',
            correctAnswer: 'Le chat dort'),
        PhraseModel(
            id: 'fr_p17',
            phraseTemplate: 'O cachorro está correndo',
            correctAnswer: 'Le chien court'),
        PhraseModel(
            id: 'fr_p18',
            phraseTemplate: 'O pássaro está voando',
            correctAnswer: 'L’oiseau vole'),
        PhraseModel(
            id: 'fr_p19',
            phraseTemplate: 'O peixe está nadando',
            correctAnswer: 'Le poisson nage'),
        PhraseModel(
            id: 'fr_p20',
            phraseTemplate: 'A vaca está comendo',
            correctAnswer: 'La vache mange'),
        PhraseModel(
            id: 'fr_p21',
            phraseTemplate: 'O porco está sujo',
            correctAnswer: 'Le cochon est sale'),
        PhraseModel(
            id: 'fr_p22',
            phraseTemplate: 'O cavalo é rápido',
            correctAnswer: 'Le cheval est rapide'),
        PhraseModel(
            id: 'fr_p23',
            phraseTemplate: 'A ovelha é branca',
            correctAnswer: 'Le mouton est blanc'),
        PhraseModel(
            id: 'fr_p24',
            phraseTemplate: 'O pato está na água',
            correctAnswer: 'Le canard est dans l’eau'),
        PhraseModel(
            id: 'fr_p25',
            phraseTemplate: 'A rã é verde',
            correctAnswer: 'La grenouille est verte'),
        PhraseModel(
            id: 'fr_p26',
            phraseTemplate: 'O cachorro late',
            correctAnswer: 'Le chien aboie'),
        PhraseModel(
            id: 'fr_p27',
            phraseTemplate: 'O gato mia',
            correctAnswer: 'Le chat miaule'),
        PhraseModel(
            id: 'fr_p28',
            phraseTemplate: 'A vaca faz mu',
            correctAnswer: 'La vache meugle'),
        PhraseModel(
            id: 'fr_p29',
            phraseTemplate: 'O cavalo corre rápido',
            correctAnswer: 'Le cheval court vite'),
        PhraseModel(
            id: 'fr_p30',
            phraseTemplate: 'O pássaro canta',
            correctAnswer: 'L’oiseau chante'),
      ],
    ),
    LessonModel(
      id: 'fr_lecon_3',
      title: 'Leçon 3 : La nourriture et les boissons',
      description: 'Apprenez les mots pour la nourriture et les boissons.',
      xpReward: 20,
      quizQuestions: [
        QuizQuestionModel(
            id: 'fr_q31',
            questionText: 'Como se diz "água"?',
            options: ['Lait', 'Jus', 'Eau', 'Café'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'fr_q32',
            questionText: 'Como se diz "pão"?',
            options: ['Riz', 'Pain', 'Pomme', 'Fromage'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'fr_q33',
            questionText: 'Qual é a tradução de "leite"?',
            options: ['Água', 'Suco', 'Lait', 'Vin'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'fr_q34',
            questionText: 'Como se diz "maçã"?',
            options: ['Banane', 'Pomme', 'Orange', 'Poire'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'fr_q35',
            questionText: 'Qual é a tradução de "arroz"?',
            options: ['Riz', 'Pain', 'Pomme', 'Viande'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q36',
            questionText: 'Como se diz "queijo"?',
            options: ['Fromage', 'Pain', 'Lait', 'Pomme'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q37',
            questionText: 'Qual é a tradução de "carne"?',
            options: ['Poisson', 'Viande', 'Œuf', 'Riz'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'fr_q38',
            questionText: 'Como se diz "ovo"?',
            options: ['Œuf', 'Poisson', 'Pomme', 'Légume'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q39',
            questionText: 'Qual é a tradução de "suco"?',
            options: ['Eau', 'Café', 'Jus', 'Thé'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'fr_q40',
            questionText: 'Como se diz "café"?',
            options: ['Thé', 'Jus', 'Café', 'Lait'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'fr_q41',
            questionText: 'Qual é a tradução de "chá"?',
            options: ['Thé', 'Café', 'Jus', 'Lait'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q42',
            questionText: 'Como se diz "banana"?',
            options: ['Pomme', 'Banane', 'Orange', 'Raisin'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'fr_q43',
            questionText: 'Qual é a tradução de "laranja"?',
            options: ['Fraise', 'Orange', 'Melon', 'Pomme'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'fr_q44',
            questionText: 'Como se diz "morango"?',
            options: ['Fraise', 'Pomme', 'Banane', 'Poire'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q45',
            questionText: 'Qual é a tradução de "legume"?',
            options: ['Bonbon', 'Boisson', 'Légume', 'Viande'],
            correctAnswerIndex: 2),
      ],
      phraseActivities: [
        PhraseModel(
            id: 'fr_p31',
            phraseTemplate: 'Eu bebo água',
            correctAnswer: 'Je bois de l’eau'),
        PhraseModel(
            id: 'fr_p32',
            phraseTemplate: 'Ela come pão',
            correctAnswer: 'Elle mange du pain'),
        PhraseModel(
            id: 'fr_p33',
            phraseTemplate: 'Nós gostamos de suco',
            correctAnswer: 'Nous aimons le jus'),
        PhraseModel(
            id: 'fr_p34',
            phraseTemplate: 'Eles bebem leite',
            correctAnswer: 'Ils boivent du lait'),
        PhraseModel(
            id: 'fr_p35',
            phraseTemplate: 'Ele come queijo',
            correctAnswer: 'Il mange du fromage'),
        PhraseModel(
            id: 'fr_p36',
            phraseTemplate: 'Eu como arroz',
            correctAnswer: 'Je mange du riz'),
        PhraseModel(
            id: 'fr_p37',
            phraseTemplate: 'Ela gosta de maçã',
            correctAnswer: 'Elle aime la pomme'),
        PhraseModel(
            id: 'fr_p38',
            phraseTemplate: 'Nós comemos carne',
            correctAnswer: 'Nous mangeons de la viande'),
        PhraseModel(
            id: 'fr_p39',
            phraseTemplate: 'Ele gosta de ovo',
            correctAnswer: 'Il aime l’œuf'),
        PhraseModel(
            id: 'fr_p40',
            phraseTemplate: 'Você bebe café?',
            correctAnswer: 'Tu bois du café ?'),
        PhraseModel(
            id: 'fr_p41',
            phraseTemplate: 'Eu gosto de chá quente',
            correctAnswer: 'J’aime le thé chaud'),
        PhraseModel(
            id: 'fr_p42',
            phraseTemplate: 'Ela come uma banana',
            correctAnswer: 'Elle mange une banane'),
        PhraseModel(
            id: 'fr_p43',
            phraseTemplate: 'Nós temos laranjas',
            correctAnswer: 'Nous avons des oranges'),
        PhraseModel(
            id: 'fr_p44',
            phraseTemplate: 'Eu como um morango',
            correctAnswer: 'Je mange une fraise'),
        PhraseModel(
            id: 'fr_p45',
            phraseTemplate: 'Os legumes são bons',
            correctAnswer: 'Les légumes sont bons'),
      ],
    ),
    LessonModel(
      id: 'fr_lecon_4',
      title: 'Leçon 4 : La maison et les objets',
      description:
          'Apprenez le vocabulaire de la maison et des objets quotidiens.',
      xpReward: 20,
      quizQuestions: [
        QuizQuestionModel(
            id: 'fr_q46',
            questionText: 'Como se diz "mesa"?',
            options: ['Chaise', 'Table', 'Porte', 'Fenêtre'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'fr_q47',
            questionText: 'Qual é a tradução de "cadeira"?',
            options: ['Table', 'Fenêtre', 'Chaise', 'Porte'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'fr_q48',
            questionText: 'Como se diz "janela"?',
            options: ['Porte', 'Toit', 'Fenêtre', 'Mur'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'fr_q49',
            questionText: 'Qual é a tradução de "porta"?',
            options: ['Fenêtre', 'Chaise', 'Table', 'Porte'],
            correctAnswerIndex: 3),
        QuizQuestionModel(
            id: 'fr_q50',
            questionText: 'Como se diz "cama"?',
            options: ['Canapé', 'Lit', 'Table', 'Chaise'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'fr_q51',
            questionText: 'Qual é a tradução de "cama"?',
            options: ['Canapé', 'Lit', 'Salle de bains', 'Fenêtre'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'fr_q52',
            questionText: 'Como se diz "sofá"?',
            options: ['Lit', 'Canapé', 'Armoire', 'Table'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'fr_q53',
            questionText: 'Qual é a tradução de "armário"?',
            options: ['Armoire', 'Chaise', 'Table', 'Canapé'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q54',
            questionText: 'Como se diz "espelho"?',
            options: ['Miroir', 'Fenêtre', 'Porte', 'Lampe'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q55',
            questionText: 'Qual é a tradução de "espelho"?',
            options: ['Serviette', 'Lumière', 'Miroir', 'Douche'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'fr_q56',
            questionText: 'Como se diz "banheiro"?',
            options: ['Salon', 'Salle de bains', 'Cuisine', 'Chambre'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'fr_q57',
            questionText: 'Qual é a tradução de "banheiro"?',
            options: ['Cuisine', 'Salon', 'Salle de bains', 'Chambre'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'fr_q58',
            questionText: 'Como se diz "cozinha"?',
            options: ['Chambre', 'Salon', 'Cuisine', 'Garage'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'fr_q59',
            questionText: 'Qual é a tradução de "cozinha"?',
            options: ['Salle de bains', 'Cuisine', 'Jardin', 'Salon'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'fr_q60',
            questionText: 'Como se diz "quarto"?',
            options: ['Chambre', 'Cuisine', 'Salle', 'Maison'],
            correctAnswerIndex: 0),
      ],
      phraseActivities: [
        PhraseModel(
            id: 'fr_p46',
            phraseTemplate: 'Estou no quarto',
            correctAnswer: 'Je suis dans la chambre'),
        PhraseModel(
            id: 'fr_p47',
            phraseTemplate: 'Ela está na cozinha',
            correctAnswer: 'Elle est dans la cuisine'),
        PhraseModel(
            id: 'fr_p48',
            phraseTemplate: 'A mesa é grande',
            correctAnswer: 'La table est grande'),
        PhraseModel(
            id: 'fr_p49',
            phraseTemplate: 'Há uma cadeira aqui',
            correctAnswer: 'Il y a une chaise ici'),
        PhraseModel(
            id: 'fr_p50',
            phraseTemplate: 'Eu gosto da minha cama',
            correctAnswer: 'J’aime mon lit'),
        PhraseModel(
            id: 'fr_p51',
            phraseTemplate: 'O espelho está na parede',
            correctAnswer: 'Le miroir est sur le mur'),
        PhraseModel(
            id: 'fr_p52',
            phraseTemplate: 'A porta está fechada',
            correctAnswer: 'La porte est fermée'),
        PhraseModel(
            id: 'fr_p53',
            phraseTemplate: 'A janela está aberta',
            correctAnswer: 'La fenêtre est ouverte'),
        PhraseModel(
            id: 'fr_p54',
            phraseTemplate: 'Nós temos um sofá azul',
            correctAnswer: 'Nous avons un canapé bleu'),
        PhraseModel(
            id: 'fr_p55',
            phraseTemplate: 'O banheiro está limpo',
            correctAnswer: 'La salle de bains est propre'),
        PhraseModel(
            id: 'fr_p56',
            phraseTemplate: 'Há um armário no quarto',
            correctAnswer: 'Il y a une armoire dans la chambre'),
        PhraseModel(
            id: 'fr_p57',
            phraseTemplate: 'Eu vou ao banheiro',
            correctAnswer: 'Je vais à la salle de bains'),
        PhraseModel(
            id: 'fr_p58',
            phraseTemplate: 'Ela limpa a cozinha',
            correctAnswer: 'Elle nettoie la cuisine'),
        PhraseModel(
            id: 'fr_p59',
            phraseTemplate: 'Nós comemos na sala de estar',
            correctAnswer: 'Nous mangeons dans le salon'),
        PhraseModel(
            id: 'fr_p60',
            phraseTemplate: 'O sofá é confortável',
            correctAnswer: 'Le canapé est confortable'),
      ],
    ),
    LessonModel(
      id: 'fr_lecon_5',
      title: 'Leçon 5 : Routine Quotidienne',
      description: 'Apprenez les actions et routines courantes de la journée.',
      xpReward: 20,
      quizQuestions: [
        QuizQuestionModel(
            id: 'fr_q61',
            questionText: 'O que significa "acordar"?',
            options: ['Se réveiller', 'Dormir', 'Manger', 'Travailler'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q62',
            questionText: 'O que significa "levantar-se"?',
            options: ['Se lever', 'Se coucher', 'Sauter', 'Se détendre'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q63',
            questionText: 'O que significa "tomar banho"?',
            options: [
              'Prendre une douche',
              'Prendre le petit déjeuner',
              'Aller à l’école',
              'Se brosser les dents'
            ],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q64',
            questionText: 'O que significa "vestir-se"?',
            options: ['S’habiller', 'Dormir', 'Cuisiner', 'Nettoyer'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q65',
            questionText: 'O que significa "tomar café da manhã"?',
            options: [
              'Prendre le petit déjeuner',
              'Se coucher',
              'Aller au travail',
              'Faire une promenade'
            ],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q66',
            questionText: 'O que significa "ir à escola"?',
            options: ['Aller à l’école', 'Déjeuner', 'Travailler', 'Dormir'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q67',
            questionText: 'O que significa "estudar"?',
            options: ['Étudier', 'Dormir', 'Marcher', 'Boire'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q68',
            questionText: 'O que significa "almoçar"?',
            options: [
              'Déjeuner',
              'Prendre le petit déjeuner',
              'Dîner',
              'Travailler'
            ],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q69',
            questionText: 'O que significa "voltar para casa"?',
            options: [
              'Rentrer à la maison',
              'Sortir',
              'Se réveiller',
              'Faire les courses'
            ],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q70',
            questionText: 'O que significa "fazer a lição de casa"?',
            options: ['Faire les devoirs', 'Nettoyer', 'Cuisiner', 'Lire'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q71',
            questionText: 'O que significa "jantar"?',
            options: ['Dîner', 'Danser', 'Dormir', 'Se réveiller'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q72',
            questionText: 'O que significa "assistir TV"?',
            options: [
              'Regarder la télévision',
              'Aller à l’école',
              'Cuisiner',
              'S’habiller'
            ],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q73',
            questionText: 'O que significa "escovar os dentes"?',
            options: [
              'Se brosser les dents',
              'Déjeuner',
              'Se coucher',
              'Lire un livre'
            ],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q74',
            questionText: 'O que significa "ler um livro"?',
            options: [
              'Lire un livre',
              'Prendre une douche',
              'Dormir',
              'Aller au travail'
            ],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'fr_q75',
            questionText: 'O que significa "ir para cama"?',
            options: ['Se coucher', 'Se lever', 'Manger', 'Étudier'],
            correctAnswerIndex: 0),
      ],
      phraseActivities: [
        PhraseModel(
            id: 'fr_p61',
            phraseTemplate: 'Eu acordo às sete horas',
            correctAnswer: 'Je me réveille à sept heures'),
        PhraseModel(
            id: 'fr_p62',
            phraseTemplate: 'Ele se levanta cedo de manhã',
            correctAnswer: 'Il se lève tôt le matin'),
        PhraseModel(
            id: 'fr_p63',
            phraseTemplate: 'Ela toma banho depois do esporte',
            correctAnswer: 'Elle prend une douche après le sport'),
        PhraseModel(
            id: 'fr_p64',
            phraseTemplate: 'Nós nos vestimos rapidamente',
            correctAnswer: 'Nous nous habillons rapidement'),
        PhraseModel(
            id: 'fr_p65',
            phraseTemplate: 'Eles tomam café da manhã juntos',
            correctAnswer: 'Ils prennent le petit déjeuner ensemble'),
        PhraseModel(
            id: 'fr_p66',
            phraseTemplate: 'Você vai à escola de ônibus',
            correctAnswer: 'Tu vas à l’école en bus'),
        PhraseModel(
            id: 'fr_p67',
            phraseTemplate: 'As crianças estudam no quarto delas',
            correctAnswer: 'Les enfants étudient dans leur chambre'),
        PhraseModel(
            id: 'fr_p68',
            phraseTemplate: 'Eu almoço ao meio-dia',
            correctAnswer: 'Je déjeune à midi'),
        PhraseModel(
            id: 'fr_p69',
            phraseTemplate: 'Ele vai para casa depois do trabalho',
            correctAnswer: 'Il rentre à la maison après le travail'),
        PhraseModel(
            id: 'fr_p70',
            phraseTemplate: 'Ela faz a lição de casa todos os dias',
            correctAnswer: 'Elle fait ses devoirs tous les jours'),
        PhraseModel(
            id: 'fr_p71',
            phraseTemplate: 'Nós jantamos às oito horas',
            correctAnswer: 'Nous dînons à huit heures'),
        PhraseModel(
            id: 'fr_p72',
            phraseTemplate: 'Eles assistem TV à noite',
            correctAnswer: 'Ils regardent la télévision le soir'),
        PhraseModel(
            id: 'fr_p73',
            phraseTemplate: 'Eu escovo os dentes duas vezes por dia',
            correctAnswer: 'Je me brosse les dents deux fois par jour'),
        PhraseModel(
            id: 'fr_p74',
            phraseTemplate: 'Ela lê um livro antes de dormir',
            correctAnswer: 'Elle lit un livre avant de dormir'),
        PhraseModel(
            id: 'fr_p75',
            phraseTemplate: 'Ele vai para cama às dez horas',
            correctAnswer: 'Il se couche à dix heures'),
      ],
    ),
  ];
}
