/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'package:serverpod_auth_server/module.dart' as _i3;
import 'admin.dart' as _i4;
import 'category.dart' as _i5;
import 'enum/playquiz_status.enum.dart' as _i6;
import 'enum/roles.enum.dart' as _i7;
import 'exceptions/appexception.dart' as _i8;
import 'exceptions/exceptiontype.enum.dart' as _i9;
import 'option.dart' as _i10;
import 'player.dart' as _i11;
import 'playquiz.dart' as _i12;
import 'question.dart' as _i13;
import 'quiz.dart' as _i14;
import 'rank.dart' as _i15;
import 'protocol.dart' as _i16;
import 'package:lms_server/src/generated/category.dart' as _i17;
import 'package:lms_server/src/generated/question.dart' as _i18;
import 'package:lms_server/src/generated/quiz.dart' as _i19;
import 'package:lms_server/src/generated/rank.dart' as _i20;
export 'admin.dart';
export 'category.dart';
export 'enum/playquiz_status.enum.dart';
export 'enum/roles.enum.dart';
export 'exceptions/appexception.dart';
export 'exceptions/exceptiontype.enum.dart';
export 'option.dart';
export 'player.dart';
export 'playquiz.dart';
export 'question.dart';
export 'quiz.dart';
export 'rank.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'admin',
      dartName: 'Admin',
      schema: 'public',
      module: 'lms',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'admin_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userInfoId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'password',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'admin_fk_0',
          columns: ['userInfoId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'admin_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'admin_info_id_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userInfoId',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'category',
      dartName: 'Category',
      schema: 'public',
      module: 'lms',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'category_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'desc',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'nbQuiz',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'category_fk_0',
          columns: ['userId'],
          referenceTable: 'admin',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'category_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'category_name_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'name',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'option',
      dartName: 'Option',
      schema: 'public',
      module: 'lms',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'option_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'text',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'isCorrect',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'question',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'option_fk_0',
          columns: ['question'],
          referenceTable: 'question',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'option_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'play_quiz',
      dartName: 'PlayQuiz',
      schema: 'public',
      module: 'lms',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'play_quiz_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'quizId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'playerId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.json,
          isNullable: false,
          dartType: 'protocol:PlayQuiz',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'play_quiz_fk_0',
          columns: ['quizId'],
          referenceTable: 'quiz',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'play_quiz_fk_1',
          columns: ['playerId'],
          referenceTable: 'player',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'play_quiz_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'playquiz_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'quizId',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'player',
      dartName: 'Player',
      schema: 'public',
      module: 'lms',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'player_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userInfoId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'password',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'totalPoint',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'quizesDone',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'sounds',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'notification',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'rank',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'protocol:Rank?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'player_fk_0',
          columns: ['userInfoId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'player_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'player_info_id_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userInfoId',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'question',
      dartName: 'Question',
      schema: 'public',
      module: 'lms',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'question_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'question',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'additionalInformation',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'quiz',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'points',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'question_fk_0',
          columns: ['quiz'],
          referenceTable: 'quiz',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'question_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'question_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'question',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'quiz',
      dartName: 'Quiz',
      schema: 'public',
      module: 'lms',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'quiz_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'desc',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'categoryId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'points',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'quiz_fk_0',
          columns: ['categoryId'],
          referenceTable: 'category',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'quiz_fk_1',
          columns: ['userId'],
          referenceTable: 'admin',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'quiz_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'quiz_name_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'name',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'rank',
      dartName: 'Rank',
      schema: 'public',
      module: 'lms',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'rank_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'minpoints',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'maxpoints',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'level',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'rank_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'name_rank_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'name',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'minpoints_rank_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'minpoints',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'maxpoints_rank_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'maxpoints',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'level_rank_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'level',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    ..._i3.Protocol.targetTableDefinitions,
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i4.Admin) {
      return _i4.Admin.fromJson(data, this) as T;
    }
    if (t == _i5.Category) {
      return _i5.Category.fromJson(data, this) as T;
    }
    if (t == _i6.PlayQuizStatus) {
      return _i6.PlayQuizStatus.fromJson(data) as T;
    }
    if (t == _i7.Roles) {
      return _i7.Roles.fromJson(data) as T;
    }
    if (t == _i8.AppException) {
      return _i8.AppException.fromJson(data, this) as T;
    }
    if (t == _i9.ExceptionType) {
      return _i9.ExceptionType.fromJson(data) as T;
    }
    if (t == _i10.Option) {
      return _i10.Option.fromJson(data, this) as T;
    }
    if (t == _i11.Player) {
      return _i11.Player.fromJson(data, this) as T;
    }
    if (t == _i12.PlayQuiz) {
      return _i12.PlayQuiz.fromJson(data, this) as T;
    }
    if (t == _i13.Question) {
      return _i13.Question.fromJson(data, this) as T;
    }
    if (t == _i14.Quiz) {
      return _i14.Quiz.fromJson(data, this) as T;
    }
    if (t == _i15.Rank) {
      return _i15.Rank.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i4.Admin?>()) {
      return (data != null ? _i4.Admin.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.Category?>()) {
      return (data != null ? _i5.Category.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.PlayQuizStatus?>()) {
      return (data != null ? _i6.PlayQuizStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Roles?>()) {
      return (data != null ? _i7.Roles.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.AppException?>()) {
      return (data != null ? _i8.AppException.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.ExceptionType?>()) {
      return (data != null ? _i9.ExceptionType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.Option?>()) {
      return (data != null ? _i10.Option.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i11.Player?>()) {
      return (data != null ? _i11.Player.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i12.PlayQuiz?>()) {
      return (data != null ? _i12.PlayQuiz.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i13.Question?>()) {
      return (data != null ? _i13.Question.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i14.Quiz?>()) {
      return (data != null ? _i14.Quiz.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i15.Rank?>()) {
      return (data != null ? _i15.Rank.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<List<_i16.Category>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i16.Category>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i16.Quiz>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i16.Quiz>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i16.Option>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i16.Option>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i16.Question>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i16.Question>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i17.Category>) {
      return (data as List).map((e) => deserialize<_i17.Category>(e)).toList()
          as dynamic;
    }
    if (t == List<_i18.Question>) {
      return (data as List).map((e) => deserialize<_i18.Question>(e)).toList()
          as dynamic;
    }
    if (t == List<_i19.Quiz>) {
      return (data as List).map((e) => deserialize<_i19.Quiz>(e)).toList()
          as dynamic;
    }
    if (t == List<_i20.Rank>) {
      return (data as List).map((e) => deserialize<_i20.Rank>(e)).toList()
          as dynamic;
    }
    try {
      return _i3.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i3.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i4.Admin) {
      return 'Admin';
    }
    if (data is _i5.Category) {
      return 'Category';
    }
    if (data is _i6.PlayQuizStatus) {
      return 'PlayQuizStatus';
    }
    if (data is _i7.Roles) {
      return 'Roles';
    }
    if (data is _i8.AppException) {
      return 'AppException';
    }
    if (data is _i9.ExceptionType) {
      return 'ExceptionType';
    }
    if (data is _i10.Option) {
      return 'Option';
    }
    if (data is _i11.Player) {
      return 'Player';
    }
    if (data is _i12.PlayQuiz) {
      return 'PlayQuiz';
    }
    if (data is _i13.Question) {
      return 'Question';
    }
    if (data is _i14.Quiz) {
      return 'Quiz';
    }
    if (data is _i15.Rank) {
      return 'Rank';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i3.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'Admin') {
      return deserialize<_i4.Admin>(data['data']);
    }
    if (data['className'] == 'Category') {
      return deserialize<_i5.Category>(data['data']);
    }
    if (data['className'] == 'PlayQuizStatus') {
      return deserialize<_i6.PlayQuizStatus>(data['data']);
    }
    if (data['className'] == 'Roles') {
      return deserialize<_i7.Roles>(data['data']);
    }
    if (data['className'] == 'AppException') {
      return deserialize<_i8.AppException>(data['data']);
    }
    if (data['className'] == 'ExceptionType') {
      return deserialize<_i9.ExceptionType>(data['data']);
    }
    if (data['className'] == 'Option') {
      return deserialize<_i10.Option>(data['data']);
    }
    if (data['className'] == 'Player') {
      return deserialize<_i11.Player>(data['data']);
    }
    if (data['className'] == 'PlayQuiz') {
      return deserialize<_i12.PlayQuiz>(data['data']);
    }
    if (data['className'] == 'Question') {
      return deserialize<_i13.Question>(data['data']);
    }
    if (data['className'] == 'Quiz') {
      return deserialize<_i14.Quiz>(data['data']);
    }
    if (data['className'] == 'Rank') {
      return deserialize<_i15.Rank>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i3.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i4.Admin:
        return _i4.Admin.t;
      case _i5.Category:
        return _i5.Category.t;
      case _i10.Option:
        return _i10.Option.t;
      case _i11.Player:
        return _i11.Player.t;
      case _i12.PlayQuiz:
        return _i12.PlayQuiz.t;
      case _i13.Question:
        return _i13.Question.t;
      case _i14.Quiz:
        return _i14.Quiz.t;
      case _i15.Rank:
        return _i15.Rank.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'lms';
}
