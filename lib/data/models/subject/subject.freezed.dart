// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Subject _$SubjectFromJson(Map<String, dynamic> json) {
  return _Subject.fromJson(json);
}

/// @nodoc
mixin _$Subject {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @DateTimeConverter()
  DateTime get created => throw _privateConstructorUsedError;
  @HiveField(2)
  @DateTimeConverter()
  DateTime get updated => throw _privateConstructorUsedError;
  @HiveField(3)
  String get scheduleId => throw _privateConstructorUsedError;
  @HiveField(4)
  String get name => throw _privateConstructorUsedError;
  @HiveField(5)
  String get type => throw _privateConstructorUsedError;
  @HiveField(6)
  String get startTime => throw _privateConstructorUsedError;
  @HiveField(7)
  @DayOfWeekConverter()
  DayOfWeek get dayOfWeek => throw _privateConstructorUsedError;
  @HiveField(8)
  @ApiDurationConverter()
  Duration get duration => throw _privateConstructorUsedError;
  @HiveField(9)
  bool get isRemote => throw _privateConstructorUsedError;
  @HiveField(10)
  String get comment => throw _privateConstructorUsedError;
  @HiveField(11)
  ScheduleBase get schedule => throw _privateConstructorUsedError;
  @HiveField(12)
  Classroom get classroom => throw _privateConstructorUsedError;
  @HiveField(13)
  List<SubjectLesson> get lessons => throw _privateConstructorUsedError;
  @HiveField(14)
  List<SubjectGroup> get groups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectCopyWith<Subject> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectCopyWith<$Res> {
  factory $SubjectCopyWith(Subject value, $Res Function(Subject) then) =
      _$SubjectCopyWithImpl<$Res, Subject>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime created,
      @HiveField(2) @DateTimeConverter() DateTime updated,
      @HiveField(3) String scheduleId,
      @HiveField(4) String name,
      @HiveField(5) String type,
      @HiveField(6) String startTime,
      @HiveField(7) @DayOfWeekConverter() DayOfWeek dayOfWeek,
      @HiveField(8) @ApiDurationConverter() Duration duration,
      @HiveField(9) bool isRemote,
      @HiveField(10) String comment,
      @HiveField(11) ScheduleBase schedule,
      @HiveField(12) Classroom classroom,
      @HiveField(13) List<SubjectLesson> lessons,
      @HiveField(14) List<SubjectGroup> groups});

  $ScheduleBaseCopyWith<$Res> get schedule;
  $ClassroomCopyWith<$Res> get classroom;
}

