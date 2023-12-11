// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_qiita_posts.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchQiitaPostsHash() => r'b601fe9e188e13a95c84a53bdea706544b37119d';

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

/// See also [fetchQiitaPosts].
@ProviderFor(fetchQiitaPosts)
const fetchQiitaPostsProvider = FetchQiitaPostsFamily();

/// See also [fetchQiitaPosts].
class FetchQiitaPostsFamily extends Family<AsyncValue<List<QiitaPost>>> {
  /// See also [fetchQiitaPosts].
  const FetchQiitaPostsFamily();

  /// See also [fetchQiitaPosts].
  FetchQiitaPostsProvider call({
    required String tag,
    required int page,
  }) {
    return FetchQiitaPostsProvider(
      tag: tag,
      page: page,
    );
  }

  @override
  FetchQiitaPostsProvider getProviderOverride(
    covariant FetchQiitaPostsProvider provider,
  ) {
    return call(
      tag: provider.tag,
      page: provider.page,
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
  String? get name => r'fetchQiitaPostsProvider';
}

/// See also [fetchQiitaPosts].
class FetchQiitaPostsProvider
    extends AutoDisposeFutureProvider<List<QiitaPost>> {
  /// See also [fetchQiitaPosts].
  FetchQiitaPostsProvider({
    required String tag,
    required int page,
  }) : this._internal(
          (ref) => fetchQiitaPosts(
            ref as FetchQiitaPostsRef,
            tag: tag,
            page: page,
          ),
          from: fetchQiitaPostsProvider,
          name: r'fetchQiitaPostsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchQiitaPostsHash,
          dependencies: FetchQiitaPostsFamily._dependencies,
          allTransitiveDependencies:
              FetchQiitaPostsFamily._allTransitiveDependencies,
          tag: tag,
          page: page,
        );

  FetchQiitaPostsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tag,
    required this.page,
  }) : super.internal();

  final String tag;
  final int page;

  @override
  Override overrideWith(
    FutureOr<List<QiitaPost>> Function(FetchQiitaPostsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchQiitaPostsProvider._internal(
        (ref) => create(ref as FetchQiitaPostsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tag: tag,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<QiitaPost>> createElement() {
    return _FetchQiitaPostsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchQiitaPostsProvider &&
        other.tag == tag &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tag.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchQiitaPostsRef on AutoDisposeFutureProviderRef<List<QiitaPost>> {
  /// The parameter `tag` of this provider.
  String get tag;

  /// The parameter `page` of this provider.
  int get page;
}

class _FetchQiitaPostsProviderElement
    extends AutoDisposeFutureProviderElement<List<QiitaPost>>
    with FetchQiitaPostsRef {
  _FetchQiitaPostsProviderElement(super.provider);

  @override
  String get tag => (origin as FetchQiitaPostsProvider).tag;
  @override
  int get page => (origin as FetchQiitaPostsProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
