void main() {}

class TimeMap {
  Map<String, List<Map<String, dynamic>>> _datos = {};

  TimeMap() {
    _datos = {};
  }

  void set(String key, String value, int timestamp) {
    if (!_datos.containsKey(key)) {
      _datos[key] = [];
    }
    _datos[key]!.add({'value': value, 'timestamp': timestamp});
  }

  String get(String key, int timestamp) {
    if (!_datos.containsKey(key)) {
      return "";
    }
    List<Map<String, dynamic>>? values = _datos[key];
    int i = _binarySearch(values!, timestamp);
    if (i < 0) {
      return "";
    }
    return values[i]['value'];
  }

  int _binarySearch(List<Map<String, dynamic>> values, int timestamp) {
    int l = 0;
    int r = values.length - 1;
    while (l <= r) {
      int mid = l + ((r - l) ~/ 2);
      if (values[mid]['timestamp'] == timestamp) {
        return mid;
      } else if (values[mid]['timestamp'] < timestamp) {
        l = mid + 1;
      } else {
        r = mid - 1;
      }
    }
    return r;
  }
}
