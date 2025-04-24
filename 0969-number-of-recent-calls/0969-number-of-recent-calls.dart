import 'dart:collection';

class RecentCounter {
  final Queue<int> _queue;

  RecentCounter() : _queue = Queue<int>();

  int ping(int t) {
    _queue.addLast(t);

    while (_queue.isNotEmpty && _queue.first < t - 3000) {
      _queue.removeFirst();
    }

    return _queue.length;
  }
}