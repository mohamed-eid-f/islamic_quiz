// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) {
  return _QuestionModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionModel {
  int get id => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  @JsonKey(name: "answer_1")
  String get answer1 => throw _privateConstructorUsedError;
  @JsonKey(name: "answer_2")
  String get answer2 => throw _privateConstructorUsedError;
  @JsonKey(name: "answer_3")
  String get answer3 => throw _privateConstructorUsedError;
  @JsonKey(name: "answer_4")
  String get answer4 => throw _privateConstructorUsedError;
  @JsonKey(name: "answer_index")
  int get answerIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionModelCopyWith<QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionModelCopyWith<$Res> {
  factory $QuestionModelCopyWith(
          QuestionModel value, $Res Function(QuestionModel) then) =
      _$QuestionModelCopyWithImpl<$Res, QuestionModel>;
  @useResult
  $Res call(
      {int id,
      int level,
      String question,
      @JsonKey(name: "answer_1") String answer1,
      @JsonKey(name: "answer_2") String answer2,
      @JsonKey(name: "answer_3") String answer3,
      @JsonKey(name: "answer_4") String answer4,
      @JsonKey(name: "answer_index") int answerIndex});
}

/// @nodoc
class _$QuestionModelCopyWithImpl<$Res, $Val extends QuestionModel>
    implements $QuestionModelCopyWith<$Res> {
  _$QuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? level = null,
    Object? question = null,
    Object? answer1 = null,
    Object? answer2 = null,
    Object? answer3 = null,
    Object? answer4 = null,
    Object? answerIndex = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer1: null == answer1
          ? _value.answer1
          : answer1 // ignore: cast_nullable_to_non_nullable
              as String,
      answer2: null == answer2
          ? _value.answer2
          : answer2 // ignore: cast_nullable_to_non_nullable
              as String,
      answer3: null == answer3
          ? _value.answer3
          : answer3 // ignore: cast_nullable_to_non_nullable
              as String,
      answer4: null == answer4
          ? _value.answer4
          : answer4 // ignore: cast_nullable_to_non_nullable
              as String,
      answerIndex: null == answerIndex
          ? _value.answerIndex
          : answerIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionModelImplCopyWith<$Res>
    implements $QuestionModelCopyWith<$Res> {
  factory _$$QuestionModelImplCopyWith(
          _$QuestionModelImpl value, $Res Function(_$QuestionModelImpl) then) =
      __$$QuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int level,
      String question,
      @JsonKey(name: "answer_1") String answer1,
      @JsonKey(name: "answer_2") String answer2,
      @JsonKey(name: "answer_3") String answer3,
      @JsonKey(name: "answer_4") String answer4,
      @JsonKey(name: "answer_index") int answerIndex});
}

/// @nodoc
class __$$QuestionModelImplCopyWithImpl<$Res>
    extends _$QuestionModelCopyWithImpl<$Res, _$QuestionModelImpl>
    implements _$$QuestionModelImplCopyWith<$Res> {
  __$$QuestionModelImplCopyWithImpl(
      _$QuestionModelImpl _value, $Res Function(_$QuestionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? level = null,
    Object? question = null,
    Object? answer1 = null,
    Object? answer2 = null,
    Object? answer3 = null,
    Object? answer4 = null,
    Object? answerIndex = null,
  }) {
    return _then(_$QuestionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer1: null == answer1
          ? _value.answer1
          : answer1 // ignore: cast_nullable_to_non_nullable
              as String,
      answer2: null == answer2
          ? _value.answer2
          : answer2 // ignore: cast_nullable_to_non_nullable
              as String,
      answer3: null == answer3
          ? _value.answer3
          : answer3 // ignore: cast_nullable_to_non_nullable
              as String,
      answer4: null == answer4
          ? _value.answer4
          : answer4 // ignore: cast_nullable_to_non_nullable
              as String,
      answerIndex: null == answerIndex
          ? _value.answerIndex
          : answerIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionModelImpl
    with DiagnosticableTreeMixin
    implements _QuestionModel {
  const _$QuestionModelImpl(
      {required this.id,
      required this.level,
      required this.question,
      @JsonKey(name: "answer_1") required this.answer1,
      @JsonKey(name: "answer_2") required this.answer2,
      @JsonKey(name: "answer_3") required this.answer3,
      @JsonKey(name: "answer_4") required this.answer4,
      @JsonKey(name: "answer_index") required this.answerIndex});

  factory _$QuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionModelImplFromJson(json);

  @override
  final int id;
  @override
  final int level;
  @override
  final String question;
  @override
  @JsonKey(name: "answer_1")
  final String answer1;
  @override
  @JsonKey(name: "answer_2")
  final String answer2;
  @override
  @JsonKey(name: "answer_3")
  final String answer3;
  @override
  @JsonKey(name: "answer_4")
  final String answer4;
  @override
  @JsonKey(name: "answer_index")
  final int answerIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionModel(id: $id, level: $level, question: $question, answer1: $answer1, answer2: $answer2, answer3: $answer3, answer4: $answer4, answerIndex: $answerIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuestionModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('level', level))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('answer1', answer1))
      ..add(DiagnosticsProperty('answer2', answer2))
      ..add(DiagnosticsProperty('answer3', answer3))
      ..add(DiagnosticsProperty('answer4', answer4))
      ..add(DiagnosticsProperty('answerIndex', answerIndex));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer1, answer1) || other.answer1 == answer1) &&
            (identical(other.answer2, answer2) || other.answer2 == answer2) &&
            (identical(other.answer3, answer3) || other.answer3 == answer3) &&
            (identical(other.answer4, answer4) || other.answer4 == answer4) &&
            (identical(other.answerIndex, answerIndex) ||
                other.answerIndex == answerIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, level, question, answer1,
      answer2, answer3, answer4, answerIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionModelImplCopyWith<_$QuestionModelImpl> get copyWith =>
      __$$QuestionModelImplCopyWithImpl<_$QuestionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionModel implements QuestionModel {
  const factory _QuestionModel(
          {required final int id,
          required final int level,
          required final String question,
          @JsonKey(name: "answer_1") required final String answer1,
          @JsonKey(name: "answer_2") required final String answer2,
          @JsonKey(name: "answer_3") required final String answer3,
          @JsonKey(name: "answer_4") required final String answer4,
          @JsonKey(name: "answer_index") required final int answerIndex}) =
      _$QuestionModelImpl;

  factory _QuestionModel.fromJson(Map<String, dynamic> json) =
      _$QuestionModelImpl.fromJson;

  @override
  int get id;
  @override
  int get level;
  @override
  String get question;
  @override
  @JsonKey(name: "answer_1")
  String get answer1;
  @override
  @JsonKey(name: "answer_2")
  String get answer2;
  @override
  @JsonKey(name: "answer_3")
  String get answer3;
  @override
  @JsonKey(name: "answer_4")
  String get answer4;
  @override
  @JsonKey(name: "answer_index")
  int get answerIndex;
  @override
  @JsonKey(ignore: true)
  _$$QuestionModelImplCopyWith<_$QuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
