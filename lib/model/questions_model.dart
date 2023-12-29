class QuestionsModel {
  const QuestionsModel(this.question,this.options);

  final String question;
  final List<String> options;

  List<String> getShuffleList(){
    List<String> newList = List.of(options);
    newList.shuffle();
    return newList;
  }
}