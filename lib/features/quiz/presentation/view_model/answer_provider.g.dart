// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$answerHash() => r'ab9be27b38cb2f288be0377d863da13b942fc357';

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

abstract class _$Answer extends BuildlessAutoDisposeNotifier<Color> {
  late final int index;

  Color build(
    int index,
  );
}

/// See also [Answer].
@ProviderFor(Answer)
const answerProvider = AnswerFamily();

/// See also [Answer].
class AnswerFamily extends Family<Color> {
  /// See also [Answer].
  const AnswerFamily();

  /// See also [Answer].
  AnswerProvider call(
    int index,
  ) {
    return AnswerProvider(
      index,
    );
  }

  @override
  AnswerProvider getProviderOverride(
    covariant AnswerProvider provider,
  ) {
    return call(
      provider.index,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'answerProvider';
}

/// See also [Answer].
class AnswerProvider extends AutoDisposeNotifierProviderImpl<Answer, Color> {
  /// See also [Answer].
  AnswerProvider(
    int index,
  ) : this._internal(
          () => Answer()..index = index,
          from: answerProvider,
          name: r'answerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$answerHash,
          dependencies: AnswerFamily._dependencies,
          allTransitiveDependencies: AnswerFamily._allTransitiveDependencies,
          index: index,
        );

  AnswerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.index,
  }) : super.internal();

  final int index;

  @override
  Color runNotifierBuild(
    covariant Answer notifier,
  ) {
    return notifier.build(
      index,
    );
  }

  @override
  Override overrideWith(Answer Function() create) {
    return ProviderOverride(
      origin: this,
      override: AnswerProvider._internal(
        () => create()..index = index,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        index: index,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<Answer, Color> createElement() {
    return _AnswerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AnswerProvider && other.index == index;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AnswerRef on AutoDisposeNotifierProviderRef<Color> {
  /// The parameter `index` of this provider.
  int get index;
}

class _AnswerProviderElement
    extends AutoDisposeNotifierProviderElement<Answer, Color> with AnswerRef {
  _AnswerProviderElement(super.provider);

  @override
  int get index => (origin as AnswerProvider).index;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
