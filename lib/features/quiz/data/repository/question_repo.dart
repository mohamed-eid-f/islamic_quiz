import "package:islamic_quiz/features/quiz/data/model/question_model.dart";

/// this repository to connect to the database/api
abstract class QuestionRepository {
  Future<List<QuestionModel>> getQuestions();
  Future<void> addQuestion({required QuestionModel question});
  // Future<void> editQuestion({required String id, required String desc});
  // Future<void> toggleQuestion({required String id});
  // Future<void> removeQuestion({required String id});
}
