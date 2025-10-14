// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OrderNotifier)
const orderProvider = OrderNotifierProvider._();

final class OrderNotifierProvider
    extends $NotifierProvider<OrderNotifier, List<Ridemodels>> {
  const OrderNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orderNotifierHash();

  @$internal
  @override
  OrderNotifier create() => OrderNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Ridemodels> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Ridemodels>>(value),
    );
  }
}

String _$orderNotifierHash() => r'3544ca310b0d5daee56e5dfcb24cf5b0fc85aef0';

abstract class _$OrderNotifier extends $Notifier<List<Ridemodels>> {
  List<Ridemodels> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<Ridemodels>, List<Ridemodels>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Ridemodels>, List<Ridemodels>>,
              List<Ridemodels>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
