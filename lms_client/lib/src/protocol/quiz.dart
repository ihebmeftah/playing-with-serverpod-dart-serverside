/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class Quiz extends _i1.SerializableEntity {
  Quiz._({
    this.id,
    required this.name,
    this.desc,
    required this.categoryId,
    required this.userId,
    required this.points,
    this.question,
  });

  factory Quiz({
    int? id,
    required String name,
    String? desc,
    required int categoryId,
    required int userId,
    required int points,
    List<_i2.Question>? question,
  }) = _QuizImpl;

  factory Quiz.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Quiz(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      desc:
          serializationManager.deserialize<String?>(jsonSerialization['desc']),
      categoryId: serializationManager
          .deserialize<int>(jsonSerialization['categoryId']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      points:
          serializationManager.deserialize<int>(jsonSerialization['points']),
      question: serializationManager
          .deserialize<List<_i2.Question>?>(jsonSerialization['question']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String? desc;

  int categoryId;

  int userId;

  int points;

  List<_i2.Question>? question;

  Quiz copyWith({
    int? id,
    String? name,
    String? desc,
    int? categoryId,
    int? userId,
    int? points,
    List<_i2.Question>? question,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (desc != null) 'desc': desc,
      'categoryId': categoryId,
      'userId': userId,
      'points': points,
      if (question != null)
        'question': question?.toJson(valueToJson: (v) => v.toJson()),
    };
  }
}

class _Undefined {}

class _QuizImpl extends Quiz {
  _QuizImpl({
    int? id,
    required String name,
    String? desc,
    required int categoryId,
    required int userId,
    required int points,
    List<_i2.Question>? question,
  }) : super._(
          id: id,
          name: name,
          desc: desc,
          categoryId: categoryId,
          userId: userId,
          points: points,
          question: question,
        );

  @override
  Quiz copyWith({
    Object? id = _Undefined,
    String? name,
    Object? desc = _Undefined,
    int? categoryId,
    int? userId,
    int? points,
    Object? question = _Undefined,
  }) {
    return Quiz(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      desc: desc is String? ? desc : this.desc,
      categoryId: categoryId ?? this.categoryId,
      userId: userId ?? this.userId,
      points: points ?? this.points,
      question:
          question is List<_i2.Question>? ? question : this.question?.clone(),
    );
  }
}
