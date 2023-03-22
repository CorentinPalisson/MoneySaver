// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$BalanceControllerHash() => r'56cfe5351fd3e7b81beb06b535494929a24aadbb';

/// See also [BalanceController].
class BalanceControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<BalanceController, Balance> {
  BalanceControllerProvider({
    required this.monthDate,
  }) : super(
          () => BalanceController()..monthDate = monthDate,
          from: balanceControllerProvider,
          name: r'balanceControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$BalanceControllerHash,
        );

  final DateTime monthDate;

  @override
  bool operator ==(Object other) {
    return other is BalanceControllerProvider && other.monthDate == monthDate;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, monthDate.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<Balance> runNotifierBuild(
    covariant _$BalanceController notifier,
  ) {
    return notifier.build(
      monthDate: monthDate,
    );
  }
}

typedef BalanceControllerRef = AutoDisposeAsyncNotifierProviderRef<Balance>;

/// See also [BalanceController].
final balanceControllerProvider = BalanceControllerFamily();

class BalanceControllerFamily extends Family<AsyncValue<Balance>> {
  BalanceControllerFamily();

  BalanceControllerProvider call({
    required DateTime monthDate,
  }) {
    return BalanceControllerProvider(
      monthDate: monthDate,
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderImpl<BalanceController, Balance>
      getProviderOverride(
    covariant BalanceControllerProvider provider,
  ) {
    return call(
      monthDate: provider.monthDate,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'balanceControllerProvider';
}

abstract class _$BalanceController
    extends BuildlessAutoDisposeAsyncNotifier<Balance> {
  late final DateTime monthDate;

  FutureOr<Balance> build({
    required DateTime monthDate,
  });
}
