// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubjectAdapter extends TypeAdapter<_$SubjectImpl> {
  @override
  final int typeId = 10;

  @override
  _$SubjectImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$SubjectImpl(
      id: fields[0] as String,
      created: fields[1] as DateTime,
      updated: fields[2] as DateTime,
      scheduleId: fields[3] as String,
      name: fields[4] as String,
      type: fields[5] as String,
      startTime: fields[6] as String,
      dayOfWeek: fields[7] as DayOfWeek,
      duration: fields[8] as Duration,
      isRemote: fields[9] as bool,
      comment: fields[10] as String,
      schedule: fields[11] as ScheduleBase,
      classroom: fields[12] as Classroom,
      lessons: (fields[13] as List).cast<SubjectLesson>(),
      groups: (fields[14] as List).cast<SubjectGroup>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$SubjectImpl obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.created)
      ..writeByte(2)
      ..write(obj.updated)
      ..writeByte(3)
      ..write(obj.scheduleId)
      ..writeByte(4)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.startTime)
      ..writeByte(7)
      ..write(obj.dayOfWeek)
      ..writeByte(8)
      ..write(obj.duration)
      ..writeByte(9)
      ..write(obj.isRemote)
      ..writeByte(10)
      ..write(obj.comment)
      ..writeByte(11)
      ..write(obj.schedule)
      ..writeByte(12)
      ..write(obj.classroom)
      ..writeByte(13)
      ..write(obj.lessons)
      ..writeByte(14)
      ..write(obj.groups);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubjectAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SubjectLessonAdapter extends TypeAdapter<_$SubjectLessonImpl> {
  @override
  final int typeId = 11;

  @override
  _$SubjectLessonImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$SubjectLessonImpl(
      id: fields[0] as String,
      created: fields[1] as DateTime,
      updated: fields[2] as DateTime,
      numberOfLesson: fields[3] as int,
      startTime: fields[4] as DateTime,
      duration: fields[5] as Duration,
    );
  }

  @override
  void write(BinaryWriter writer, _$SubjectLessonImpl obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.created)
      ..writeByte(2)
      ..write(obj.updated)
      ..writeByte(3)
      ..write(obj.numberOfLesson)
      ..writeByte(4)
      ..write(obj.startTime)
      ..writeByte(5)
      ..write(obj.duration);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubjectLessonAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SubjectGroupAdapter extends TypeAdapter<_$SubjectGroupImpl> {
  @override
  final int typeId = 12;

  @override
  _$SubjectGroupImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$SubjectGroupImpl(
      id: fields[0] as String,
      created: fields[1] as DateTime,
      updated: fields[2] as DateTime,
      scheduleId: fields[3] as String,
      name: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$SubjectGroupImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.created)
      ..writeByte(2)
      ..write(obj.updated)
      ..writeByte(3)
      ..write(obj.scheduleId)
      ..writeByte(4)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubjectGroupAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubjectImpl _$$SubjectImplFromJson(Map<String, dynamic> json) =>
    _$SubjectImpl(
      id: json['id'] as String,
      created: const DateTimeConverter().fromJson(json['created'] as String),
      updated: const DateTimeConverter().fromJson(json['updated'] as String),
      scheduleId: json['scheduleId'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      startTime: json['startTime'] as String,
      dayOfWeek:
          const DayOfWeekConverter().fromJson(json['dayOfWeek'] as String),
      duration:
          const ApiDurationConverter().fromJson(json['duration'] as String),
      isRemote: json['isRemote'] as bool,
      comment: json['comment'] as String,
      schedule: ScheduleBase.fromJson(json['schedule'] as Map<String, dynamic>),
      classroom: Classroom.fromJson(json['classroom'] as Map<String, dynamic>),
      lessons: (json['lessons'] as List<dynamic>)
          .map((e) => SubjectLesson.fromJson(e as Map<String, dynamic>))
          .toList(),
      groups: (json['groups'] as List<dynamic>)
          .map((e) => SubjectGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubjectImplToJson(_$SubjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': const DateTimeConverter().toJson(instance.created),
      'updated': const DateTimeConverter().toJson(instance.updated),
      'scheduleId': instance.scheduleId,
      'name': instance.name,
      'type': instance.type,
      'startTime': instance.startTime,
      'dayOfWeek': const DayOfWeekConverter().toJson(instance.dayOfWeek),
      'duration': const ApiDurationConverter().toJson(instance.duration),
      'isRemote': instance.isRemote,
      'comment': instance.comment,
      'schedule': instance.schedule,
      'classroom': instance.classroom,
      'lessons': instance.lessons,
      'groups': instance.groups,
    };

_$SubjectLessonImpl _$$SubjectLessonImplFromJson(Map<String, dynamic> json) =>
    _$SubjectLessonImpl(
      id: json['id'] as String,
      created: const DateTimeConverter().fromJson(json['created'] as String),
      updated: const DateTimeConverter().fromJson(json['updated'] as String),
      numberOfLesson: json['numberOfLesson'] as int,
      startTime:
          const DateTimeConverter().fromJson(json['startTime'] as String),
      duration:
          const ApiDurationConverter().fromJson(json['duration'] as String),
    );

Map<String, dynamic> _$$SubjectLessonImplToJson(_$SubjectLessonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': const DateTimeConverter().toJson(instance.created),
      'updated': const DateTimeConverter().toJson(instance.updated),
      'numberOfLesson': instance.numberOfLesson,
      'startTime': const DateTimeConverter().toJson(instance.startTime),
      'duration': const ApiDurationConverter().toJson(instance.duration),
    };

_$SubjectGroupImpl _$$SubjectGroupImplFromJson(Map<String, dynamic> json) =>
    _$SubjectGroupImpl(
      id: json['id'] as String,
      created: const DateTimeConverter().fromJson(json['created'] as String),
      updated: const DateTimeConverter().fromJson(json['updated'] as String),
      scheduleId: json['scheduleId'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$SubjectGroupImplToJson(_$SubjectGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': const DateTimeConverter().toJson(instance.created),
      'updated': const DateTimeConverter().toJson(instance.updated),
      'scheduleId': instance.scheduleId,
      'name': instance.name,
    };
