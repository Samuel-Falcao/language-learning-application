# Falaê App 🚀

## 💬 Sobre o Projeto

O **Falaê** é um aplicativo móvel de aprendizado de idiomas, desenvolvido em Flutter, que transforma o estudo em uma jornada divertida e gamificada. Com um design intuitivo e focado na experiência do usuário, o app oferece lições interativas, quizzes e um sistema de progressão para manter os estudantes motivados.
Atualmente, o app suporta o aprendizado de **Inglês, Francês, Italiano e Espanhol**.


## ✨ Funcionalidades Principais

* 📚 **Múltiplos Idiomas:** Comece sua jornada em Inglês, Espanhol, Francês ou Italiano.
* 🎮 **Atividades Gamificadas:** Teste seus conhecimentos com dois tipos de atividades:
    * **Quiz:** Responda a perguntas de múltipla escolha.
    * **Complete a Frase:** Preencha os espaços em branco para formar frases corretamente.
* 💡 **Revisão Inteligente:** Ao final de um quiz, revise apenas as questões que você errou para focar em seus pontos fracos.
* 📊 **Acompanhamento de Progresso:** Monitore seu desenvolvimento com:
    * Pontos de Experiência (XP).
    * Níveis e Títulos (de "Novato" a "Mestre").
    * Ofensivas (Streak) por dias seguidos de prática.
* 👤 **Perfil de Usuário:** Acompanhe suas estatísticas, personalize seu avatar e veja seu progresso geral.
* 🔒 **Desbloqueio de Lições:** Complete as lições para desbloquear os próximos desafios e avançar no seu aprendizado.
* 🛒 **Loja e Gemas:** Um sistema de economia interna com gemas, preparando o terreno para futuras recompensas e itens na loja.

## 🛠️ Tecnologias Utilizadas

* **Framework:** [Flutter](https://flutter.dev/)
* **Linguagem:** [Dart](https://dart.dev/)
* **Backend & Autenticação:** [Firebase (Authentication, Firestore)](https://firebase.google.com/)
* 
## 📂 Estrutura do Projeto

O projeto segue uma arquitetura limpa e escalável, separando as responsabilidades em diferentes camadas para facilitar a manutenção e a adição de novas funcionalidades.

lib/  
├── data/ # Conteúdos das lições  
├── models/ # Modelos de dados (User, Lesson, etc.)  
├── screens/ # Telas e interfaces  
├── services/ # Regras de negócio e integração Firebase  
├── utils/ # Utilitários e rotas  
├── widgets/ # Componentes reutilizáveis  
├── main.dart # Entrada da aplicação   
└── firebase_options.dart # Configurações do Firebase  

## 🚀 Como Executar o Projeto

1.  **Clone o repositório:**
    ```sh
    git clone [https://github.com/seu-usuario/falae-app.git](https://github.com/seu-usuario/falae-app.git)
    ```
2.  **Configure o Firebase:**
    * Siga as instruções da [documentação do FlutterFire](https://firebase.flutter.dev/docs/overview) para criar um projeto no Firebase e adicionar os arquivos de configuração para Android e iOS.
3.  **Instale as dependências:**
    ```sh
    flutter pub get
    ```
4.  **Execute o aplicativo:**
    ```sh
    flutter run
    ```

## 👨‍💻 Equipe & Contribuições

* **Samuel Falcão** - **Arquiteto de Software & Desenvolvedor Principal**
    * Responsável pela concepção da arquitetura, desenvolvimento completo do aplicativo em Flutter, integração com Firebase e implementação de todas as funcionalidades.

* **Ágata Giovanna** - **Design de UI/UX & Identidade Visual & Integração com Firebase**
    * Contribuiu com o design das interfaces, experiência do usuário e a criação da identidade visual do Falaê App, além de auxiliar na integração do projeto ao Firebase.

* **David Nogueira** - **Gerenciamento de Projeto & Documentação**
    * Ajudou na organização das tarefas, definição do escopo e na elaboração da documentação técnica e do usuário.

* **Ricardo Victor** - **Testes & Quality Assurance (QA)**
    * Colaborou na fase de testes, identificando bugs e garantindo a qualidade e estabilidade da aplicação.

Feito com ❤️ e muito café!