/// @nodoc
class _$SubjectCopyWithImpl<$Res, $Val extends Subject>
    implements $SubjectCopyWith<$Res> {
  _$SubjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? updated = null,
    Object? scheduleId = null,
    Object? name = null,
    Object? type = null,
    Object? startTime = null,
    Object? dayOfWeek = null,
    Object? duration = null,
    Object? isRemote = null,
    Object? comment = null,
    Object? schedule = null,
    Object? classroom = null,
    Object? lessons = null,
    Object? groups = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as DayOfWeek,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      isRemote: null == isRemote
          ? _value.isRemote
          : isRemote // ignore: cast_nullable_to_non_nullable
              as bool,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ScheduleBase,
      classroom: null == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as Classroom,
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<SubjectLesson>,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<SubjectGroup>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduleBaseCopyWith<$Res> get schedule {
    return $ScheduleBaseCopyWith<$Res>(_value.schedule, (value) {
      return _then(_value.copyWith(schedule: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ClassroomCopyWith<$Res> get classroom {
    return $ClassroomCopyWith<$Res>(_value.classroom, (value) {
      return _then(_value.copyWith(classroom: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubjectImplCopyWith<$Res> implements $SubjectCopyWith<$Res> {
  factory _$$SubjectImplCopyWith(
          _$SubjectImpl value, $Res Function(_$SubjectImpl) then) =
      __$$SubjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime created,
      @HiveField(2) @DateTimeConverter() DateTime updated,
      @HiveField(3) String scheduleId,
      @HiveField(4) String name,
      @HiveField(5) String type,
      @HiveField(6) String startTime,
      @HiveField(7) @DayOfWeekConverter() DayOfWeek dayOfWeek,
      @HiveField(8) @ApiDurationConverter() Duration duration,
      @HiveField(9) bool isRemote,
      @HiveField(10) String comment,
      @HiveField(11) ScheduleBase schedule,
      @HiveField(12) Classroom classroom,
      @HiveField(13) List<SubjectLesson> lessons,
      @HiveField(14) List<SubjectGroup> groups});

  @override
  $ScheduleBaseCopyWith<$Res> get schedule;
  @override
  $ClassroomCopyWith<$Res> get classroom;
}

/// @nodoc
class __$$SubjectImplCopyWithImpl<$Res>
    extends _$SubjectCopyWithImpl<$Res, _$SubjectImpl>
    implements _$$SubjectImplCopyWith<$Res> {
  __$$SubjectImplCopyWithImpl(
      _$SubjectImpl _value, $Res Function(_$SubjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? updated = null,
    Object? scheduleId = null,
    Object? name = null,
    Object? type = null,
    Object? startTime = null,
    Object? dayOfWeek = null,
    Object? duration = null,
    Object? isRemote = null,
    Object? comment = null,
    Object? schedule = null,
    Object? classroom = null,
    Object? lessons = null,
    Object? groups = null,
  }) {
    return _then(_$SubjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as DayOfWeek,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      isRemote: null == isRemote
          ? _value.isRemote
          : isRemote // ignore: cast_nullable_to_non_nullable
              as bool,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ScheduleBase,
      classroom: null == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as Classroom,
      lessons: null == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<SubjectLesson>,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<SubjectGroup>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypeIds.subject, adapterName: "SubjectAdapter")
class _$SubjectImpl extends _Subject {
  _$SubjectImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) @DateTimeConverter() required this.created,
      @HiveField(2) @DateTimeConverter() required this.updated,
      @HiveField(3) required this.scheduleId,
      @HiveField(4) required this.name,
      @HiveField(5) required this.type,
      @HiveField(6) required this.startTime,
      @HiveField(7) @DayOfWeekConverter() required this.dayOfWeek,
      @HiveField(8) @ApiDurationConverter() required this.duration,
      @HiveField(9) required this.isRemote,
      @HiveField(10) required this.comment,
      @HiveField(11) required this.schedule,
      @HiveField(12) required this.classroom,
      @HiveField(13) required final List<SubjectLesson> lessons,
      @HiveField(14) required final List<SubjectGroup> groups})
      : _lessons = lessons,
        _groups = groups,
        super._();

  factory _$SubjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  @DateTimeConverter()
  final DateTime created;
  @override
  @HiveField(2)
  @DateTimeConverter()
  final DateTime updated;
  @override
  @HiveField(3)
  final String scheduleId;
  @override
  @HiveField(4)
  final String name;
  @override
  @HiveField(5)
  final String type;
  @override
  @HiveField(6)
  final String startTime;
  @override
  @HiveField(7)
  @DayOfWeekConverter()
  final DayOfWeek dayOfWeek;
  @override
  @HiveField(8)
  @ApiDurationConverter()
  final Duration duration;
  @override
  @HiveField(9)
  final bool isRemote;
  @override
  @HiveField(10)
  final String comment;
  @override
  @HiveField(11)
  final ScheduleBase schedule;
  @override
  @HiveField(12)
  final Classroom classroom;
  final List<SubjectLesson> _lessons;
  @override
  @HiveField(13)
  List<SubjectLesson> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  final List<SubjectGroup> _groups;
  @override
  @HiveField(14)
  List<SubjectGroup> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'Subject(id: $id, created: $created, updated: $updated, scheduleId: $scheduleId, name: $name, type: $type, startTime: $startTime, dayOfWeek: $dayOfWeek, duration: $duration, isRemote: $isRemote, comment: $comment, schedule: $schedule, classroom: $classroom, lessons: $lessons, groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isRemote, isRemote) ||
                other.isRemote == isRemote) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.classroom, classroom) ||
                other.classroom == classroom) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons) &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      created,
      updated,
      scheduleId,
      name,
      type,
      startTime,
      dayOfWeek,
      duration,
      isRemote,
      comment,
      schedule,
      classroom,
      const DeepCollectionEquality().hash(_lessons),
      const DeepCollectionEquality().hash(_groups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectImplCopyWith<_$SubjectImpl> get copyWith =>
      __$$SubjectImplCopyWithImpl<_$SubjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectImplToJson(
      this,
    );
  }
}

abstract class _Subject extends Subject {
  factory _Subject(
      {@HiveField(0) required final String id,
      @HiveField(1) @DateTimeConverter() required final DateTime created,
      @HiveField(2) @DateTimeConverter() required final DateTime updated,
      @HiveField(3) required final String scheduleId,
      @HiveField(4) required final String name,
      @HiveField(5) required final String type,
      @HiveField(6) required final String startTime,
      @HiveField(7) @DayOfWeekConverter() required final DayOfWeek dayOfWeek,
      @HiveField(8) @ApiDurationConverter() required final Duration duration,
      @HiveField(9) required final bool isRemote,
      @HiveField(10) required final String comment,
      @HiveField(11) required final ScheduleBase schedule,
      @HiveField(12) required final Classroom classroom,
      @HiveField(13) required final List<SubjectLesson> lessons,
      @HiveField(14) required final List<SubjectGroup> groups}) = _$SubjectImpl;
  _Subject._() : super._();

  factory _Subject.fromJson(Map<String, dynamic> json) = _$SubjectImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  @DateTimeConverter()
  DateTime get created;
  @override
  @HiveField(2)
  @DateTimeConverter()
  DateTime get updated;
  @override
  @HiveField(3)
  String get scheduleId;
  @override
  @HiveField(4)
  String get name;
  @override
  @HiveField(5)
  String get type;
  @override
  @HiveField(6)
  String get startTime;
  @override
  @HiveField(7)
  @DayOfWeekConverter()
  DayOfWeek get dayOfWeek;
  @override
  @HiveField(8)
  @ApiDurationConverter()
  Duration get duration;
  @override
  @HiveField(9)
  bool get isRemote;
  @override
  @HiveField(10)
  String get comment;
  @override
  @HiveField(11)
  ScheduleBase get schedule;
  @override
  @HiveField(12)
  Classroom get classroom;
  @override
  @HiveField(13)
  List<SubjectLesson> get lessons;
  @override
  @HiveField(14)
  List<SubjectGroup> get groups;
  @override
  @JsonKey(ignore: true)
  _$$SubjectImplCopyWith<_$SubjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubjectLesson _$SubjectLessonFromJson(Map<String, dynamic> json) {
  return _SubjectLesson.fromJson(json);
}

/// @nodoc
mixin _$SubjectLesson {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @DateTimeConverter()
  DateTime get created => throw _privateConstructorUsedError;
  @HiveField(2)
  @DateTimeConverter()
  DateTime get updated => throw _privateConstructorUsedError;
  @HiveField(3)
  int get numberOfLesson => throw _privateConstructorUsedError;
  @HiveField(4)
  @DateTimeConverter()
  DateTime get startTime => throw _privateConstructorUsedError;
  @HiveField(5)
  @ApiDurationConverter()
  Duration get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectLessonCopyWith<SubjectLesson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectLessonCopyWith<$Res> {
  factory $SubjectLessonCopyWith(
          SubjectLesson value, $Res Function(SubjectLesson) then) =
      _$SubjectLessonCopyWithImpl<$Res, SubjectLesson>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime created,
      @HiveField(2) @DateTimeConverter() DateTime updated,
      @HiveField(3) int numberOfLesson,
      @HiveField(4) @DateTimeConverter() DateTime startTime,
      @HiveField(5) @ApiDurationConverter() Duration duration});
}

/// @nodoc
class _$SubjectLessonCopyWithImpl<$Res, $Val extends SubjectLesson>
    implements $SubjectLessonCopyWith<$Res> {
  _$SubjectLessonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? updated = null,
    Object? numberOfLesson = null,
    Object? startTime = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      numberOfLesson: null == numberOfLesson
          ? _value.numberOfLesson
          : numberOfLesson // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubjectLessonImplCopyWith<$Res>
    implements $SubjectLessonCopyWith<$Res> {
  factory _$$SubjectLessonImplCopyWith(
          _$SubjectLessonImpl value, $Res Function(_$SubjectLessonImpl) then) =
      __$$SubjectLessonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime created,
      @HiveField(2) @DateTimeConverter() DateTime updated,
      @HiveField(3) int numberOfLesson,
      @HiveField(4) @DateTimeConverter() DateTime startTime,
      @HiveField(5) @ApiDurationConverter() Duration duration});
}

/// @nodoc
class __$$SubjectLessonImplCopyWithImpl<$Res>
    extends _$SubjectLessonCopyWithImpl<$Res, _$SubjectLessonImpl>
    implements _$$SubjectLessonImplCopyWith<$Res> {
  __$$SubjectLessonImplCopyWithImpl(
      _$SubjectLessonImpl _value, $Res Function(_$SubjectLessonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? updated = null,
    Object? numberOfLesson = null,
    Object? startTime = null,
    Object? duration = null,
  }) {
    return _then(_$SubjectLessonImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      numberOfLesson: null == numberOfLesson
          ? _value.numberOfLesson
          : numberOfLesson // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(
    typeId: HiveTypeIds.subjectLesson, adapterName: "SubjectLessonAdapter")
class _$SubjectLessonImpl extends _SubjectLesson {
  _$SubjectLessonImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) @DateTimeConverter() required this.created,
      @HiveField(2) @DateTimeConverter() required this.updated,
      @HiveField(3) required this.numberOfLesson,
      @HiveField(4) @DateTimeConverter() required this.startTime,
      @HiveField(5) @ApiDurationConverter() required this.duration})
      : super._();

  factory _$SubjectLessonImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectLessonImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  @DateTimeConverter()
  final DateTime created;
  @override
  @HiveField(2)
  @DateTimeConverter()
  final DateTime updated;
  @override
  @HiveField(3)
  final int numberOfLesson;
  @override
  @HiveField(4)
  @DateTimeConverter()
  final DateTime startTime;
  @override
  @HiveField(5)
  @ApiDurationConverter()
  final Duration duration;

  @override
  String toString() {
    return 'SubjectLesson(id: $id, created: $created, updated: $updated, numberOfLesson: $numberOfLesson, startTime: $startTime, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectLessonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.numberOfLesson, numberOfLesson) ||
                other.numberOfLesson == numberOfLesson) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, created, updated, numberOfLesson, startTime, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectLessonImplCopyWith<_$SubjectLessonImpl> get copyWith =>
      __$$SubjectLessonImplCopyWithImpl<_$SubjectLessonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectLessonImplToJson(
      this,
    );
  }
}

abstract class _SubjectLesson extends SubjectLesson {
  factory _SubjectLesson(
      {@HiveField(0) required final String id,
      @HiveField(1) @DateTimeConverter() required final DateTime created,
      @HiveField(2) @DateTimeConverter() required final DateTime updated,
      @HiveField(3) required final int numberOfLesson,
      @HiveField(4) @DateTimeConverter() required final DateTime startTime,
      @HiveField(5)
      @ApiDurationConverter()
      required final Duration duration}) = _$SubjectLessonImpl;
  _SubjectLesson._() : super._();

  factory _SubjectLesson.fromJson(Map<String, dynamic> json) =
      _$SubjectLessonImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  @DateTimeConverter()
  DateTime get created;
  @override
  @HiveField(2)
  @DateTimeConverter()
  DateTime get updated;
  @override
  @HiveField(3)
  int get numberOfLesson;
  @override
  @HiveField(4)
  @DateTimeConverter()
  DateTime get startTime;
  @override
  @HiveField(5)
  @ApiDurationConverter()
  Duration get duration;
  @override
  @JsonKey(ignore: true)
  _$$SubjectLessonImplCopyWith<_$SubjectLessonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubjectGroup _$SubjectGroupFromJson(Map<String, dynamic> json) {
  return _SubjectGroup.fromJson(json);
}

/// @nodoc
mixin _$SubjectGroup {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @DateTimeConverter()
  DateTime get created => throw _privateConstructorUsedError;
  @HiveField(2)
  @DateTimeConverter()
  DateTime get updated => throw _privateConstructorUsedError;
  @HiveField(3)
  String get scheduleId => throw _privateConstructorUsedError;
  @HiveField(4)
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectGroupCopyWith<SubjectGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectGroupCopyWith<$Res> {
  factory $SubjectGroupCopyWith(
          SubjectGroup value, $Res Function(SubjectGroup) then) =
      _$SubjectGroupCopyWithImpl<$Res, SubjectGroup>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime created,
      @HiveField(2) @DateTimeConverter() DateTime updated,
      @HiveField(3) String scheduleId,
      @HiveField(4) String name});
}

/// @nodoc
class _$SubjectGroupCopyWithImpl<$Res, $Val extends SubjectGroup>
    implements $SubjectGroupCopyWith<$Res> {
  _$SubjectGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? updated = null,
    Object? scheduleId = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubjectGroupImplCopyWith<$Res>
    implements $SubjectGroupCopyWith<$Res> {
  factory _$$SubjectGroupImplCopyWith(
          _$SubjectGroupImpl value, $Res Function(_$SubjectGroupImpl) then) =
      __$$SubjectGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime created,
      @HiveField(2) @DateTimeConverter() DateTime updated,
      @HiveField(3) String scheduleId,
      @HiveField(4) String name});
}

