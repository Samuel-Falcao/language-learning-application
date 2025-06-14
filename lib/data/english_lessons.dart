import '../models/lesson_model.dart';
import '../models/quiz_question_model.dart';
import '../models/phrase_model.dart';

List<LessonModel> getEnglishLessonsData() {
  return [
    LessonModel(
      id: 'en_lesson_1',
      title: 'Lesson 1: The Basics',
      description: 'Learn essential greetings, colors, and numbers.',
      xpReward: 15,
      quizQuestions: [
        QuizQuestionModel(
            id: 'en_q1',
            questionText: 'Como se diz "Olá"?',
            options: ['Goodbye', 'Thanks', 'Hello', 'Sorry'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q2',
            questionText: 'Como se diz "Obrigado"?',
            options: ['Please', 'Sorry', 'Thank you', 'Hello'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q3',
            questionText: 'Como se diz "Desculpe"?',
            options: ['Thank you', 'Sorry', 'Excuse', 'Please'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q4',
            questionText: 'Qual é a tradução de "Por favor"?',
            options: ['Thanks', 'Please', 'Excuse me', 'Hello'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q5',
            questionText: 'Como se diz "Tchau"?',
            options: ['Goodbye', 'Hello', 'Please', 'Sorry'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q6',
            questionText: 'Qual é a cor "azul" em inglês?',
            options: ['Blue', 'Green', 'Yellow', 'Red'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q7',
            questionText: 'Qual é a cor "vermelho"?',
            options: ['Red', 'Green', 'Blue', 'Yellow'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q8',
            questionText: 'Como se diz "verde"?',
            options: ['Green', 'Gray', 'Pink', 'Orange'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q9',
            questionText: 'Como se diz "amarelo"?',
            options: ['Yellow', 'Purple', 'White', 'Blue'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q10',
            questionText: 'Qual é a tradução de "um"?',
            options: ['One', 'First', 'Two', 'A'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q11',
            questionText: 'Como se diz "dois"?',
            options: ['Three', 'Second', 'Two', 'To'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q12',
            questionText: 'Como se diz "três"?',
            options: ['Tree', 'Three', 'Third', 'Free'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q13',
            questionText: 'Qual é a cor do céu normalmente?',
            options: ['Blue', 'Red', 'Black', 'Brown'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q14',
            questionText: 'Complete: "Hello" significa...',
            options: ['Tchau', 'Desculpe', 'Olá', 'Por favor'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q15',
            questionText: 'Qual dessas palavras é uma saudação?',
            options: ['Goodbye', 'Hello', 'Sorry', 'Please'],
            correctAnswerIndex: 1),
      ],
      phraseActivities: [
        PhraseModel(id: 'en_p1', phraseTemplate: 'Olá', correctAnswer: 'Hello'),
        PhraseModel(
            id: 'en_p2', phraseTemplate: 'Tchau', correctAnswer: 'Goodbye'),
        PhraseModel(
            id: 'en_p3',
            phraseTemplate: 'Obrigado',
            correctAnswer: 'Thank you'),
        PhraseModel(
            id: 'en_p4', phraseTemplate: 'Desculpe', correctAnswer: 'Sorry'),
        PhraseModel(
            id: 'en_p5', phraseTemplate: 'Por favor', correctAnswer: 'Please'),
        PhraseModel(
            id: 'en_p6',
            phraseTemplate: 'O céu é azul',
            correctAnswer: 'The sky is blue'),
        PhraseModel(
            id: 'en_p7',
            phraseTemplate: 'A grama é verde',
            correctAnswer: 'The grass is green'),
        PhraseModel(
            id: 'en_p8',
            phraseTemplate: 'O sol é amarelo',
            correctAnswer: 'The sun is yellow'),
        PhraseModel(
            id: 'en_p9',
            phraseTemplate: 'Eu sou um',
            correctAnswer: 'I am one'),
        PhraseModel(
            id: 'en_p10',
            phraseTemplate: 'Dois mais um é três',
            correctAnswer: 'Two plus one is three'),
        PhraseModel(
            id: 'en_p11',
            phraseTemplate: 'Três menos um é dois',
            correctAnswer: 'Three minus one is two'),
        PhraseModel(
            id: 'en_p12',
            phraseTemplate: 'Diga olá para seu amigo',
            correctAnswer: 'Say hello to your friend'),
        PhraseModel(
            id: 'en_p13',
            phraseTemplate: 'Sempre diga obrigado',
            correctAnswer: 'Always say thank you'),
        PhraseModel(
            id: 'en_p14',
            phraseTemplate: 'Ele disse por favor',
            correctAnswer: 'He said please'),
        PhraseModel(
            id: 'en_p15',
            phraseTemplate: 'Ela disse desculpe',
            correctAnswer: 'She said sorry'),
      ],
    ),
    LessonModel(
      id: 'en_lesson_2',
      title: 'Lesson 2: Animals',
      description: 'Learn the names of common animals.',
      xpReward: 20,
      quizQuestions: [
        QuizQuestionModel(
            id: 'en_q16',
            questionText: 'Como se diz "gato"?',
            options: ['Cat', 'Dog', 'Bird', 'Fish'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q17',
            questionText: 'Como se diz "cachorro"?',
            options: ['Bird', 'Dog', 'Pig', 'Cat'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q18',
            questionText: 'Qual é a tradução de "pássaro"?',
            options: ['Fish', 'Sheep', 'Bird', 'Horse'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q19',
            questionText: 'Como se diz "peixe"?',
            options: ['Fish', 'Duck', 'Frog', 'Cat'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q20',
            questionText: 'Como se diz "vaca"?',
            options: ['Horse', 'Goat', 'Cow', 'Pig'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q21',
            questionText: 'Como se diz "porco"?',
            options: ['Pig', 'Dog', 'Cat', 'Cow'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q22',
            questionText: 'Como se diz "cavalo"?',
            options: ['Horse', 'Frog', 'Sheep', 'Cow'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q23',
            questionText: 'Qual é a tradução de "ovelha"?',
            options: ['Cow', 'Dog', 'Sheep', 'Cat'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q24',
            questionText: 'Qual desses animais mia?',
            options: ['Dog', 'Cat', 'Bird', 'Cow'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q25',
            questionText: 'Qual desses animais late?',
            options: ['Cat', 'Dog', 'Fish', 'Sheep'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q26',
            questionText: 'Qual desses animais voa?',
            options: ['Fish', 'Bird', 'Pig', 'Cow'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q27',
            questionText: 'Qual desses vive na água?',
            options: ['Bird', 'Dog', 'Fish', 'Horse'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q28',
            questionText: 'Qual animal faz "moo"?',
            options: ['Pig', 'Cow', 'Bird', 'Sheep'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q29',
            questionText: 'Como se diz "pato"?',
            options: ['Duck', 'Dog', 'Horse', 'Frog'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q30',
            questionText: 'Qual é a tradução de "rã"?',
            options: ['Frog', 'Dog', 'Cow', 'Bird'],
            correctAnswerIndex: 0),
      ],
      phraseActivities: [
        PhraseModel(
            id: 'en_p16',
            phraseTemplate: 'O gato está dormindo',
            correctAnswer: 'The cat is sleeping'),
        PhraseModel(
            id: 'en_p17',
            phraseTemplate: 'O cachorro está correndo',
            correctAnswer: 'The dog is running'),
        PhraseModel(
            id: 'en_p18',
            phraseTemplate: 'O pássaro está voando',
            correctAnswer: 'The bird is flying'),
        PhraseModel(
            id: 'en_p19',
            phraseTemplate: 'O peixe está nadando',
            correctAnswer: 'The fish is swimming'),
        PhraseModel(
            id: 'en_p20',
            phraseTemplate: 'A vaca está comendo',
            correctAnswer: 'The cow is eating'),
        PhraseModel(
            id: 'en_p21',
            phraseTemplate: 'O porco está sujo',
            correctAnswer: 'The pig is dirty'),
        PhraseModel(
            id: 'en_p22',
            phraseTemplate: 'O cavalo é rápido',
            correctAnswer: 'The horse is fast'),
        PhraseModel(
            id: 'en_p23',
            phraseTemplate: 'A ovelha é branca',
            correctAnswer: 'The sheep is white'),
        PhraseModel(
            id: 'en_p24',
            phraseTemplate: 'O pato está na água',
            correctAnswer: 'The duck is in the water'),
        PhraseModel(
            id: 'en_p25',
            phraseTemplate: 'A rã é verde',
            correctAnswer: 'The frog is green'),
        PhraseModel(
            id: 'en_p26',
            phraseTemplate: 'O cachorro late',
            correctAnswer: 'The dog barks'),
        PhraseModel(
            id: 'en_p27',
            phraseTemplate: 'O gato mia',
            correctAnswer: 'The cat meows'),
        PhraseModel(
            id: 'en_p28',
            phraseTemplate: 'A vaca faz moo',
            correctAnswer: 'The cow goes moo'),
        PhraseModel(
            id: 'en_p29',
            phraseTemplate: 'O cavalo corre rápido',
            correctAnswer: 'The horse runs fast'),
        PhraseModel(
            id: 'en_p30',
            phraseTemplate: 'O pássaro canta',
            correctAnswer: 'The bird sings'),
      ],
    ),
    LessonModel(
      id: 'en_lesson_3',
      title: 'Lesson 3: Food & Drink',
      description: 'Talk about common foods and drinks.',
      xpReward: 20,
      quizQuestions: [
        QuizQuestionModel(
            id: 'en_q31',
            questionText: 'Como se diz "água"?',
            options: ['Juice', 'Milk', 'Water', 'Coffee'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q32',
            questionText: 'Qual é a tradução de "pão"?',
            options: ['Rice', 'Bread', 'Apple', 'Cheese'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q33',
            questionText: 'Como se diz "leite"?',
            options: ['Milk', 'Water', 'Juice', 'Soda'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q34',
            questionText: 'Como se diz "maçã"?',
            options: ['Banana', 'Apple', 'Orange', 'Pear'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q35',
            questionText: 'Qual é a tradução de "arroz"?',
            options: ['Pasta', 'Rice', 'Bread', 'Meat'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q36',
            questionText: 'Como se diz "queijo"?',
            options: ['Meat', 'Cheese', 'Rice', 'Apple'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q37',
            questionText: 'Como se diz "carne"?',
            options: ['Fish', 'Meat', 'Chicken', 'Egg'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q38',
            questionText: 'Qual é a tradução de "ovo"?',
            options: ['Egg', 'Milk', 'Bread', 'Juice'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q39',
            questionText: 'Como se diz "suco"?',
            options: ['Juice', 'Soda', 'Water', 'Milk'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q40',
            questionText: 'Como se diz "café"?',
            options: ['Tea', 'Juice', 'Coffee', 'Water'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q41',
            questionText: 'Qual é a tradução de "chá"?',
            options: ['Juice', 'Soda', 'Coffee', 'Tea'],
            correctAnswerIndex: 3),
        QuizQuestionModel(
            id: 'en_q42',
            questionText: 'Como se diz "banana"?',
            options: ['Banana', 'Apple', 'Pear', 'Grape'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q43',
            questionText: 'Como se diz "laranja"?',
            options: ['Orange', 'Apple', 'Banana', 'Strawberry'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q44',
            questionText: 'Qual é a tradução de "uva"?',
            options: ['Pear', 'Grape', 'Apple', 'Plum'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q45',
            questionText: 'Como se diz "morango"?',
            options: ['Strawberry', 'Blueberry', 'Raspberry', 'Cherry'],
            correctAnswerIndex: 0),
      ],
      phraseActivities: [
        PhraseModel(
            id: 'en_p31',
            phraseTemplate: 'Eu bebo água',
            correctAnswer: 'I drink water'),
        PhraseModel(
            id: 'en_p32',
            phraseTemplate: 'Ela come pão',
            correctAnswer: 'She eats bread'),
        PhraseModel(
            id: 'en_p33',
            phraseTemplate: 'Nós gostamos de suco',
            correctAnswer: 'We like juice'),
        PhraseModel(
            id: 'en_p34',
            phraseTemplate: 'Eles bebem leite',
            correctAnswer: 'They drink milk'),
        PhraseModel(
            id: 'en_p35',
            phraseTemplate: 'Ele come queijo',
            correctAnswer: 'He eats cheese'),
        PhraseModel(
            id: 'en_p36',
            phraseTemplate: 'Eu como arroz',
            correctAnswer: 'I eat rice'),
        PhraseModel(
            id: 'en_p37',
            phraseTemplate: 'Ela gosta de maçã',
            correctAnswer: 'She likes apple'),
        PhraseModel(
            id: 'en_p38',
            phraseTemplate: 'Nós comemos carne',
            correctAnswer: 'We eat meat'),
        PhraseModel(
            id: 'en_p39',
            phraseTemplate: 'Ele gosta de ovo',
            correctAnswer: 'He likes egg'),
        PhraseModel(
            id: 'en_p40',
            phraseTemplate: 'Você bebe café?',
            correctAnswer: 'Do you drink coffee?'),
        PhraseModel(
            id: 'en_p41',
            phraseTemplate: 'Ela não bebe chá',
            correctAnswer: 'She does not drink tea'),
        PhraseModel(
            id: 'en_p42',
            phraseTemplate: 'Eu gosto de banana',
            correctAnswer: 'I like banana'),
        PhraseModel(
            id: 'en_p43',
            phraseTemplate: 'Ele come laranja',
            correctAnswer: 'He eats orange'),
        PhraseModel(
            id: 'en_p44',
            phraseTemplate: 'Você gosta de uva?',
            correctAnswer: 'Do you like grape?'),
        PhraseModel(
            id: 'en_p45',
            phraseTemplate: 'Eu como morango',
            correctAnswer: 'I eat strawberry'),
      ],
    ),
    LessonModel(
      id: 'en_lesson_4',
      title: 'Lesson 4: Family & People',
      description: 'Learn vocabulary about family members and people.',
      xpReward: 20,
      quizQuestions: [
        QuizQuestionModel(
            id: 'en_q46',
            questionText: 'Como se diz "mãe"?',
            options: ['Father', 'Mother', 'Sister', 'Brother'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q47',
            questionText: 'Como se diz "pai"?',
            options: ['Mother', 'Father', 'Uncle', 'Aunt'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q48',
            questionText: 'Qual é a tradução de "irmã"?',
            options: ['Sister', 'Brother', 'Cousin', 'Friend'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q49',
            questionText: 'Como se diz "irmão"?',
            options: ['Brother', 'Sister', 'Son', 'Daughter'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q50',
            questionText: 'Como se diz "tio"?',
            options: ['Uncle', 'Aunt', 'Cousin', 'Nephew'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q51',
            questionText: 'Como se diz "tia"?',
            options: ['Aunt', 'Uncle', 'Niece', 'Cousin'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q52',
            questionText: 'Qual é a tradução de "primo"?',
            options: ['Cousin', 'Nephew', 'Niece', 'Friend'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q53',
            questionText: 'Como se diz "filho"?',
            options: ['Son', 'Daughter', 'Brother', 'Sister'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q54',
            questionText: 'Como se diz "filha"?',
            options: ['Son', 'Daughter', 'Mother', 'Father'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q55',
            questionText: 'Qual é a tradução de "amigo"?',
            options: ['Friend', 'Enemy', 'Neighbor', 'Teacher'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q56',
            questionText: 'Como se diz "vizinho"?',
            options: ['Neighbor', 'Friend', 'Teacher', 'Stranger'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q57',
            questionText: 'Qual é a tradução de "professor"?',
            options: ['Student', 'Teacher', 'Friend', 'Neighbor'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q58',
            questionText: 'Como se diz "aluno"?',
            options: ['Teacher', 'Student', 'Friend', 'Neighbor'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q59',
            questionText: 'Qual é a tradução de "estranho"?',
            options: ['Friend', 'Neighbor', 'Stranger', 'Teacher'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q60',
            questionText: 'Como se diz "mulher"?',
            options: ['Woman', 'Man', 'Girl', 'Boy'],
            correctAnswerIndex: 0),
      ],
      phraseActivities: [
        PhraseModel(
            id: 'en_p46',
            phraseTemplate: 'Minha mãe é gentil',
            correctAnswer: 'My mother is kind'),
        PhraseModel(
            id: 'en_p47',
            phraseTemplate: 'Meu pai trabalha muito',
            correctAnswer: 'My father works hard'),
        PhraseModel(
            id: 'en_p48',
            phraseTemplate: 'Ela tem duas irmãs',
            correctAnswer: 'She has two sisters'),
        PhraseModel(
            id: 'en_p49',
            phraseTemplate: 'Ele é meu irmão',
            correctAnswer: 'He is my brother'),
        PhraseModel(
            id: 'en_p50',
            phraseTemplate: 'O tio veio nos visitar',
            correctAnswer: 'The uncle came to visit us'),
        PhraseModel(
            id: 'en_p51',
            phraseTemplate: 'Minha tia mora perto',
            correctAnswer: 'My aunt lives nearby'),
        PhraseModel(
            id: 'en_p52',
            phraseTemplate: 'Eu tenho um primo',
            correctAnswer: 'I have a cousin'),
        PhraseModel(
            id: 'en_p53',
            phraseTemplate: 'O filho está brincando',
            correctAnswer: 'The son is playing'),
        PhraseModel(
            id: 'en_p54',
            phraseTemplate: 'Minha filha é inteligente',
            correctAnswer: 'My daughter is smart'),
        PhraseModel(
            id: 'en_p55',
            phraseTemplate: 'Ela é minha amiga',
            correctAnswer: 'She is my friend'),
        PhraseModel(
            id: 'en_p56',
            phraseTemplate: 'O vizinho é amigável',
            correctAnswer: 'The neighbor is friendly'),
        PhraseModel(
            id: 'en_p57',
            phraseTemplate: 'Ele é um bom professor',
            correctAnswer: 'He is a good teacher'),
        PhraseModel(
            id: 'en_p58',
            phraseTemplate: 'Eu sou um aluno',
            correctAnswer: 'I am a student'),
        PhraseModel(
            id: 'en_p59',
            phraseTemplate: 'O estranho está perdido',
            correctAnswer: 'The stranger is lost'),
        PhraseModel(
            id: 'en_p60',
            phraseTemplate: 'Ela é uma mulher forte',
            correctAnswer: 'She is a strong woman'),
      ],
    ),
    LessonModel(
      id: 'en_lesson_5',
      title: 'Lesson 5: Daily Routine',
      description: 'Learn common actions and routines of the day.',
      xpReward: 20,
      quizQuestions: [
        QuizQuestionModel(
            id: 'en_q61',
            questionText: 'Como se diz "acordar"?',
            options: ['Wake up', 'Sleep', 'Eat', 'Run'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q62',
            questionText: 'Qual é a tradução de "tomar banho"?',
            options: ['Take a shower', 'Brush teeth', 'Wake up', 'Go to sleep'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q63',
            questionText: 'Como se diz "escovar os dentes"?',
            options: ['Sleep', 'Wash hands', 'Brush teeth', 'Take a bath'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q64',
            questionText: 'Como se diz "tomar café da manhã"?',
            options: ['Have lunch', 'Have dinner', 'Have breakfast', 'Sleep'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q65',
            questionText: 'Qual é a tradução de "almoçar"?',
            options: [
              'Have lunch',
              'Have breakfast',
              'Eat dinner',
              'Drink coffee'
            ],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q66',
            questionText: 'Como se diz "jantar"?',
            options: [
              'Have lunch',
              'Have dinner',
              'Eat breakfast',
              'Go to work'
            ],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q67',
            questionText: 'Como se diz "ir ao trabalho"?',
            options: ['Go to school', 'Stay home', 'Go to work', 'Walk dog'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q68',
            questionText: 'Qual é a tradução de "voltar para casa"?',
            options: ['Go to sleep', 'Come home', 'Leave home', 'Wake up'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q69',
            questionText: 'Como se diz "assistir TV"?',
            options: ['Watch TV', 'Play games', 'Use phone', 'Read book'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q70',
            questionText: 'Como se diz "ler um livro"?',
            options: ['Watch TV', 'Read a book', 'Write a text', 'Use phone'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q71',
            questionText: 'Qual é a tradução de "fazer exercício"?',
            options: ['Exercise', 'Sleep', 'Eat', 'Study'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q72',
            questionText: 'Como se diz "estudar"?',
            options: ['Play', 'Work', 'Study', 'Sing'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q73',
            questionText: 'Como se diz "cozinhar"?',
            options: ['Clean', 'Cook', 'Drive', 'Eat'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q74',
            questionText: 'Qual é a tradução de "lavar a louça"?',
            options: [
              'Wash clothes',
              'Brush teeth',
              'Wash dishes',
              'Take a shower'
            ],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q75',
            questionText: 'Como se diz "dormir"?',
            options: ['Sleep', 'Wake up', 'Eat', 'Rest'],
            correctAnswerIndex: 0),
      ],
      phraseActivities: [
        PhraseModel(
            id: 'en_p61',
            phraseTemplate: 'Eu acordo às sete horas',
            correctAnswer: 'I wake up at seven o\'clock'),
        PhraseModel(
            id: 'en_p62',
            phraseTemplate: 'Ela escova os dentes',
            correctAnswer: 'She brushes her teeth'),
        PhraseModel(
            id: 'en_p63',
            phraseTemplate: 'Tomamos café da manhã juntos',
            correctAnswer: 'We have breakfast together'),
        PhraseModel(
            id: 'en_p64',
            phraseTemplate: 'Ele vai ao trabalho às nove',
            correctAnswer: 'He goes to work at nine'),
        PhraseModel(
            id: 'en_p65',
            phraseTemplate: 'Eu almoço ao meio-dia',
            correctAnswer: 'I have lunch at noon'),
        PhraseModel(
            id: 'en_p66',
            phraseTemplate: 'Eles voltam para casa à noite',
            correctAnswer: 'They come home at night'),
        PhraseModel(
            id: 'en_p67',
            phraseTemplate: 'Nós assistimos TV depois do jantar',
            correctAnswer: 'We watch TV after dinner'),
        PhraseModel(
            id: 'en_p68',
            phraseTemplate: 'Ele lê um livro toda noite',
            correctAnswer: 'He reads a book every night'),
        PhraseModel(
            id: 'en_p69',
            phraseTemplate: 'Eu estudo à tarde',
            correctAnswer: 'I study in the afternoon'),
        PhraseModel(
            id: 'en_p70',
            phraseTemplate: 'Ela cozinha o jantar para a família',
            correctAnswer: 'She cooks dinner for her family'),
        PhraseModel(
            id: 'en_p71',
            phraseTemplate: 'Eu faço exercícios de manhã',
            correctAnswer: 'I exercise in the morning'),
        PhraseModel(
            id: 'en_p72',
            phraseTemplate: 'Eles lavam a louça juntos',
            correctAnswer: 'They wash the dishes together'),
        PhraseModel(
            id: 'en_p73',
            phraseTemplate: 'Nós dormimos às dez',
            correctAnswer: 'We sleep at ten'),
        PhraseModel(
            id: 'en_p74',
            phraseTemplate: 'Ela toma banho antes do trabalho',
            correctAnswer: 'She takes a shower before work'),
        PhraseModel(
            id: 'en_p75',
            phraseTemplate: 'Eu leio um livro antes de dormir',
            correctAnswer: 'I read a book before sleeping'),
      ],
    ),
    LessonModel(
      id: 'en_lesson_6',
      title: 'Lesson 6: Places in the City',
      description: 'Learn names of common places and locations in the city.',
      xpReward: 20,
      quizQuestions: [
        QuizQuestionModel(
            id: 'en_q76',
            questionText: 'Como se diz "mercado"?',
            options: ['Market', 'School', 'Bank', 'Library'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q77',
            questionText: 'Qual é a tradução de "escola"?',
            options: ['Bank', 'School', 'Hospital', 'Park'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q78',
            questionText: 'Como se diz "hospital"?',
            options: ['Police station', 'Library', 'Hospital', 'Store'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q79',
            questionText: 'Como se diz "igreja"?',
            options: ['Bank', 'Church', 'School', 'Restaurant'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q80',
            questionText: 'Qual é a tradução de "parque"?',
            options: ['Park', 'Playground', 'Street', 'Airport'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q81',
            questionText: 'Como se diz "biblioteca"?',
            options: ['Library', 'Museum', 'Hospital', 'Shop'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q82',
            questionText: 'Como se diz "restaurante"?',
            options: ['Shop', 'Restaurant', 'Bar', 'Market'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q83',
            questionText: 'Qual é a tradução de "loja"?',
            options: ['Shop', 'Restaurant', 'Park', 'Bank'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q84',
            questionText: 'Como se diz "banco"?',
            options: ['Library', 'Bank', 'Church', 'School'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q85',
            questionText: 'Como se diz "delegacia"?',
            options: [
              'Hospital',
              'Fire station',
              'Police station',
              'City hall'
            ],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q86',
            questionText: 'Qual é a tradução de "aeroporto"?',
            options: ['Train station', 'Airport', 'Bus stop', 'Park'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q87',
            questionText: 'Como se diz "farmácia"?',
            options: ['Pharmacy', 'Hospital', 'Clinic', 'School'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q88',
            questionText: 'Como se diz "museu"?',
            options: ['Museum', 'Gallery', 'Church', 'Shop'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q89',
            questionText: 'Qual é a tradução de "praça"?',
            options: ['Square', 'Park', 'Street', 'Sidewalk'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q90',
            questionText: 'Como se diz "cinema"?',
            options: ['Cinema', 'Theater', 'Museum', 'Library'],
            correctAnswerIndex: 0),
      ],
      phraseActivities: [
        PhraseModel(
            id: 'en_p76',
            phraseTemplate: 'Eu vou ao mercado de manhã',
            correctAnswer: 'I go to the market in the morning'),
        PhraseModel(
            id: 'en_p77',
            phraseTemplate: 'Ela estuda na escola',
            correctAnswer: 'She studies at school'),
        PhraseModel(
            id: 'en_p78',
            phraseTemplate: 'Nós vamos ao hospital',
            correctAnswer: 'We go to the hospital'),
        PhraseModel(
            id: 'en_p79',
            phraseTemplate: 'Eles estão na igreja',
            correctAnswer: 'They are in the church'),
        PhraseModel(
            id: 'en_p80',
            phraseTemplate: 'Vamos brincar no parque',
            correctAnswer: 'Let\'s play in the park'),
        PhraseModel(
            id: 'en_p81',
            phraseTemplate: 'Ela lê livros na biblioteca',
            correctAnswer: 'She reads books in the library'),
        PhraseModel(
            id: 'en_p82',
            phraseTemplate: 'Nós jantamos no restaurante',
            correctAnswer: 'We have dinner at the restaurant'),
        PhraseModel(
            id: 'en_p83',
            phraseTemplate: 'Ele trabalha na loja',
            correctAnswer: 'He works at the shop'),
        PhraseModel(
            id: 'en_p84',
            phraseTemplate: 'Eu preciso ir ao banco',
            correctAnswer: 'I need to go to the bank'),
        PhraseModel(
            id: 'en_p85',
            phraseTemplate: 'A delegacia está perto',
            correctAnswer: 'The police station is near'),
        PhraseModel(
            id: 'en_p86',
            phraseTemplate: 'Vamos ao aeroporto amanhã',
            correctAnswer: 'We go to the airport tomorrow'),
        PhraseModel(
            id: 'en_p87',
            phraseTemplate: 'Ele compra remédio na farmácia',
            correctAnswer: 'He buys medicine at the pharmacy'),
        PhraseModel(
            id: 'en_p88',
            phraseTemplate: 'O museu abre às nove horas',
            correctAnswer: 'The museum opens at nine o\'clock'),
        PhraseModel(
            id: 'en_p89',
            phraseTemplate: 'Há um show na praça',
            correctAnswer: 'There is a concert in the square'),
        PhraseModel(
            id: 'en_p90',
            phraseTemplate: 'Vamos ao cinema hoje?',
            correctAnswer: 'Shall we go to the cinema today?'),
      ],
    ),
    LessonModel(
      id: 'en_lesson_7',
      title: 'Lesson 7: Clothes & Accessories',
      description: 'Learn the names of clothes and accessories.',
      xpReward: 20,
      quizQuestions: [
        QuizQuestionModel(
            id: 'en_q91',
            questionText: 'Como se diz "camisa"?',
            options: ['Shirt', 'Pants', 'Dress', 'Shoes'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q92',
            questionText: 'Qual é a tradução de "calça"?',
            options: ['Skirt', 'Pants', 'Shorts', 'Hat'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q93',
            questionText: 'Como se diz "vestido"?',
            options: ['Dress', 'Shirt', 'Shoes', 'Cap'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q94',
            questionText: 'Como se diz "sapatos"?',
            options: ['Boots', 'Socks', 'Shoes', 'Gloves'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q95',
            questionText: 'Qual é a tradução de "meias"?',
            options: ['Shirt', 'Socks', 'Shoes', 'Pants'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q96',
            questionText: 'Como se diz "saia"?',
            options: ['Skirt', 'Shorts', 'T-shirt', 'Dress'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q97',
            questionText: 'Como se diz "jaqueta"?',
            options: ['Shirt', 'Sweater', 'Jacket', 'Coat'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q98',
            questionText: 'Qual é a tradução de "chapéu"?',
            options: ['Hat', 'Cap', 'Hood', 'Scarf'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q99',
            questionText: 'Como se diz "óculos"?',
            options: ['Glasses', 'Watch', 'Ring', 'Shoes'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q100',
            questionText: 'Como se diz "anel"?',
            options: ['Necklace', 'Ring', 'Bracelet', 'Glasses'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q101',
            questionText: 'Qual é a tradução de "relógio"?',
            options: ['Watch', 'Glasses', 'Shoes', 'Hat'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q102',
            questionText: 'Como se diz "bolsa"?',
            options: ['Bag', 'Purse', 'Wallet', 'Backpack'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q103',
            questionText: 'Como se diz "mochila"?',
            options: ['Bag', 'Backpack', 'Purse', 'Wallet'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q104',
            questionText: 'Qual é a tradução de "cachecol"?',
            options: ['Scarf', 'Jacket', 'Coat', 'Sweater'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q105',
            questionText: 'Como se diz "luvas"?',
            options: ['Shoes', 'Gloves', 'Socks', 'Ring'],
            correctAnswerIndex: 1),
      ],
      phraseActivities: [
        PhraseModel(
            id: 'en_p91',
            phraseTemplate: 'Eu estou usando uma camisa branca',
            correctAnswer: 'I am wearing a white shirt'),
        PhraseModel(
            id: 'en_p92',
            phraseTemplate: 'Ela está usando um vestido vermelho',
            correctAnswer: 'She is wearing a red dress'),
        PhraseModel(
            id: 'en_p93',
            phraseTemplate: 'Ele tem um chapéu azul',
            correctAnswer: 'He has a blue hat'),
        PhraseModel(
            id: 'en_p94',
            phraseTemplate: 'Eles estão usando sapatos pretos',
            correctAnswer: 'They are wearing black shoes'),
        PhraseModel(
            id: 'en_p95',
            phraseTemplate: 'Minha mochila é nova',
            correctAnswer: 'My backpack is new'),
        PhraseModel(
            id: 'en_p96',
            phraseTemplate: 'Ela tem um anel de ouro',
            correctAnswer: 'She has a gold ring'),
        PhraseModel(
            id: 'en_p97',
            phraseTemplate: 'Eu preciso de um casaco para o frio',
            correctAnswer: 'I need a coat for the cold'),
        PhraseModel(
            id: 'en_p98',
            phraseTemplate: 'Ele usa um relógio todo dia',
            correctAnswer: 'He wears a watch every day'),
        PhraseModel(
            id: 'en_p99',
            phraseTemplate: 'Você tem um cachecol?',
            correctAnswer: 'Do you have a scarf?'),
        PhraseModel(
            id: 'en_p100',
            phraseTemplate: 'Ela esqueceu a bolsa dela',
            correctAnswer: 'She forgot her purse'),
        PhraseModel(
            id: 'en_p101',
            phraseTemplate: 'Minhas luvas estão no bolso',
            correctAnswer: 'My gloves are in the pocket'),
        PhraseModel(
            id: 'en_p102',
            phraseTemplate: 'Ele usa óculos para ler',
            correctAnswer: 'He wears glasses to read'),
        PhraseModel(
            id: 'en_p103',
            phraseTemplate: 'Estou usando meias vermelhas',
            correctAnswer: 'I am wearing red socks'),
        PhraseModel(
            id: 'en_p104',
            phraseTemplate: 'Ela colocou a jaqueta dela',
            correctAnswer: 'She put on her jacket'),
        PhraseModel(
            id: 'en_p105',
            phraseTemplate: 'Ele comprou uma nova calça',
            correctAnswer: 'He bought new pants'),
      ],
    ),
    LessonModel(
      id: 'en_lesson_8',
      title: 'Lesson 8: At Home',
      description: 'Learn vocabulary about rooms and objects in the house.',
      xpReward: 20,
      quizQuestions: [
        QuizQuestionModel(
            id: 'en_q106',
            questionText: 'Como se diz "cozinha"?',
            options: ['Kitchen', 'Bedroom', 'Bathroom', 'Living room'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q107',
            questionText: 'Qual é a tradução de "sala de estar"?',
            options: ['Living room', 'Dining room', 'Office', 'Hall'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q108',
            questionText: 'Como se diz "quarto"?',
            options: ['Garage', 'Bedroom', 'Basement', 'Attic'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q109',
            questionText: 'Como se diz "banheiro"?',
            options: ['Kitchen', 'Bathroom', 'Bedroom', 'Closet'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q110',
            questionText: 'Qual é a tradução de "mesa"?',
            options: ['Table', 'Chair', 'Sofa', 'Bed'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q111',
            questionText: 'Como se diz "cadeira"?',
            options: ['Bed', 'Chair', 'Desk', 'Lamp'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q112',
            questionText: 'Como se diz "sofá"?',
            options: ['Stove', 'Sofa', 'Oven', 'Fridge'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q113',
            questionText: 'Qual é a tradução de "geladeira"?',
            options: ['Microwave', 'Oven', 'Fridge', 'Dishwasher'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q114',
            questionText: 'Como se diz "fogão"?',
            options: ['Oven', 'Fridge', 'Stove', 'Toaster'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q115',
            questionText: 'Como se diz "cama"?',
            options: ['Sofa', 'Chair', 'Bed', 'Rug'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q116',
            questionText: 'Qual é a tradução de "guarda-roupa"?',
            options: ['Closet', 'Drawer', 'Desk', 'Table'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q117',
            questionText: 'Como se diz "lâmpada"?',
            options: ['Lamp', 'Light', 'Fan', 'Bulb'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q118',
            questionText: 'Como se diz "banheira"?',
            options: ['Sink', 'Bathtub', 'Toilet', 'Shower'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q119',
            questionText: 'Qual é a tradução de "espelho"?',
            options: ['Mirror', 'Window', 'Wall', 'Curtain'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q120',
            questionText: 'Como se diz "tapete"?',
            options: ['Rug', 'Floor', 'Mat', 'Chair'],
            correctAnswerIndex: 0),
      ],
      phraseActivities: [
        PhraseModel(
            id: 'en_p106',
            phraseTemplate: 'A cozinha está limpa',
            correctAnswer: 'The kitchen is clean'),
        PhraseModel(
            id: 'en_p107',
            phraseTemplate: 'Ele está no banheiro',
            correctAnswer: 'He is in the bathroom'),
        PhraseModel(
            id: 'en_p108',
            phraseTemplate: 'Eu estou na sala de estar',
            correctAnswer: 'I am in the living room'),
        PhraseModel(
            id: 'en_p109',
            phraseTemplate: 'Ela dorme no quarto',
            correctAnswer: 'She sleeps in the bedroom'),
        PhraseModel(
            id: 'en_p110',
            phraseTemplate: 'Tem uma cadeira nova aqui',
            correctAnswer: 'There is a new chair here'),
        PhraseModel(
            id: 'en_p111',
            phraseTemplate: 'A geladeira está cheia',
            correctAnswer: 'The fridge is full'),
        PhraseModel(
            id: 'en_p112',
            phraseTemplate: 'Eu preciso de uma mesa maior',
            correctAnswer: 'I need a bigger table'),
        PhraseModel(
            id: 'en_p113',
            phraseTemplate: 'Ela ligou a lâmpada',
            correctAnswer: 'She turned on the lamp'),
        PhraseModel(
            id: 'en_p114',
            phraseTemplate: 'Vamos assistir TV no sofá',
            correctAnswer: 'Let’s watch TV on the sofa'),
        PhraseModel(
            id: 'en_p115',
            phraseTemplate: 'Há um espelho no corredor',
            correctAnswer: 'There is a mirror in the hall'),
        PhraseModel(
            id: 'en_p116',
            phraseTemplate: 'Meu quarto tem um tapete vermelho',
            correctAnswer: 'My room has a red rug'),
        PhraseModel(
            id: 'en_p117',
            phraseTemplate: 'Ela está limpando a banheira',
            correctAnswer: 'She is cleaning the bathtub'),
        PhraseModel(
            id: 'en_p118',
            phraseTemplate: 'Eu deixei o casaco no guarda-roupa',
            correctAnswer: 'I left the coat in the closet'),
        PhraseModel(
            id: 'en_p119',
            phraseTemplate: 'Ele abriu o guarda-roupa',
            correctAnswer: 'He opened the closet'),
        PhraseModel(
            id: 'en_p120',
            phraseTemplate: 'A cama está arrumada',
            correctAnswer: 'The bed is made'),
      ],
    ),
    LessonModel(
      id: 'en_lesson_9',
      title: 'Lesson 9: Transportation',
      description: 'Learn common vehicles and how to talk about transport.',
      xpReward: 20,
      quizQuestions: [
        QuizQuestionModel(
            id: 'en_q121',
            questionText: 'Como se diz "carro"?',
            options: ['Bike', 'Bus', 'Train', 'Car'],
            correctAnswerIndex: 3),
        QuizQuestionModel(
            id: 'en_q122',
            questionText: 'Qual é a tradução de "ônibus"?',
            options: ['Plane', 'Bus', 'Boat', 'Taxi'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q123',
            questionText: 'Como se diz "bicicleta"?',
            options: ['Car', 'Bike', 'Train', 'Truck'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q124',
            questionText: 'Como se diz "avião"?',
            options: ['Boat', 'Plane', 'Car', 'Subway'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q125',
            questionText: 'Qual é a tradução de "trem"?',
            options: ['Train', 'Truck', 'Taxi', 'Scooter'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q126',
            questionText: 'Como se diz "navio"?',
            options: ['Subway', 'Ship', 'Car', 'Plane'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q127',
            questionText: 'Como se diz "metrô"?',
            options: ['Subway', 'Train', 'Bus', 'Bike'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q128',
            questionText: 'Qual é a tradução de "caminhão"?',
            options: ['Taxi', 'Truck', 'Car', 'Van'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q129',
            questionText: 'Como se diz "motocicleta"?',
            options: ['Scooter', 'Bike', 'Motorcycle', 'Truck'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q130',
            questionText: 'Como se diz "táxi"?',
            options: ['Taxi', 'Bus', 'Car', 'Train'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q131',
            questionText: 'Qual é a tradução de "parada de ônibus"?',
            options: ['Station', 'Bus stop', 'Subway', 'Terminal'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q132',
            questionText: 'Como se diz "estação de trem"?',
            options: ['Airport', 'Bus stop', 'Train station', 'Garage'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q133',
            questionText: 'Como se diz "garagem"?',
            options: ['Garage', 'Parking', 'Terminal', 'Station'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q134',
            questionText: 'Qual é a tradução de "volante"?',
            options: ['Seat', 'Steering wheel', 'Door', 'Brake'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q135',
            questionText: 'Como se diz "aeroporto"?',
            options: ['Station', 'Airport', 'Terminal', 'Garage'],
            correctAnswerIndex: 1),
      ],
      phraseActivities: [
        PhraseModel(
            id: 'en_p121',
            phraseTemplate: 'Eu vou de carro para o trabalho',
            correctAnswer: 'I go to work by car'),
        PhraseModel(
            id: 'en_p122',
            phraseTemplate: 'Ela pega o ônibus todo dia',
            correctAnswer: 'She takes the bus every day'),
        PhraseModel(
            id: 'en_p123',
            phraseTemplate: 'Nós pegamos o trem às 7',
            correctAnswer: 'We take the train at 7'),
        PhraseModel(
            id: 'en_p124',
            phraseTemplate: 'Ele viaja de avião',
            correctAnswer: 'He travels by plane'),
        PhraseModel(
            id: 'en_p125',
            phraseTemplate: 'Eles estão esperando na parada de ônibus',
            correctAnswer: 'They are waiting at the bus stop'),
        PhraseModel(
            id: 'en_p126',
            phraseTemplate: 'Onde fica a estação de metrô?',
            correctAnswer: 'Where is the subway station?'),
        PhraseModel(
            id: 'en_p127',
            phraseTemplate: 'O aeroporto é longe daqui',
            correctAnswer: 'The airport is far from here'),
        PhraseModel(
            id: 'en_p128',
            phraseTemplate: 'Eu gosto de andar de bicicleta',
            correctAnswer: 'I like to ride a bike'),
        PhraseModel(
            id: 'en_p129',
            phraseTemplate: 'Ele tem uma nova motocicleta',
            correctAnswer: 'He has a new motorcycle'),
        PhraseModel(
            id: 'en_p130',
            phraseTemplate: 'Nós entramos no táxi',
            correctAnswer: 'We got in the taxi'),
        PhraseModel(
            id: 'en_p131',
            phraseTemplate: 'O caminhão é grande',
            correctAnswer: 'The truck is big'),
        PhraseModel(
            id: 'en_p132',
            phraseTemplate: 'A garagem está cheia',
            correctAnswer: 'The garage is full'),
        PhraseModel(
            id: 'en_p133',
            phraseTemplate: 'Você dirige um carro?',
            correctAnswer: 'Do you drive a car?'),
        PhraseModel(
            id: 'en_p134',
            phraseTemplate: 'A estação de trem está aberta',
            correctAnswer: 'The train station is open'),
        PhraseModel(
            id: 'en_p135',
            phraseTemplate: 'Eu preciso de um mapa do metrô',
            correctAnswer: 'I need a subway map'),
      ],
    ),
    LessonModel(
      id: 'en_lesson_10',
      title: 'Lesson 10: Feelings & Emotions',
      description: 'Learn how to express feelings and emotions.',
      xpReward: 20,
      quizQuestions: [
        QuizQuestionModel(
            id: 'en_q136',
            questionText: 'Como se diz "feliz"?',
            options: ['Sad', 'Angry', 'Happy', 'Tired'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q137',
            questionText: 'Qual é a tradução de "triste"?',
            options: ['Happy', 'Sad', 'Excited', 'Calm'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q138',
            questionText: 'Como se diz "nervoso"?',
            options: ['Nervous', 'Excited', 'Bored', 'Angry'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q139',
            questionText: 'Como se diz "cansado"?',
            options: ['Calm', 'Tired', 'Angry', 'Sad'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q140',
            questionText: 'Qual é a tradução de "com medo"?',
            options: ['Excited', 'Afraid', 'Happy', 'Angry'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q141',
            questionText: 'Como se diz "entediado"?',
            options: ['Bored', 'Excited', 'Nervous', 'Sad'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q142',
            questionText: 'Como se diz "animado"?',
            options: ['Excited', 'Afraid', 'Angry', 'Tired'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q143',
            questionText: 'Qual é a tradução de "zangado"?',
            options: ['Calm', 'Happy', 'Angry', 'Tired'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'en_q144',
            questionText: 'Como se diz "calmo"?',
            options: ['Nervous', 'Excited', 'Sad', 'Calm'],
            correctAnswerIndex: 3),
        QuizQuestionModel(
            id: 'en_q145',
            questionText: 'Como se diz "preocupado"?',
            options: ['Tired', 'Worried', 'Bored', 'Happy'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q146',
            questionText: 'Qual é a tradução de "envergonhado"?',
            options: ['Embarrassed', 'Angry', 'Happy', 'Bored'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'en_q147',
            questionText: 'Como se diz "com ciúmes"?',
            options: ['Happy', 'Jealous', 'Tired', 'Excited'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q148',
            questionText: 'Como se diz "orgulhoso"?',
            options: ['Embarrassed', 'Proud', 'Angry', 'Nervous'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q149',
            questionText: 'Qual é a tradução de "surpreso"?',
            options: ['Sad', 'Surprised', 'Afraid', 'Worried'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'en_q150',
            questionText: 'Como se diz "com fome"?',
            options: ['Hungry', 'Tired', 'Happy', 'Bored'],
            correctAnswerIndex: 0),
      ],
      phraseActivities: [
        PhraseModel(
            id: 'en_p136',
            phraseTemplate: 'Eu estou muito feliz hoje',
            correctAnswer: 'I am very happy today'),
        PhraseModel(
            id: 'en_p137',
            phraseTemplate: 'Ela está se sentindo triste',
            correctAnswer: 'She is feeling sad'),
        PhraseModel(
            id: 'en_p138',
            phraseTemplate: 'Ele está nervoso com a prova',
            correctAnswer: 'He is nervous about the test'),
        PhraseModel(
            id: 'en_p139',
            phraseTemplate: 'Nós estamos cansados',
            correctAnswer: 'We are tired'),
        PhraseModel(
            id: 'en_p140',
            phraseTemplate: 'Eles estão com medo do escuro',
            correctAnswer: 'They are afraid of the dark'),
        PhraseModel(
            id: 'en_p141',
            phraseTemplate: 'Estou tão entediado agora',
            correctAnswer: 'I’m so bored right now'),
        PhraseModel(
            id: 'en_p142',
            phraseTemplate: 'Ela está muito animada',
            correctAnswer: 'She is very excited'),
        PhraseModel(
            id: 'en_p143',
            phraseTemplate: 'Ele está zangado com o erro',
            correctAnswer: 'He is angry about the mistake'),
        PhraseModel(
            id: 'en_p144',
            phraseTemplate: 'Eu me sinto calmo aqui',
            correctAnswer: 'I feel calm here'),
        PhraseModel(
            id: 'en_p145',
            phraseTemplate: 'Estamos preocupados com ela',
            correctAnswer: 'We are worried about her'),
        PhraseModel(
            id: 'en_p146',
            phraseTemplate: 'Ela ficou envergonhada na festa',
            correctAnswer: 'She felt embarrassed at the party'),
        PhraseModel(
            id: 'en_p147',
            phraseTemplate: 'Estou com ciúmes do novo carro dele',
            correctAnswer: 'I am jealous of his new car'),
        PhraseModel(
            id: 'en_p148',
            phraseTemplate: 'Ele está orgulhoso do time dele',
            correctAnswer: 'He is proud of his team'),
        PhraseModel(
            id: 'en_p149',
            phraseTemplate: 'Ficamos surpresos com a notícia',
            correctAnswer: 'We were surprised by the news'),
        PhraseModel(
            id: 'en_p150',
            phraseTemplate: 'Eles estão com muita fome',
            correctAnswer: 'They are very hungry'),
      ],
    ),
  ];
}
