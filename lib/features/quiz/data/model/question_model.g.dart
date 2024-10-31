// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionModelImpl _$$QuestionModelImplFromJson(Map<String, dynamic> json) =>
    _$QuestionModelImpl(
      id: (json['id'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      question: json['question'] as String,
      answer1: json['answer_1'] as String,
      answer2: json['answer_2'] as String,
      answer3: json['answer_3'] as String,
      answer4: json['answer_4'] as String,
      answerIndex: (json['answer_index'] as num).toInt(),
    );

Map<String, dynamic> _$$QuestionModelImplToJson(_$QuestionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'level': instance.level,
      'question': instance.question,
      'answer_1': instance.answer1,
      'answer_2': instance.answer2,
      'answer_3': instance.answer3,
      'answer_4': instance.answer4,
      'answer_index': instance.answerIndex,
    };
