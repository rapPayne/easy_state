import 'package:flutter_test/flutter_test.dart';

import 'package:raw_state/raw_state.dart';

void main() {
  test('setting a value works', () {
    rawState.set('aString', 'The foo value');
    rawState.set('aInt', 77);
    rawState.set('aDouble', 77.77);
    rawState.set('aBool', true);
  });

  test('getting set String values works', () {
    rawState.set('aString', 'The foo value');
    String res = rawState.get<String>('aString');
    expect(res, 'The foo value');
  });
  test('getting set int values works', () {
    rawState.set('aInt', 77);
    int res = rawState.get<int>('aInt');
    expect(res, 77);
  });
  test('getting set double values works', () {
    rawState.set('aDouble', 77.77);
    double res = rawState.get<double>('aDouble');
    expect(res, 77.77);
  });
  test('getting set map values works', () {
    rawState.set('aMap', {'foo': 'bar', 'baz': 'qux'});
    Map res = rawState.get<Map>('aMap');
    expect(res, {'foo': 'bar', 'baz': 'qux'});
  });
  test('getting set bool values works', () {
    rawState.set('aBool', true);
    bool res = rawState.get<bool>('aBool');
    expect(res, true);
  });
}
