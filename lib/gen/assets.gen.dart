/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImageGen {
  const $AssetsImageGen();

  /// File path: assets/image/apple.png
  AssetGenImage get apple => const AssetGenImage('assets/image/apple.png');

  /// File path: assets/image/avatar.png
  AssetGenImage get avatar => const AssetGenImage('assets/image/avatar.png');

  /// File path: assets/image/avocado.jpeg
  AssetGenImage get avocado => const AssetGenImage('assets/image/avocado.jpeg');

  /// File path: assets/image/avocado1.png
  AssetGenImage get avocado1 =>
      const AssetGenImage('assets/image/avocado1.png');

  /// File path: assets/image/beef-food.png
  AssetGenImage get beefFood =>
      const AssetGenImage('assets/image/beef-food.png');

  /// File path: assets/image/bell-pepper.png
  AssetGenImage get bellPepper =>
      const AssetGenImage('assets/image/bell-pepper.png');

  /// File path: assets/image/broccoli.png
  AssetGenImage get broccoli =>
      const AssetGenImage('assets/image/broccoli.png');

  /// File path: assets/image/cheese.png
  AssetGenImage get cheese => const AssetGenImage('assets/image/cheese.png');

  /// File path: assets/image/home.png
  AssetGenImage get home => const AssetGenImage('assets/image/home.png');

  /// File path: assets/image/leaf1.png
  AssetGenImage get leaf1 => const AssetGenImage('assets/image/leaf1.png');

  /// File path: assets/image/leaf2.png
  AssetGenImage get leaf2 => const AssetGenImage('assets/image/leaf2.png');

  /// File path: assets/image/leaf3.png
  AssetGenImage get leaf3 => const AssetGenImage('assets/image/leaf3.png');

  /// File path: assets/image/list.png
  AssetGenImage get list => const AssetGenImage('assets/image/list.png');

  /// File path: assets/image/location.png
  AssetGenImage get location =>
      const AssetGenImage('assets/image/location.png');

  /// File path: assets/image/meat.png
  AssetGenImage get meat => const AssetGenImage('assets/image/meat.png');

  /// File path: assets/image/pad.png
  AssetGenImage get pad => const AssetGenImage('assets/image/pad.png');

  /// File path: assets/image/search.png
  AssetGenImage get search => const AssetGenImage('assets/image/search.png');

  /// File path: assets/image/shopping-cart.png
  AssetGenImage get shoppingCart =>
      const AssetGenImage('assets/image/shopping-cart.png');

  /// File path: assets/image/user.png
  AssetGenImage get user => const AssetGenImage('assets/image/user.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        apple,
        avatar,
        avocado,
        avocado1,
        beefFood,
        bellPepper,
        broccoli,
        cheese,
        home,
        leaf1,
        leaf2,
        leaf3,
        list,
        location,
        meat,
        pad,
        search,
        shoppingCart,
        user
      ];
}

class $AssetsLogoGen {
  const $AssetsLogoGen();

  /// File path: assets/logo/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/logo/logo.png');

  /// File path: assets/logo/logoDark.png
  AssetGenImage get logoDark => const AssetGenImage('assets/logo/logoDark.png');

  /// List of all assets
  List<AssetGenImage> get values => [logo, logoDark];
}

class $AssetsPromotionGen {
  const $AssetsPromotionGen();

  /// File path: assets/promotion/promotion1.png
  AssetGenImage get promotion1 =>
      const AssetGenImage('assets/promotion/promotion1.png');

  /// File path: assets/promotion/promotion2.png
  AssetGenImage get promotion2 =>
      const AssetGenImage('assets/promotion/promotion2.png');

  /// List of all assets
  List<AssetGenImage> get values => [promotion1, promotion2];
}

class Assets {
  Assets._();

  static const $AssetsImageGen image = $AssetsImageGen();
  static const $AssetsLogoGen logo = $AssetsLogoGen();
  static const $AssetsPromotionGen promotion = $AssetsPromotionGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
