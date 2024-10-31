import "package:hive/hive.dart";
import "package:islamic_quiz/features/quiz/data/model/question_model.dart";
import "package:islamic_quiz/features/quiz/data/repository/question_repo.dart";

class HiveQuestionsRepository extends QuestionRepository {
  final Box questionBox = Hive.box("questions");
  @override
  Future<List<QuestionModel>> getQuestions() async {
    try {
      if (questionBox.isEmpty) return [];
      return questionBox.values.map((e) => QuestionModel.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> addQuestion({required QuestionModel question}) async {
    try {
      questionBox.put(question.id, question.toJson());
    } catch (e) {
      rethrow;
    }
  }
}
