import '../models/lesson_model.dart';
import '../models/quiz_question_model.dart';
import '../models/phrase_model.dart';

List<LessonModel> getItalianLessonsData() {
  return [
    LessonModel(
      id: 'it_lesson_1',
      title: 'Lezione 1: Le Basi',
      description: 'Impara saluti, colori e numeri essenziali.',
      xpReward: 15,
      quizQuestions: [
        QuizQuestionModel(
            id: 'it_q1',
            questionText: 'Come se diz "Olá"?',
            options: ['Addio', 'Grazie', 'Ciao', 'Scusa'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'it_q2',
            questionText: 'Come se diz "Obrigado"?',
            options: ['Per favore', 'Scusa', 'Grazie', 'Ciao'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'it_q3',
            questionText: 'Come se diz "Desculpe"?',
            options: ['Grazie', 'Scusa', 'Mi dispiace', 'Per favore'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'it_q4',
            questionText: 'Qual é a tradução de "Por favor"?',
            options: ['Grazie', 'Per favore', 'Scusa', 'Ciao'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'it_q5',
            questionText: 'Come se diz "Tchau"?',
            options: ['Addio', 'Ciao', 'Per favore', 'Scusa'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q6',
            questionText: 'Qual é a cor "azul" em italiano?',
            options: ['Blu', 'Verde', 'Giallo', 'Rosso'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q7',
            questionText: 'Qual é a cor "vermelho"?',
            options: ['Rosso', 'Verde', 'Blu', 'Giallo'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q8',
            questionText: 'Come se diz "verde"?',
            options: ['Verde', 'Grigio', 'Rosa', 'Arancione'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q9',
            questionText: 'Come se diz "amarelo"?',
            options: ['Giallo', 'Viola', 'Bianco', 'Blu'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q10',
            questionText: 'Qual é a tradução de "um"?',
            options: ['Uno', 'Primo', 'Due', 'Un'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q11',
            questionText: 'Come se diz "dois"?',
            options: ['Due', 'Uno', 'Tre', 'Quattro'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q12',
            questionText: 'Come se diz "três"?',
            options: ['Uno', 'Due', 'Tre', 'Quattro'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'it_q13',
            questionText: 'Come se diz "quatro"?',
            options: ['Uno', 'Due', 'Tre', 'Quattro'],
            correctAnswerIndex: 3),
        QuizQuestionModel(
            id: 'it_q14',
            questionText: 'Come se diz "cinco"?',
            options: ['Cinque', 'Quattro', 'Tre', 'Due'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q15',
            questionText: 'Qual é a cor "preto"?',
            options: ['Bianco', 'Nero', 'Blu', 'Rosso'],
            correctAnswerIndex: 1),
      ],
      phraseActivities: [
        PhraseModel(id: 'it_p1', phraseTemplate: 'Olá', correctAnswer: 'Ciao'),
        PhraseModel(
            id: 'it_p2', phraseTemplate: 'Tchau', correctAnswer: 'Addio'),
        PhraseModel(
            id: 'it_p3', phraseTemplate: 'Obrigado', correctAnswer: 'Grazie'),
        PhraseModel(
            id: 'it_p4', phraseTemplate: 'Desculpe', correctAnswer: 'Scusa'),
        PhraseModel(
            id: 'it_p5',
            phraseTemplate: 'Por favor',
            correctAnswer: 'Per favore'),
        PhraseModel(
            id: 'it_p6',
            phraseTemplate: 'O céu é azul',
            correctAnswer: 'Il cielo è blu'),
        PhraseModel(
            id: 'it_p7',
            phraseTemplate: 'A grama é verde',
            correctAnswer: "L'erba è verde"),
        PhraseModel(
            id: 'it_p8',
            phraseTemplate: 'O sol é amarelo',
            correctAnswer: 'Il sole è giallo'),
        PhraseModel(
            id: 'it_p9',
            phraseTemplate: 'Eu sou um',
            correctAnswer: 'Io sono uno'),
        PhraseModel(
            id: 'it_p10',
            phraseTemplate: 'Dois mais um é três',
            correctAnswer: 'Due più uno è tre'),
        PhraseModel(
            id: 'it_p11',
            phraseTemplate: 'A noite é preta',
            correctAnswer: 'La notte è nera'),
        PhraseModel(
            id: 'it_p12',
            phraseTemplate: 'Eu vejo o azul',
            correctAnswer: 'Io vedo il blu'),
        PhraseModel(
            id: 'it_p13',
            phraseTemplate: 'O gato é branco',
            correctAnswer: 'Il gatto è bianco'),
        PhraseModel(
            id: 'it_p14',
            phraseTemplate: 'A flor é rosa',
            correctAnswer: 'Il fiore è rosa'),
        PhraseModel(
            id: 'it_p15',
            phraseTemplate: 'A maçã é vermelha',
            correctAnswer: 'La mela è rossa'),
      ],
    ),
    LessonModel(
      id: 'it_lesson_2',
      title: 'Lezione 2: Animali',
      description: 'Impara i nomi degli animali comuni.',
      xpReward: 15,
      quizQuestions: [
        QuizQuestionModel(
            id: 'it_q16',
            questionText: 'Come se diz "gato"?',
            options: ['Gatto', 'Cane', 'Uccello', 'Pesce'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q17',
            questionText: 'Come se diz "cachorro"?',
            options: ['Uccello', 'Cane', 'Maiale', 'Gatto'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'it_q18',
            questionText: 'Qual é a tradução de "pássaro"?',
            options: ['Pesce', 'Pecora', 'Uccello', 'Cavallo'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'it_q19',
            questionText: 'Come se diz "peixe"?',
            options: ['Pesce', 'Anatra', 'Rana', 'Gatto'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q20',
            questionText: 'Come se diz "vaca"?',
            options: ['Cavallo', 'Capra', 'Mucca', 'Maiale'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'it_q21',
            questionText: 'Come se diz "pássaro"?',
            options: ['Uccello', 'Cane', 'Gatto', 'Maiale'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q22',
            questionText: 'Come se diz "porco"?',
            options: ['Maiale', 'Cavallo', 'Gatto', 'Pesce'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q23',
            questionText: 'Come se diz "cavalo"?',
            options: ['Uccello', 'Cane', 'Cavallo', 'Mucca'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'it_q24',
            questionText: 'Come se diz "ovelha"?',
            options: ['Pecora', 'Maiale', 'Pesce', 'Gatto'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q25',
            questionText: 'Come se diz "pato"?',
            options: ['Anatra', 'Cane', 'Gatto', 'Pesce'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q26',
            questionText: 'Qual é a tradução de "cabra"?',
            options: ['Capra', 'Mucca', 'Cane', 'Gatto'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q27',
            questionText: 'Come se diz "urso"?',
            options: ['Orso', 'Pesce', 'Uccello', 'Cavallo'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q28',
            questionText: 'Come se diz "rato"?',
            options: ['Topo', 'Cane', 'Gatto', 'Pesce'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q29',
            questionText: 'Come se diz "crocodilo"?',
            options: ['Coccodrillo', 'Gatto', 'Cane', 'Uccello'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q30',
            questionText: 'Come se diz "tigre"?',
            options: ['Tigre', 'Gatto', 'Cane', 'Pesce'],
            correctAnswerIndex: 0),
      ],
      phraseActivities: [
        PhraseModel(
            id: 'it_p16',
            phraseTemplate: 'O gato está dormindo',
            correctAnswer: 'Il gatto sta dormendo'),
        PhraseModel(
            id: 'it_p17',
            phraseTemplate: 'O cachorro está correndo',
            correctAnswer: 'Il cane sta correndo'),
        PhraseModel(
            id: 'it_p18',
            phraseTemplate: 'O pássaro está voando',
            correctAnswer: "L'uccello sta volando"),
        PhraseModel(
            id: 'it_p19',
            phraseTemplate: 'O peixe está nadando',
            correctAnswer: 'Il pesce sta nuotando'),
        PhraseModel(
            id: 'it_p20',
            phraseTemplate: 'A vaca está comendo',
            correctAnswer: 'La mucca sta mangiando'),
        PhraseModel(
            id: 'it_p21',
            phraseTemplate: 'O porco está na fazenda',
            correctAnswer: 'Il maiale è nella fattoria'),
        PhraseModel(
            id: 'it_p22',
            phraseTemplate: 'O cavalo corre rápido',
            correctAnswer: 'Il cavallo corre veloce'),
        PhraseModel(
            id: 'it_p23',
            phraseTemplate: 'A ovelha está no campo',
            correctAnswer: 'La pecora è nel campo'),
        PhraseModel(
            id: 'it_p24',
            phraseTemplate: 'O pato nada no lago',
            correctAnswer: "L'anatra nuota nel lago"),
        PhraseModel(
            id: 'it_p25',
            phraseTemplate: 'A cabra come capim',
            correctAnswer: 'La capra mangia l’erba'),
        PhraseModel(
            id: 'it_p26',
            phraseTemplate: 'O urso é grande',
            correctAnswer: "L'orso è grande"),
        PhraseModel(
            id: 'it_p27',
            phraseTemplate: 'O rato está escondido',
            correctAnswer: 'Il topo è nascosto'),
        PhraseModel(
            id: 'it_p28',
            phraseTemplate: 'O crocodilo vive no rio',
            correctAnswer: 'Il coccodrillo vive nel fiume'),
        PhraseModel(
            id: 'it_p29',
            phraseTemplate: 'O tigre é feroz',
            correctAnswer: 'La tigre è feroce'),
        PhraseModel(
            id: 'it_p30',
            phraseTemplate: 'O cachorro late muito',
            correctAnswer: 'Il cane abbaia molto'),
      ],
    ),
    LessonModel(
      id: 'it_lesson_3',
      title: 'Lezione 3: Cibo e Bevande',
      description: 'Impara cibi e bevande comuni in italiano.',
      xpReward: 20,
      quizQuestions: [
        QuizQuestionModel(
            id: 'it_q31',
            questionText: 'Come se diz "água" em italiano?',
            options: ['Succo', 'Latte', 'Acqua', 'Caffè'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'it_q32',
            questionText: 'Come se diz "pão"?',
            options: ['Riso', 'Pane', 'Mela', 'Formaggio'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'it_q33',
            questionText: 'Qual é a tradução de "leite"?',
            options: ['Latte', 'Acqua', 'Succo', 'Bibita'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q34',
            questionText: 'Come se diz "maçã"?',
            options: ['Banana', 'Mela', 'Arancia', 'Pera'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'it_q35',
            questionText: 'Qual é a tradução de "arroz"?',
            options: ['Pasta', 'Riso', 'Pane', 'Carne'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'it_q36',
            questionText: 'Come se diz "café"?',
            options: ['Tè', 'Caffè', 'Latte', 'Succo'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'it_q37',
            questionText: 'Qual é a tradução de "suco"?',
            options: ['Acqua', 'Latte', 'Succo', 'Birra'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'it_q38',
            questionText: 'Come se diz "carne"?',
            options: ['Carne', 'Pesce', 'Pollo', 'Frutta'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q39',
            questionText: 'Qual é a tradução de "peixe"?',
            options: ['Pesce', 'Pollo', 'Carne', 'Frutta'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q40',
            questionText: 'Come se diz "fruta"?',
            options: ['Frutta', 'Verdura', 'Carne', 'Pesce'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q41',
            questionText: 'Come se diz "verdura"?',
            options: ['Frutta', 'Verdura', 'Carne', 'Acqua'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'it_q42',
            questionText: 'Qual é a tradução de "biscoito"?',
            options: ['Biscotto', 'Pane', 'Formaggio', 'Carne'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q43',
            questionText: 'Come se diz "leite"?',
            options: ['Acqua', 'Latte', 'Caffè', 'Succo'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'it_q44',
            questionText: 'Qual é a tradução de "chocolate"?',
            options: ['Cioccolato', 'Formaggio', 'Pesce', 'Pane'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q45',
            questionText: 'Come se diz "bolo"?',
            options: ['Torta', 'Pane', 'Frutta', 'Carne'],
            correctAnswerIndex: 0),
      ],
      phraseActivities: [
        PhraseModel(
            id: 'it_p31',
            phraseTemplate: 'Eu bebo água.',
            correctAnswer: 'Io bevo acqua.'),
        PhraseModel(
            id: 'it_p32',
            phraseTemplate: 'Ela come pão.',
            correctAnswer: 'Lei mangia pane.'),
        PhraseModel(
            id: 'it_p33',
            phraseTemplate: 'Nós gostamos de suco.',
            correctAnswer: 'A noi piace il succo.'),
        PhraseModel(
            id: 'it_p34',
            phraseTemplate: 'Eles bebem leite.',
            correctAnswer: 'Loro bevono latte.'),
        PhraseModel(
            id: 'it_p35',
            phraseTemplate: 'Você bebe café?',
            correctAnswer: 'Bevi il caffè?'),
        PhraseModel(
            id: 'it_p36',
            phraseTemplate: 'Eu como carne no almoço.',
            correctAnswer: 'Mangio carne a pranzo.'),
        PhraseModel(
            id: 'it_p37',
            phraseTemplate: 'Ela compra frutas frescas.',
            correctAnswer: 'Lei compra frutta fresca.'),
        PhraseModel(
            id: 'it_p38',
            phraseTemplate: 'Nós cozinhamos arroz.',
            correctAnswer: 'Cuciniamo il riso.'),
        PhraseModel(
            id: 'it_p39',
            phraseTemplate: 'Eles gostam de peixe.',
            correctAnswer: 'A loro piace il pesce.'),
        PhraseModel(
            id: 'it_p40',
            phraseTemplate: 'Você bebe chá?',
            correctAnswer: 'Bevi il tè?'),
        PhraseModel(
            id: 'it_p41',
            phraseTemplate: 'Eu como biscoito.',
            correctAnswer: 'Mangio un biscotto.'),
        PhraseModel(
            id: 'it_p42',
            phraseTemplate: 'Ela bebe chocolate quente.',
            correctAnswer: 'Lei beve la cioccolata calda.'),
        PhraseModel(
            id: 'it_p43',
            phraseTemplate: 'Nós preparamos bolo.',
            correctAnswer: 'Prepariamo una torta.'),
        PhraseModel(
            id: 'it_p44',
            phraseTemplate: 'Eles comem verduras.',
            correctAnswer: 'Loro mangiano verdure.'),
        PhraseModel(
            id: 'it_p45',
            phraseTemplate: 'Você gosta de frutas?',
            correctAnswer: 'Ti piace la frutta?'),
      ],
    ),
    LessonModel(
      id: 'it_lesson_4',
      title: 'Lezione 4: Famiglia e Persone',
      description: 'Impara i nomi dei membri della famiglia e delle persone.',
      xpReward: 20,
      quizQuestions: [
        QuizQuestionModel(
            id: 'it_q46',
            questionText: 'Come se diz "mãe"?',
            options: ['Padre', 'Madre', 'Sorella', 'Fratello'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'it_q47',
            questionText: 'Come se diz "pai"?',
            options: ['Madre', 'Padre', 'Zio', 'Zia'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'it_q48',
            questionText: 'Qual é a tradução de "irmã"?',
            options: ['Sorella', 'Fratello', 'Cugino', 'Amico'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q49',
            questionText: 'Come se diz "tio"?',
            options: ['Zio', 'Zia', 'Cugino', 'Nipote'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q50',
            questionText: 'Qual é a tradução de "amigo"?',
            options: ['Amico', 'Nemico', 'Vicino', 'Professore'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q51',
            questionText: 'Come se diz "irmão"?',
            options: ['Fratello', 'Sorella', 'Cugino', 'Amico'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q52',
            questionText: 'Qual é a tradução de "tia"?',
            options: ['Zia', 'Zio', 'Cugino', 'Nipote'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q53',
            questionText: 'Come se diz "primo"?',
            options: ['Cugino', 'Nipote', 'Vicino', 'Professore'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q54',
            questionText: 'Qual é a tradução de "sobrinho"?',
            options: ['Nipote', 'Cugino', 'Vicino', 'Professore'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q55',
            questionText: 'Come se diz "avó"?',
            options: ['Nonna', 'Nonno', 'Madre', 'Padre'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q56',
            questionText: 'Come se diz "avô"?',
            options: ['Nonno', 'Nonna', 'Zio', 'Zia'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q57',
            questionText: 'Qual é a tradução de "prima"?',
            options: ['Cugina', 'Nipote', 'Vicino', 'Professoressa'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q58',
            questionText: 'Come se diz "filho"?',
            options: ['Figlio', 'Padre', 'Fratello', 'Amico'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q59',
            questionText: 'Qual é a tradução de "filha"?',
            options: ['Figlia', 'Madre', 'Sorella', 'Amica'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q60',
            questionText: 'Come se diz "marido"?',
            options: ['Marito', 'Moglie', 'Amico', 'Vicino'],
            correctAnswerIndex: 0),
      ],
      phraseActivities: [
        PhraseModel(
            id: 'it_p46',
            phraseTemplate: 'Minha mãe é gentil.',
            correctAnswer: 'Mia madre è gentile.'),
        PhraseModel(
            id: 'it_p47',
            phraseTemplate: 'Meu pai trabalha muito.',
            correctAnswer: 'Mio padre lavora molto.'),
        PhraseModel(
            id: 'it_p48',
            phraseTemplate: 'Eu tenho uma irmã.',
            correctAnswer: 'Ho una sorella.'),
        PhraseModel(
            id: 'it_p49',
            phraseTemplate: 'O tio veio nos visitar.',
            correctAnswer: 'Lo zio è venuto a trovarci.'),
        PhraseModel(
            id: 'it_p50',
            phraseTemplate: 'Ela é minha amiga.',
            correctAnswer: 'Lei è la mia amica.'),
        PhraseModel(
            id: 'it_p51',
            phraseTemplate: 'Meu irmão é alto.',
            correctAnswer: 'Mio fratello è alto.'),
        PhraseModel(
            id: 'it_p52',
            phraseTemplate: 'Minha tia cozinha bem.',
            correctAnswer: 'Mia zia cucina bene.'),
        PhraseModel(
            id: 'it_p53',
            phraseTemplate: 'Meu primo é engraçado.',
            correctAnswer: 'Mio cugino è divertente.'),
        PhraseModel(
            id: 'it_p54',
            phraseTemplate: 'Meu sobrinho é jovem.',
            correctAnswer: 'Mio nipote è giovane.'),
        PhraseModel(
            id: 'it_p55',
            phraseTemplate: 'Minha avó é doce.',
            correctAnswer: 'Mia nonna è dolce.'),
        PhraseModel(
            id: 'it_p56',
            phraseTemplate: 'Meu avô é sábio.',
            correctAnswer: 'Mio nonno è saggio.'),
        PhraseModel(
            id: 'it_p57',
            phraseTemplate: 'Minha prima é inteligente.',
            correctAnswer: 'Mia cugina è intelligente.'),
        PhraseModel(
            id: 'it_p58',
            phraseTemplate: 'Meu filho estuda italiano.',
            correctAnswer: 'Mio figlio studia l\'italiano.'),
        PhraseModel(
            id: 'it_p59',
            phraseTemplate: 'Minha filha é alegre.',
            correctAnswer: 'Mia figlia è allegra.'),
        PhraseModel(
            id: 'it_p60',
            phraseTemplate: 'Meu marido trabalha fora.',
            correctAnswer: 'Mio marito lavora fuori.'),
      ],
    ),
    LessonModel(
      id: 'it_lesson_5',
      title: 'Lezione 5: Tempo e Clima',
      description:
          'Impara parole e frasi legate al tempo e al clima in italiano.',
      xpReward: 20,
      quizQuestions: [
        QuizQuestionModel(
            id: 'it_q61',
            questionText: 'Come se diz "sol" em italiano?',
            options: ['Sole', 'Luna', 'Stella', 'Nuvola'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q62',
            questionText: 'Qual é a tradução de "chuva"?',
            options: ['Pioggia', 'Vento', 'Neve', 'Tempesta'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q63',
            questionText: 'Come se diz "neve"?',
            options: ['Neve', 'Ghiaccio', 'Pioggia', 'Nuvola'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q64',
            questionText: 'Qual é a tradução de "vento"?',
            options: ['Vento', 'Sole', 'Neve', 'Tempesta'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q65',
            questionText: 'Come se diz "nuvem"?',
            options: ['Nuvola', 'Cielo', 'Luna', 'Stella'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q66',
            questionText: 'Qual é a tradução de "tempestade"?',
            options: ['Tempesta', 'Pioggia', 'Vento', 'Neve'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q67',
            questionText: 'Come se diz "frio"?',
            options: ['Freddo', 'Caldo', 'Mite', 'Umido'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q68',
            questionText: 'Qual é a tradução de "calor"?',
            options: ['Caldo', 'Freddo', 'Vento', 'Neve'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q69',
            questionText: 'Come se diz "céu"?',
            options: ['Cielo', 'Nuvola', 'Luna', 'Stella'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q70',
            questionText: 'Qual é a tradução de "umidade"?',
            options: ['Umidità', 'Freddo', 'Caldo', 'Pioggia'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q71',
            questionText: 'Come se diz "tempestade elétrica"?',
            options: ['Temporale', 'Pioggia', 'Neve', 'Vento'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q72',
            questionText: 'Qual é a tradução de "nevoeiro"?',
            options: ['Nebbia', 'Nuvola', 'Cielo', 'Tempesta'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q73',
            questionText: 'Come se diz "relâmpago"?',
            options: ['Lampo', 'Tuono', 'Vento', 'Pioggia'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q74',
            questionText: 'Qual é a tradução de "trovão"?',
            options: ['Tuono', 'Lampo', 'Tempesta', 'Neve'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'it_q75',
            questionText: 'Come se diz "garoa"?',
            options: ['Pioggerella', 'Pioggia', 'Neve', 'Vento'],
            correctAnswerIndex: 0),
      ],
      phraseActivities: [
        PhraseModel(
            id: 'it_p61',
            phraseTemplate: 'O sol está brilhando.',
            correctAnswer: 'Il sole sta brillando.'),
        PhraseModel(
            id: 'it_p62',
            phraseTemplate: 'Está chovendo muito.',
            correctAnswer: 'Sta piovendo molto.'),
        PhraseModel(
            id: 'it_p63',
            phraseTemplate: 'A neve cobre as montanhas.',
            correctAnswer: 'La neve copre le montagne.'),
        PhraseModel(
            id: 'it_p64',
            phraseTemplate: 'O vento está forte hoje.',
            correctAnswer: 'Il vento è forte oggi.'),
        PhraseModel(
            id: 'it_p65',
            phraseTemplate: 'As nuvens estão no céu.',
            correctAnswer: 'Le nuvole sono nel cielo.'),
        PhraseModel(
            id: 'it_p66',
            phraseTemplate: 'A tempestade começou à noite.',
            correctAnswer: 'Il temporale è iniziato di notte.'),
        PhraseModel(
            id: 'it_p67',
            phraseTemplate: 'Está muito frio hoje.',
            correctAnswer: 'Fa molto freddo oggi.'),
        PhraseModel(
            id: 'it_p68',
            phraseTemplate: 'O calor é insuportável.',
            correctAnswer: 'Il caldo è insopportabile.'),
        PhraseModel(
            id: 'it_p69',
            phraseTemplate: 'O céu está limpo.',
            correctAnswer: 'Il cielo è sereno.'),
        PhraseModel(
            id: 'it_p70',
            phraseTemplate: 'A umidade está alta.',
            correctAnswer: "L'umidità è alta."),
        PhraseModel(
            id: 'it_p71',
            phraseTemplate: 'A tempestade elétrica assustou todos.',
            correctAnswer: 'Il temporale ha spaventato tutti.'),
        PhraseModel(
            id: 'it_p72',
            phraseTemplate: 'O nevoeiro está denso pela manhã.',
            correctAnswer: 'La nebbia è fitta al mattino.'),
        PhraseModel(
            id: 'it_p73',
            phraseTemplate: 'O relâmpago iluminou o céu.',
            correctAnswer: 'Il lampo ha illuminato il cielo.'),
        PhraseModel(
            id: 'it_p74',
            phraseTemplate: 'O trovão foi muito alto.',
            correctAnswer: 'Il tuono è stato molto forte.'),
        PhraseModel(
            id: 'it_p75',
            phraseTemplate: 'Está caindo garoa fina.',
            correctAnswer: 'Sta cadendo una pioggerella fine.'),
      ],
    ),
  ];
}
