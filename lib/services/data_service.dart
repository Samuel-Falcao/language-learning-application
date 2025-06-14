import '../models/language_model.dart';
import '../models/lesson_model.dart';
import '../data/english_lessons.dart';
import '../data/french_lessons.dart';
import '../data/italian_lessons.dart';
import '../data/spanish_lessons.dart';

class DataService {
  List<LanguageModel> getAvailableLanguages() {
    return [
      LanguageModel(id: 'en', name: 'Inglês', flagEmoji: '🇬🇧'),
      LanguageModel(id: 'es', name: 'Espanhol', flagEmoji: '🇪🇸'),
      LanguageModel(id: 'it', name: 'Italiano', flagEmoji: '🇮🇹'),
      LanguageModel(id: 'fr', name: 'Francês', flagEmoji: '🇫🇷'),
    ];
  }

  // A lógica permanece a mesma, mas agora chama as funções dos arquivos importados.
  List<LessonModel> getLessonsForLanguage(String languageId) {
    switch (languageId) {
      case 'en':
        return getEnglishLessonsData();
      case 'es':
        return getSpanishLessonsData();
      case 'it':
        return getItalianLessonsData();
      case 'fr':
        return getFrenchLessonsData();
      default:
        return [];
    }
  }
}
