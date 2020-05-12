import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc_counter/bloc/counter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterBloc', () {
    CounterBloc counterBloc;

    setUp(() {
      counterBloc = CounterBloc();
    });

    test('initial state is 0', () {
      expect(counterBloc.initialState, 0);
    });

    blocTest(
      'emits [1] when CounterEvent.increment is added',
      build: () async => counterBloc,
      act: (bloc) async => bloc.add(CounterEvent.increment),
      expect: [1],
    );

    blocTest(
      'emits [-1] when CounterEvent.decrement is added',
      build: () async => counterBloc,
      act: (bloc) async => bloc.add(CounterEvent.decrement),
      expect: [-1],
    );
  });
}
