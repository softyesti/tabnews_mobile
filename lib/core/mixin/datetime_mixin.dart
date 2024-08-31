mixin DateTimeMixin {
  String getRelativeTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    final days = difference.inDays;
    final hours = difference.inHours;
    final minutes = difference.inMinutes;
    final seconds = difference.inSeconds;

    if (days > 0) {
      return '$days dia(s) atrás';
    } else if (hours > 0) {
      return '$hours hora(s) atrás';
    } else if (minutes > 0) {
      return '$minutes minuto(s) atrás';
    } else if (seconds > 0) {
      return '$seconds segundo(s) atrás';
    } else {
      return 'agora';
    }
  }
}
