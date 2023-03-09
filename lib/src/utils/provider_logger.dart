import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// This class is just used to log a provider once changed
class ProviderLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    debugPrint(
        "Provider ${provider.name} changed from $previousValue to $newValue");
  }

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer container) {
    debugPrint("Provider ${provider.name} was disposed");
  }

  // @override
  // void didAddProvider(ProviderBase provider, ProviderContainer container) {
  //   debugPrint("Provider ${provider.name} was added");
  // }
}
