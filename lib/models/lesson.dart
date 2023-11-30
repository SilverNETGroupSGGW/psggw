import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:psggw/models/settings.dart';

enum LessonType {
  lecture,
  exercise,
  laboratory,
  project,
  seminar,
  other,
  unknown,
}

enum Day {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}

class Lesson {
  String id;
  DateTime created;
  DateTime updated;
  String scheduleId;
  String name;
  LessonType type;
  TimeOfDay startTime;
  Day dayOfWeek;
  Duration duration;
  String comment;
  List<String> groupsIds;
  String classroomId;
  List<String> lecturersIds;

  Lesson({
    this.id = '',
    required this.created,
    required this.updated,
    this.scheduleId = '',
    this.name = '',
    this.type = LessonType.unknown,
    this.startTime = const TimeOfDay(hour: 0, minute: 0),
    this.dayOfWeek = Day.monday,
    this.duration = const Duration(hours: 0),
    this.comment = '',
    this.groupsIds = const [],
    this.classroomId = '',
    this.lecturersIds = const [],
  });

  factory Lesson.fromJson(Map<String, dynamic> json) {
    return Lesson(
      id: json['id'],
      created: json['created'],
      updated: json['updated'],
      scheduleId: json['scheduleId'],
      name: json['name'],
      type: json['type'],
      startTime: json['startTime'],
      dayOfWeek: json['dayOfWeek'],
      duration: json['duration'],
      comment: json['comment'],
      groupsIds: json['groupsIds'],
      classroomId: json['classroomId'],
      lecturersIds: json['lecturersIds'],
    );
  }

  @override
  String toString() {
    return 'Lesson{id: $id, created: $created, updated: $updated, scheduleId: $scheduleId, name: $name, type: $type, startTime: $startTime, dayOfWeek: $dayOfWeek, duration: $duration, comment: $comment, groupsIds: $groupsIds, classroomId: $classroomId, lecturersIds: $lecturersIds}';
  }
}

class LessonsNotifier extends StateNotifier<List<Lesson>> {
  LessonsNotifier(this.ref) : super([]);
  final Ref ref;

  Future<bool> init() async {
    loadLessonsFromStorage();
    await ref.watch(settingsDataProvider.notifier).init();
    loadLessonsFromApi();
    return true;
  }

  Future<void> loadLessonsFromStorage() async {
    final lessonsBox = await Hive.openBox('lessons');
    final lessonsData = lessonsBox.get(
      'currentLessons',
      defaultValue: [],
    );
    if (lessonsData != null && lessonsData.isNotEmpty) state = lessonsData;
  }

  Future<void> loadLessonsFromApi() async {
    var dio = Dio(
      BaseOptions(
        validateStatus: (status) => true,
      ),
    );
    final Settings settings = ref.watch(settingsDataProvider);
    print(settings.accessToken);
    try {
      final response = await dio.get(
        '${settings.apiUrl}/Lessons',
        options: Options(
          headers: settings.header(),
        ),
      );
      if (response.statusCode == 200) {
        final List<dynamic> lessonsRaw = response.data;
        List<Lesson> lessons = [];
        final List<String> lessonIds =
            lessonsRaw.map((e) => e['id'].toString()).toList();
        for (var lessonId in lessonIds) {
          final response = await dio.get(
            '${settings.apiUrl}/Lessons/$lessonId/extended',
            options: Options(
              headers: settings.header(),
            ),
          );
          if (response.statusCode == 200) {
            final Map<String, dynamic> lessonRaw = response.data;
            final Lesson lesson = Lesson.fromJson(lessonRaw);
            lessons.add(lesson);
          }
        }
        state = lessons;
      }
    } catch (e) {
      print(e);
    }
  }

  void addLesson(Lesson lesson) {
    state.add(lesson);
  }

  void removeLesson(Lesson lesson) {
    state.remove(lesson);
  }

  void updateLesson(Lesson lesson) {
    state[state.indexWhere((element) => element.id == lesson.id)] = lesson;
  }

  void clear() {
    state.clear();
  }

  void addAll(List<Lesson> lessons) {
    state.addAll(lessons);
  }

  void removeAll(List<Lesson> lessons) {
    state.removeWhere((element) => lessons.contains(element));
  }

  void updateAll(List<Lesson> lessons) {
    lessons.forEach((element) {
      state[state.indexWhere((e) => e.id == element.id)] = element;
    });
  }
}

final lessonsDataProvider =
    StateNotifierProvider<LessonsNotifier, List<Lesson>>(
  (ref) {
    return LessonsNotifier(ref);
  },
);
