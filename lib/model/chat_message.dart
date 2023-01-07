class ChatMessage {
  final String text;
  final bool isSent;
  Map<String,bool>? selectionList= {};

   ChatMessage(
      {
    required this.text,
    required this.isSent,
        this.selectionList=const {},
  });
}
