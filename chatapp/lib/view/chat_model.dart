class ChatModel {
  final String profilePic;
  final String title;
  final String message;
  final String time;

  ChatModel(
      {required this.profilePic,
      required this.title,
      required this.message,
      required this.time});
}

List<ChatModel> chatList = [
  ChatModel(
      profilePic:
          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80',
      title: 'Abdulla',
      message: 'message...',
      time: '1:00 AM'),
  ChatModel(
      profilePic:
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80',
      title: 'Amna',
      message: 'hi...',
      time: '12:00 AM'),
  ChatModel(
      profilePic:
          'https://images.unsplash.com/photo-1635107510862-53886e926b74?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
      title: 'Zarar',
      message: 'hello...',
      time: '11:00 PM'),
  ChatModel(
      profilePic:
          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80',
      title: 'Abdulla',
      message: 'message...',
      time: '1:00 AM')
];
