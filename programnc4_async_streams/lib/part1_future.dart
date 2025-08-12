Future<String> delayedMessage() {
  return Future.delayed(
    Duration(seconds: 2),
    () => 'Hello after 2 seconds!',
  );
}

Future<void> main() async {
  final message = await delayedMessage();
  print(message);
}
