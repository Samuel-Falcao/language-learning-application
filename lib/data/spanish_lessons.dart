import '../models/lesson_model.dart';
import '../models/quiz_question_model.dart';
import '../models/phrase_model.dart';

List<LessonModel> getSpanishLessonsData() {
  return [
    LessonModel(
      id: 'es_lesson_1',
      title: 'Lección 1: O Básico',
      description: 'Aprenda saudações, cores e números essenciais.',
      xpReward: 15,
      quizQuestions: [
        QuizQuestionModel(
            id: 'es_q1',
            questionText: 'Como se diz "Olá"?',
            options: ['Adiós', 'Gracias', 'Hola', 'Perdón'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'es_q2',
            questionText: 'Como se diz "Obrigado"?',
            options: ['Por favor', 'Perdón', 'Gracias', 'Hola'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'es_q3',
            questionText: 'Como se diz "Desculpe"?',
            options: ['Gracias', 'Perdón', 'Disculpa', 'Por favor'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'es_q4',
            questionText: 'Qual é a tradução de "Por favor"?',
            options: ['Gracias', 'Por favor', 'Perdón', 'Hola'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'es_q5',
            questionText: 'Como se diz "Tchau"?',
            options: ['Adiós', 'Hola', 'Por favor', 'Perdón'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q6',
            questionText: 'Qual é a cor "azul" em espanhol?',
            options: ['Azul', 'Verde', 'Amarillo', 'Rojo'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q7',
            questionText: 'Qual é a cor "vermelho"?',
            options: ['Rojo', 'Verde', 'Azul', 'Amarillo'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q8',
            questionText: 'Como se diz "verde"?',
            options: ['Verde', 'Gris', 'Rosa', 'Naranja'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q9',
            questionText: 'Como se diz "amarelo"?',
            options: ['Amarillo', 'Morado', 'Blanco', 'Azul'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q10',
            questionText: 'Qual é a tradução de "um"?',
            options: ['Uno', 'Primero', 'Dos', 'Un'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q11',
            questionText: 'Como se diz "dois"?',
            options: ['Dos', 'Uno', 'Tres', 'Cuatro'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q12',
            questionText: 'Como se diz "três"?',
            options: ['Uno', 'Dos', 'Tres', 'Cuatro'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'es_q13',
            questionText: 'Como se diz "quatro"?',
            options: ['Uno', 'Dos', 'Tres', 'Cuatro'],
            correctAnswerIndex: 3),
        QuizQuestionModel(
            id: 'es_q14',
            questionText: 'Como se diz "cinco"?',
            options: ['Cinco', 'Cuatro', 'Tres', 'Dos'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q15',
            questionText: 'Qual é a cor "preto"?',
            options: ['Blanco', 'Negro', 'Azul', 'Rojo'],
            correctAnswerIndex: 1),
      ],
      phraseActivities: [
        PhraseModel(id: 'es_p1', phraseTemplate: 'Olá', correctAnswer: 'Hola'),
        PhraseModel(
            id: 'es_p2', phraseTemplate: 'Tchau', correctAnswer: 'Adiós'),
        PhraseModel(
            id: 'es_p3', phraseTemplate: 'Obrigado', correctAnswer: 'Gracias'),
        PhraseModel(
            id: 'es_p4', phraseTemplate: 'Desculpe', correctAnswer: 'Perdón'),
        PhraseModel(
            id: 'es_p5',
            phraseTemplate: 'Por favor',
            correctAnswer: 'Por favor'),
        PhraseModel(
            id: 'es_p6',
            phraseTemplate: 'O céu é azul',
            correctAnswer: 'El cielo es azul'),
        PhraseModel(
            id: 'es_p7',
            phraseTemplate: 'A grama é verde',
            correctAnswer: 'La hierba es verde'),
        PhraseModel(
            id: 'es_p8',
            phraseTemplate: 'O sol é amarelo',
            correctAnswer: 'El sol es amarillo'),
        PhraseModel(
            id: 'es_p9',
            phraseTemplate: 'Eu sou um',
            correctAnswer: 'Yo soy uno'),
        PhraseModel(
            id: 'es_p10',
            phraseTemplate: 'Dois mais um é três',
            correctAnswer: 'Dos más uno es tres'),
        PhraseModel(
            id: 'es_p11',
            phraseTemplate: 'A noite é preta',
            correctAnswer: 'La noche es negra'),
        PhraseModel(
            id: 'es_p12',
            phraseTemplate: 'Eu vejo o azul',
            correctAnswer: 'Yo veo el azul'),
        PhraseModel(
            id: 'es_p13',
            phraseTemplate: 'O gato é branco',
            correctAnswer: 'El gato es blanco'),
        PhraseModel(
            id: 'es_p14',
            phraseTemplate: 'A flor é rosa',
            correctAnswer: 'La flor es rosa'),
        PhraseModel(
            id: 'es_p15',
            phraseTemplate: 'A maçã é vermelha',
            correctAnswer: 'La manzana es roja'),
      ],
    ),
    LessonModel(
      id: 'es_lesson_2',
      title: 'Lección 2: Animais',
      description: 'Aprenda os nomes dos animais comuns.',
      xpReward: 15,
      quizQuestions: [
        QuizQuestionModel(
            id: 'es_q16',
            questionText: 'Como se diz "gato"?',
            options: ['Gato', 'Perro', 'Pájaro', 'Pez'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q17',
            questionText: 'Como se diz "cachorro"?',
            options: ['Pájaro', 'Perro', 'Cerdo', 'Gato'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'es_q18',
            questionText: 'Qual é a tradução de "pássaro"?',
            options: ['Pez', 'Oveja', 'Pájaro', 'Caballo'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'es_q19',
            questionText: 'Como se diz "peixe"?',
            options: ['Pez', 'Pato', 'Rana', 'Gato'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q20',
            questionText: 'Como se diz "vaca"?',
            options: ['Caballo', 'Cabra', 'Vaca', 'Cerdo'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'es_q21',
            questionText: 'Como se diz "pássaro"?',
            options: ['Pájaro', 'Perro', 'Gato', 'Cerdo'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q22',
            questionText: 'Como se diz "porco"?',
            options: ['Cerdo', 'Caballo', 'Gato', 'Pez'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q23',
            questionText: 'Como se diz "cavalo"?',
            options: ['Pájaro', 'Perro', 'Caballo', 'Vaca'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'es_q24',
            questionText: 'Como se diz "ovelha"?',
            options: ['Oveja', 'Cerdo', 'Pez', 'Gato'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q25',
            questionText: 'Como se diz "pato"?',
            options: ['Pato', 'Perro', 'Gato', 'Pez'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q26',
            questionText: 'Qual é a tradução de "cabra"?',
            options: ['Cabra', 'Vaca', 'Perro', 'Gato'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q27',
            questionText: 'Como se diz "urso"?',
            options: ['Oso', 'Pez', 'Pájaro', 'Caballo'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q28',
            questionText: 'Como se diz "rato"?',
            options: ['Ratón', 'Perro', 'Gato', 'Pez'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q29',
            questionText: 'Como se diz "crocodilo"?',
            options: ['Cocodrilo', 'Gato', 'Perro', 'Pájaro'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q30',
            questionText: 'Como se diz "tigre"?',
            options: ['Tigre', 'Gato', 'Perro', 'Pez'],
            correctAnswerIndex: 0),
      ],
      phraseActivities: [
        PhraseModel(
            id: 'es_p16',
            phraseTemplate: 'O gato está dormindo',
            correctAnswer: 'El gato está durmiendo'),
        PhraseModel(
            id: 'es_p17',
            phraseTemplate: 'O cachorro está correndo',
            correctAnswer: 'El perro está corriendo'),
        PhraseModel(
            id: 'es_p18',
            phraseTemplate: 'O pássaro está voando',
            correctAnswer: 'El pájaro está volando'),
        PhraseModel(
            id: 'es_p19',
            phraseTemplate: 'O peixe está nadando',
            correctAnswer: 'El pez está nadando'),
        PhraseModel(
            id: 'es_p20',
            phraseTemplate: 'A vaca está comendo',
            correctAnswer: 'La vaca está comiendo'),
        PhraseModel(
            id: 'es_p21',
            phraseTemplate: 'O porco está na fazenda',
            correctAnswer: 'El cerdo está en la granja'),
        PhraseModel(
            id: 'es_p22',
            phraseTemplate: 'O cavalo corre rápido',
            correctAnswer: 'El caballo corre rápido'),
        PhraseModel(
            id: 'es_p23',
            phraseTemplate: 'A ovelha está no campo',
            correctAnswer: 'La oveja está en el campo'),
        PhraseModel(
            id: 'es_p24',
            phraseTemplate: 'O pato nada no lago',
            correctAnswer: 'El pato nada en el lago'),
        PhraseModel(
            id: 'es_p25',
            phraseTemplate: 'A cabra come capim',
            correctAnswer: 'La cabra come hierba'),
        PhraseModel(
            id: 'es_p26',
            phraseTemplate: 'O urso é grande',
            correctAnswer: 'El oso es grande'),
        PhraseModel(
            id: 'es_p27',
            phraseTemplate: 'O rato está escondido',
            correctAnswer: 'El ratón está escondido'),
        PhraseModel(
            id: 'es_p28',
            phraseTemplate: 'O crocodilo vive no rio',
            correctAnswer: 'El cocodrilo vive en el río'),
        PhraseModel(
            id: 'es_p29',
            phraseTemplate: 'O tigre é feroz',
            correctAnswer: 'El tigre es feroz'),
        PhraseModel(
            id: 'es_p30',
            phraseTemplate: 'O cachorro late muito',
            correctAnswer: 'El perro ladra mucho'),
      ],
    ),
    LessonModel(
      id: 'es_lesson_3',
      title: 'Lição 3: Comida e Bebida',
      description: 'Aprenda comidas e bebidas comuns em espanhol.',
      xpReward: 20,
      quizQuestions: [
        QuizQuestionModel(
            id: 'es_q31',
            questionText: 'Como se diz "água" em espanhol?',
            options: ['Jugo', 'Leche', 'Agua', 'Café'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'es_q32',
            questionText: 'Como se diz "pão"?',
            options: ['Arroz', 'Pan', 'Manzana', 'Queso'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'es_q33',
            questionText: 'Qual a tradução de "leite"?',
            options: ['Leche', 'Agua', 'Jugo', 'Refresco'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q34',
            questionText: 'Como se diz "maçã"?',
            options: ['Banana', 'Manzana', 'Naranja', 'Pera'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'es_q35',
            questionText: 'Qual a tradução de "arroz"?',
            options: ['Pasta', 'Arroz', 'Pan', 'Carne'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'es_q36',
            questionText: 'Como se diz "café"?',
            options: ['Té', 'Café', 'Leche', 'Jugo'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'es_q37',
            questionText: 'Qual é a tradução de "suco"?',
            options: ['Agua', 'Leche', 'Jugo', 'Cerveza'],
            correctAnswerIndex: 2),
        QuizQuestionModel(
            id: 'es_q38',
            questionText: 'Como se diz "carne"?',
            options: ['Carne', 'Pescado', 'Pollo', 'Fruta'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q39',
            questionText: 'Qual a tradução de "peixe"?',
            options: ['Pescado', 'Pollo', 'Carne', 'Fruta'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q40',
            questionText: 'Como se diz "fruta"?',
            options: ['Fruta', 'Verdura', 'Carne', 'Pescado'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q41',
            questionText: 'Como se diz "verdura"?',
            options: ['Fruta', 'Verdura', 'Carne', 'Agua'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'es_q42',
            questionText: 'Qual a tradução de "biscoito"?',
            options: ['Galleta', 'Pan', 'Queso', 'Carne'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q43',
            questionText: 'Como se diz "leite"?',
            options: ['Agua', 'Leche', 'Café', 'Jugo'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'es_q44',
            questionText: 'Qual a tradução de "chocolate"?',
            options: ['Chocolate', 'Queso', 'Pescado', 'Pan'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q45',
            questionText: 'Como se diz "bolo"?',
            options: ['Pastel', 'Pan', 'Fruta', 'Carne'],
            correctAnswerIndex: 0),
      ],
      phraseActivities: [
        PhraseModel(
            id: 'es_p31',
            phraseTemplate: 'Eu bebo água.',
            correctAnswer: 'Yo bebo agua.'),
        PhraseModel(
            id: 'es_p32',
            phraseTemplate: 'Ela come pão.',
            correctAnswer: 'Ella come pan.'),
        PhraseModel(
            id: 'es_p33',
            phraseTemplate: 'Nós gostamos de suco.',
            correctAnswer: 'A nosotros nos gusta el jugo.'),
        PhraseModel(
            id: 'es_p34',
            phraseTemplate: 'Eles bebem leite.',
            correctAnswer: 'Ellos beben leche.'),
        PhraseModel(
            id: 'es_p35',
            phraseTemplate: 'Você bebe café?',
            correctAnswer: '¿Bebes café?'),
        PhraseModel(
            id: 'es_p36',
            phraseTemplate: 'Eu como carne no almoço.',
            correctAnswer: 'Yo como carne en el almuerzo.'),
        PhraseModel(
            id: 'es_p37',
            phraseTemplate: 'Ela compra frutas frescas.',
            correctAnswer: 'Ella compra frutas frescas.'),
        PhraseModel(
            id: 'es_p38',
            phraseTemplate: 'Nós cozinhamos arroz.',
            correctAnswer: 'Nosotros cocinamos arroz.'),
        PhraseModel(
            id: 'es_p39',
            phraseTemplate: 'Eles gostam de peixe.',
            correctAnswer: 'A ellos les gusta el pescado.'),
        PhraseModel(
            id: 'es_p40',
            phraseTemplate: 'Você bebe chá?',
            correctAnswer: '¿Bebes té?'),
        PhraseModel(
            id: 'es_p41',
            phraseTemplate: 'Eu como biscoito.',
            correctAnswer: 'Yo como una galleta.'),
        PhraseModel(
            id: 'es_p42',
            phraseTemplate: 'Ela bebe chocolate quente.',
            correctAnswer: 'Ella bebe chocolate caliente.'),
        PhraseModel(
            id: 'es_p43',
            phraseTemplate: 'Nós preparamos bolo.',
            correctAnswer: 'Nosotros preparamos un pastel.'),
        PhraseModel(
            id: 'es_p44',
            phraseTemplate: 'Eles comem verduras.',
            correctAnswer: 'Ellos comen verduras.'),
        PhraseModel(
            id: 'es_p45',
            phraseTemplate: 'Você gosta de frutas?',
            correctAnswer: '¿Te gustan las frutas?'),
      ],
    ),
    LessonModel(
      id: 'es_lesson_4',
      title: 'Lição 4: Família e Pessoas',
      description: 'Aprenda nomes de membros da família e pessoas em espanhol.',
      xpReward: 20,
      quizQuestions: [
        QuizQuestionModel(
            id: 'es_q46',
            questionText: 'Como se diz "mãe"?',
            options: ['Padre', 'Madre', 'Hermana', 'Hermano'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'es_q47',
            questionText: 'Como se diz "pai"?',
            options: ['Madre', 'Padre', 'Tío', 'Tía'],
            correctAnswerIndex: 1),
        QuizQuestionModel(
            id: 'es_q48',
            questionText: 'Qual a tradução de "irmã"?',
            options: ['Hermana', 'Hermano', 'Primo', 'Amigo'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q49',
            questionText: 'Como se diz "tio"?',
            options: ['Tío', 'Tía', 'Primo', 'Sobrino'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q50',
            questionText: 'Qual a tradução de "amigo"?',
            options: ['Amigo', 'Enemigo', 'Vecino', 'Profesor'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q51',
            questionText: 'Como se diz "irmão"?',
            options: ['Hermano', 'Hermana', 'Primo', 'Amigo'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q52',
            questionText: 'Qual a tradução de "tia"?',
            options: ['Tía', 'Tío', 'Primo', 'Sobrino'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q53',
            questionText: 'Como se diz "primo"?',
            options: ['Primo', 'Sobrino', 'Vecino', 'Profesor'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q54',
            questionText: 'Qual a tradução de "sobrinho"?',
            options: ['Sobrino', 'Primo', 'Vecino', 'Profesor'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q55',
            questionText: 'Como se diz "avó"?',
            options: ['Abuela', 'Abuelo', 'Madre', 'Padre'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q56',
            questionText: 'Como se diz "avô"?',
            options: ['Abuelo', 'Abuela', 'Tío', 'Tía'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q57',
            questionText: 'Qual a tradução de "prima"?',
            options: ['Prima', 'Sobrina', 'Vecina', 'Profesora'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q58',
            questionText: 'Como se diz "filho"?',
            options: ['Hijo', 'Padre', 'Hermano', 'Amigo'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q59',
            questionText: 'Qual a tradução de "filha"?',
            options: ['Hija', 'Madre', 'Hermana', 'Amiga'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q60',
            questionText: 'Como se diz "marido"?',
            options: ['Marido', 'Mujer', 'Amigo', 'Vecino'],
            correctAnswerIndex: 0),
      ],
      phraseActivities: [
        PhraseModel(
            id: 'es_p46',
            phraseTemplate: 'Minha mãe é gentil.',
            correctAnswer: 'Mi madre es amable.'),
        PhraseModel(
            id: 'es_p47',
            phraseTemplate: 'Meu pai trabalha muito.',
            correctAnswer: 'Mi padre trabaja mucho.'),
        PhraseModel(
            id: 'es_p48',
            phraseTemplate: 'Eu tenho uma irmã.',
            correctAnswer: 'Tengo una hermana.'),
        PhraseModel(
            id: 'es_p49',
            phraseTemplate: 'O tio veio nos visitar.',
            correctAnswer: 'El tío vino a visitarnos.'),
        PhraseModel(
            id: 'es_p50',
            phraseTemplate: 'Ela é minha amiga.',
            correctAnswer: 'Ella es mi amiga.'),
        PhraseModel(
            id: 'es_p51',
            phraseTemplate: 'Meu irmão é alto.',
            correctAnswer: 'Mi hermano es alto.'),
        PhraseModel(
            id: 'es_p52',
            phraseTemplate: 'Minha tia cozinha bem.',
            correctAnswer: 'Mi tía cocina bien.'),
        PhraseModel(
            id: 'es_p53',
            phraseTemplate: 'Meu primo é engraçado.',
            correctAnswer: 'Mi primo es gracioso.'),
        PhraseModel(
            id: 'es_p54',
            phraseTemplate: 'Meu sobrinho é jovem.',
            correctAnswer: 'Mi sobrino es joven.'),
        PhraseModel(
            id: 'es_p55',
            phraseTemplate: 'Minha avó é doce.',
            correctAnswer: 'Mi abuela es dulce.'),
        PhraseModel(
            id: 'es_p56',
            phraseTemplate: 'Meu avô é sábio.',
            correctAnswer: 'Mi abuelo es sabio.'),
        PhraseModel(
            id: 'es_p57',
            phraseTemplate: 'Minha prima é inteligente.',
            correctAnswer: 'Mi prima es inteligente.'),
        PhraseModel(
            id: 'es_p58',
            phraseTemplate: 'Meu filho estuda espanhol.',
            correctAnswer: 'Mi hijo estudia español.'),
        PhraseModel(
            id: 'es_p59',
            phraseTemplate: 'Minha filha é alegre.',
            correctAnswer: 'Mi hija es alegre.'),
        PhraseModel(
            id: 'es_p60',
            phraseTemplate: 'Meu marido trabalha fora.',
            correctAnswer: 'Mi marido trabaja fuera.'),
      ],
    ),
    LessonModel(
      id: 'es_lesson_5',
      title: 'Lição 5: Tempo e Clima',
      description:
          'Aprenda palavras e frases relacionadas ao tempo e clima em espanhol.',
      xpReward: 20,
      quizQuestions: [
        QuizQuestionModel(
            id: 'es_q61',
            questionText: 'Como se diz "sol" em espanhol?',
            options: ['Sol', 'Luna', 'Estrella', 'Nube'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q62',
            questionText: 'Qual a tradução de "chuva"?',
            options: ['Lluvia', 'Viento', 'Nieve', 'Tormenta'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q63',
            questionText: 'Como se diz "neve"?',
            options: ['Nieve', 'Hielo', 'Lluvia', 'Nube'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q64',
            questionText: 'Qual a tradução de "vento"?',
            options: ['Viento', 'Sol', 'Nieve', 'Tormenta'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q65',
            questionText: 'Como se diz "nuvem"?',
            options: ['Nube', 'Cielo', 'Luna', 'Estrella'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q66',
            questionText: 'Qual a tradução de "tempestade"?',
            options: ['Tormenta', 'Lluvia', 'Viento', 'Nieve'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q67',
            questionText: 'Como se diz "frio"?',
            options: ['Frío', 'Calor', 'Templado', 'Húmedo'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q68',
            questionText: 'Qual a tradução de "calor"?',
            options: ['Calor', 'Frío', 'Viento', 'Nieve'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q69',
            questionText: 'Como se diz "céu"?',
            options: ['Cielo', 'Nube', 'Luna', 'Estrella'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q70',
            questionText: 'Qual a tradução de "umidade"?',
            options: ['Humedad', 'Frío', 'Calor', 'Lluvia'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q71',
            questionText: 'Como se diz "tempestade elétrica"?',
            options: ['Tormenta eléctrica', 'Lluvia', 'Nieve', 'Viento'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q72',
            questionText: 'Qual a tradução de "nevoeiro"?',
            options: ['Niebla', 'Nube', 'Cielo', 'Tormenta'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q73',
            questionText: 'Como se diz "relâmpago"?',
            options: ['Relámpago', 'Trueno', 'Viento', 'Lluvia'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q74',
            questionText: 'Qual a tradução de "trovão"?',
            options: ['Trueno', 'Relámpago', 'Tormenta', 'Nieve'],
            correctAnswerIndex: 0),
        QuizQuestionModel(
            id: 'es_q75',
            questionText: 'Como se diz "garoa"?',
            options: ['Llovizna', 'Lluvia', 'Nieve', 'Viento'],
            correctAnswerIndex: 0),
      ],
      phraseActivities: [
        PhraseModel(
            id: 'es_p61',
            phraseTemplate: 'O sol está brilhando.',
            correctAnswer: 'El sol está brillando.'),
        PhraseModel(
            id: 'es_p62',
            phraseTemplate: 'Está chovendo muito.',
            correctAnswer: 'Está lloviendo mucho.'),
        PhraseModel(
            id: 'es_p63',
            phraseTemplate: 'A neve cobre as montanhas.',
            correctAnswer: 'La nieve cubre las montañas.'),
        PhraseModel(
            id: 'es_p64',
            phraseTemplate: 'O vento está forte hoje.',
            correctAnswer: 'El viento está fuerte hoy.'),
        PhraseModel(
            id: 'es_p65',
            phraseTemplate: 'As nuvens estão no céu.',
            correctAnswer: 'Las nubes están en el cielo.'),
        PhraseModel(
            id: 'es_p66',
            phraseTemplate: 'A tempestade começou à noite.',
            correctAnswer: 'La tormenta comenzó por la noche.'),
        PhraseModel(
            id: 'es_p67',
            phraseTemplate: 'Está muito frio hoje.',
            correctAnswer: 'Hace mucho frío hoy.'),
        PhraseModel(
            id: 'es_p68',
            phraseTemplate: 'O calor é insuportável.',
            correctAnswer: 'El calor es insoportable.'),
        PhraseModel(
            id: 'es_p69',
            phraseTemplate: 'O céu está limpo.',
            correctAnswer: 'El cielo está despejado.'),
        PhraseModel(
            id: 'es_p70',
            phraseTemplate: 'A umidade está alta.',
            correctAnswer: 'La humedad está alta.'),
        PhraseModel(
            id: 'es_p71',
            phraseTemplate: 'A tempestade elétrica assustou todos.',
            correctAnswer: 'La tormenta eléctrica asustó a todos.'),
        PhraseModel(
            id: 'es_p72',
            phraseTemplate: 'O nevoeiro está denso pela manhã.',
            correctAnswer: 'La niebla está densa por la mañana.'),
        PhraseModel(
            id: 'es_p73',
            phraseTemplate: 'O relâmpago iluminou o céu.',
            correctAnswer: 'El relámpago iluminó el cielo.'),
        PhraseModel(
            id: 'es_p74',
            phraseTemplate: 'O trovão foi muito alto.',
            correctAnswer: 'El trueno fue muy fuerte.'),
        PhraseModel(
            id: 'es_p75',
            phraseTemplate: 'Está caindo garoa fina.',
            correctAnswer: 'Está cayendo una llovizna fina.'),
      ],
    ),
  ];
}
