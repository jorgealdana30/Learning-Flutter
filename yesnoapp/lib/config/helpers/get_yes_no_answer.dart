import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:yesnoapp/constants/Constanst.dart';
import 'package:yesnoapp/infrastructure/models/yes_no_model.dart';

import '../../domain/entities/message.dart';

class GetYesNoAnswer{
  final _dio = Dio(BaseOptions(headers: {'Authorization': 'Bearer ${Constants.authorization}'}));

  Future<Message> getAnswer(String query) async {
    final response = await _dio.post('https://api-inference.huggingface.co/models/facebook/blenderbot-400M-distill', data: query);
    final yesNoModel = YesNoModel.fromJsonMap(response.data);
    return yesNoModel.toMessageEntity();
  }
}