/// @nodoc
class __$$SubjectGroupImplCopyWithImpl<$Res>
    extends _$SubjectGroupCopyWithImpl<$Res, _$SubjectGroupImpl>
    implements _$$SubjectGroupImplCopyWith<$Res> {
  __$$SubjectGroupImplCopyWithImpl(
      _$SubjectGroupImpl _value, $Res Function(_$SubjectGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? updated = null,
    Object? scheduleId = null,
    Object? name = null,
  }) {
    return _then(_$SubjectGroupImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypeIds.subjectGroup, adapterName: "SubjectGroupAdapter")
class _$SubjectGroupImpl extends _SubjectGroup {
  _$SubjectGroupImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) @DateTimeConverter() required this.created,
      @HiveField(2) @DateTimeConverter() required this.updated,
      @HiveField(3) required this.scheduleId,
      @HiveField(4) required this.name})
      : super._();

  factory _$SubjectGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectGroupImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  @DateTimeConverter()
  final DateTime created;
  @override
  @HiveField(2)
  @DateTimeConverter()
  final DateTime updated;
  @override
  @HiveField(3)
  final String scheduleId;
  @override
  @HiveField(4)
  final String name;

  @override
  String toString() {
    return 'SubjectGroup(id: $id, created: $created, updated: $updated, scheduleId: $scheduleId, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, created, updated, scheduleId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectGroupImplCopyWith<_$SubjectGroupImpl> get copyWith =>
      __$$SubjectGroupImplCopyWithImpl<_$SubjectGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectGroupImplToJson(
      this,
    );
  }
}

abstract class _SubjectGroup extends SubjectGroup {
  factory _SubjectGroup(
      {@HiveField(0) required final String id,
      @HiveField(1) @DateTimeConverter() required final DateTime created,
      @HiveField(2) @DateTimeConverter() required final DateTime updated,
      @HiveField(3) required final String scheduleId,
      @HiveField(4) required final String name}) = _$SubjectGroupImpl;
  _SubjectGroup._() : super._();

  factory _SubjectGroup.fromJson(Map<String, dynamic> json) =
      _$SubjectGroupImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  @DateTimeConverter()
  DateTime get created;
  @override
  @HiveField(2)
  @DateTimeConverter()
  DateTime get updated;
  @override
  @HiveField(3)
  String get scheduleId;
  @override
  @HiveField(4)
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$SubjectGroupImplCopyWith<_$SubjectGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
