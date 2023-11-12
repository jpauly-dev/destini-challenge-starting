import 'story_data.dart';

class StoryBrain {
  int _storyNumber = 0;

  String getStory() {
    return storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return storyData[_storyNumber].choice2;
  }

  void nextStory(int choiceNumber) {
    switch (_storyNumber) {
      case 0:
        choiceNumber == 1 ? _storyNumber = 2 : _storyNumber = 1;
        break;
      case 1:
        choiceNumber == 1 ? _storyNumber = 2 : _storyNumber = 3;
        break;
      case 2:
        choiceNumber == 1 ? _storyNumber = 5 : _storyNumber = 4;
        break;
      default:
        restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    return _storyNumber < 3;
  }
}
