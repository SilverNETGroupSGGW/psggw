import 'package:bloc_test/bloc_test.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/models/schedule/schedule_base.dart';
import 'package:silvertimetable/data/register_adapters.dart';
import 'package:silvertimetable/logic/faved_schedules/faved_schedules_cubit.dart';
import 'package:silvertimetable/logic/register_adapters.dart';

void main() async {
  registerLogicDataAdapters();
  registerDataAdapters();

  await Hive.openBox(
    hiveBoxName,
    path: testingLocation,
  );

  Box box = Hive.box(hiveBoxName);
  box.clear();
  ScheduleBase testSchedule = ScheduleBase.fromJson(
    {
      "id": "ba0d9a27-3078-4709-81e6-2d8b4e1c8a71",
      "created": "2023-11-27T00:00:06.6281617",
      "updated": "2023-11-27T00:00:06.6281618",
      "startDate": "0001-01-01T00:00:00+00:00",
      "name": "Informatyka R2S3 NONSTACIONARY MASTER",
      "year": 0,
      "semester": 0,
      "faculty": "DAS",
      "fieldOfStudy": "ASD",
      "studyMode": "Unknown",
      "degreeOfStudy": "AssociateDegree",
    },
  );

  blocTest<FavedSchedulesCubit, FavedSchedulesState>(
    'add schedule to FavedSchedulestate',
    build: () => FavedSchedulesCubit(),
    act: (bloc) => bloc.addSchedule(testSchedule),
    expect: () => [
      FavedSchedulesState(
        favedSchedules: [testSchedule],
        selectedSchedule: null,
      ),
    ],
    tearDown: () => box.clear(),
  );

  blocTest<FavedSchedulesCubit, FavedSchedulesState>(
    'checks if there can be double schedule',
    build: () => FavedSchedulesCubit(),
    act: (bloc) {
      bloc.addSchedule(testSchedule);
      bloc.addSchedule(testSchedule);
    },
    expect: () => [
      FavedSchedulesState(
        favedSchedules: [testSchedule],
        selectedSchedule: null,
      ),
    ],
    tearDown: () => box.clear(),
  );

  blocTest<FavedSchedulesCubit, FavedSchedulesState>(
    'select schedule from FavedSchedulestate',
    build: () => FavedSchedulesCubit(),
    act: (bloc) => bloc.selectSchedule(testSchedule),
    expect: () => [
      FavedSchedulesState(
        favedSchedules: [testSchedule],
        selectedSchedule: testSchedule,
      ),
    ],
    tearDown: () => box.clear(),
  );

  blocTest<FavedSchedulesCubit, FavedSchedulesState>(
    'remove schedule from FavedSchedulestate',
    build: () => FavedSchedulesCubit(),
    act: (bloc) {
      bloc.addSchedule(testSchedule);
      bloc.removeSchedule(testSchedule);
    },
    skip: 1,
    expect: () => [
      FavedSchedulesState(
        favedSchedules: [],
        selectedSchedule: null,
      ),
    ],
    tearDown: () => box.clear(),
  );

  blocTest<FavedSchedulesCubit, FavedSchedulesState>(
    'overwrite FavedSchedulestate with one schedule',
    build: () => FavedSchedulesCubit(),
    act: (bloc) => bloc.overwriteFavedSchedules([testSchedule]),
    expect: () => [
      FavedSchedulesState(
        favedSchedules: [testSchedule],
        selectedSchedule: null,
      ),
    ],
    tearDown: () => box.clear(),
  );

  blocTest<FavedSchedulesCubit, FavedSchedulesState>(
    'clear FavedSchedulestate',
    build: () => FavedSchedulesCubit(),
    act: (bloc) async {
      bloc.addSchedule(testSchedule);
      bloc.clearSchedules();
    },
    skip: 1,
    expect: () => [
      FavedSchedulesState(
        favedSchedules: [],
        selectedSchedule: null,
      ),
    ],
    tearDown: () => box.clear(),
  );

  blocTest<FavedSchedulesCubit, FavedSchedulesState>(
    'loads FavedSchedulestate from hive',
    build: () => FavedSchedulesCubit(),
    act: (bloc) {
      bloc.addSchedule(testSchedule);
      bloc.selectSchedule(testSchedule);
      bloc.loadFavedSchedules();
    },
    skip: 1,
    expect: () => [
      FavedSchedulesState(
        favedSchedules: [testSchedule],
        selectedSchedule: testSchedule,
      ),
    ],
    tearDown: () => box.clear(),
  );
}