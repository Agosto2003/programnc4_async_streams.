import 'dart:async';

Future<void> simulateError() async {
  await Future.delayed(Duration(seconds: 2));
  throw Exception("An error occurred inside the Future!");
}

void main() async {
  try {
    await simulateError();
  } catch (e) {
    print("Caught an error: $e");
  }
}
