import 'package:yesnoapp/domain/entities/message.dart';

class YesNoModel {
  String generateText;
  Map<String, dynamic> conversation;

  YesNoModel(
      {required this.generateText,
      required this.conversation
      });

  factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
      generateText: json['generated_text'],
      conversation: json['conversation'],
      );

  Message toMessageEntity() =>
      Message(text: generateText, fromWho: FromWho.hers);
}
