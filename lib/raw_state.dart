library raw_state;

RawState rawState = RawState();

class RawState {
  RawState();
  final Map<String, dynamic> _rawState = {};

  T get<T>(String key) {
    assert(_rawState[key] != null, "$key is null");
    return _rawState[key] as T;
  }

  T? maybeGet<T>(String key) {
    return _rawState[key] as T;
  }

  void set(String key, dynamic value) {
    _rawState[key] = value;
  }
}
