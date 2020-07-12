import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;

  List<Story> _storyData = [
    Story(
        storyTitle:
            'Seu carro estourou um pneu em uma estrada sinuosa no meio do nada, sem sinal de telefone celular. Você decide pegar carona. Uma caminhonete enferrujada para ao seu lado. Um homem com um chapéu de abas largas e olhos sem alma abre a porta do passageiro e pergunta: "Precisa de uma carona, garoto?".',
        choice1: 'Sim. Obrigado pela ajuda!',
        choice2: 'Melhor perguntar se ele é um assassino primeiro.'),
    Story(
        storyTitle:
            'Ele balança a cabeça devagar, sem se deixar abalar com a pergunta.',
        choice1: 'Pelo menos ele é honesto. Você sobe na caminhonete.',
        choice2: 'Espere, eu sei trocar um pneu.'),
    Story(
        storyTitle:
            'Quando começa a dirigir, o estranho fala sobre o relacionamento dele com a mãe. Ele fica cada vez mais irritado e lhe pede para abrir o porta-luvas. Dentro, você encontra uma faca ensanguentada, dois dedos decepados e uma fita cassete de Elton John.',
        choice1: 'Eu amo Elton John! Você entrega a ele a fita cassete.',
        choice2: 'É ele ou você! Pega a faca e o esfaqueia.'),
    Story(
        storyTitle:
            'O que? Você sabia que os acidentes de trânsito são a segunda principal causa de morte acidental na maioria dos grupos etários adultos?',
        choice1: 'Reiniciar',
        choice2: ''),
    Story(
        storyTitle:
            'Ao romper o cinto de segurança e despencar montanha abaixo em direção à rochas afiadas, você reflete sobre a duvidosa sabedoria de esfaquear alguém enquanto ele dirige um carro em que você está.',
        choice1: 'Reiniciar',
        choice2: ''),
    Story(
        storyTitle:
            'Você se junta ao assassino enquanto cantam versos de "Can you feel the love tonight". Ele lhe deixa na próxima cidade. Antes de ir, pergunta se você conhece algum bom lugar para despejar corpos. Você responde: "Experimente o quebra-mar".',
        choice1: 'Reiniciar',
        choice2: '')
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void nextStory(int choiceNumber) {
    if (_storyNumber == 0 && choiceNumber == 1) {
      _storyNumber = 2;
    } else if (_storyNumber == 0 && choiceNumber == 2) {
      _storyNumber = 1;
    } else if (_storyNumber == 1 && choiceNumber == 1) {
      _storyNumber = 2;
    } else if (_storyNumber == 1 && choiceNumber == 2) {
      _storyNumber = 3;
    } else if (_storyNumber == 2 && choiceNumber == 1) {
      _storyNumber = 5;
    } else if (_storyNumber == 2 && choiceNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}
