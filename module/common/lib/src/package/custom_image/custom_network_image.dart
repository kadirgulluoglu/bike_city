import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/src/package/custom_image/custom_mem_cache.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Custom network image widget.
class CustomNetworkImage extends StatelessWidget {
  /// Creates a custom network image widget.
  const CustomNetworkImage({
    super.key,
    this.url,
    this.emptyWidget,
    this.memCache,
    this.boxFit = BoxFit.cover,
    this.loadingWidget,
    this.size,
  });

  /// Image URL.
  final String? url;

  /// When image URL is empty, this widget will be shown.
  final Widget? emptyWidget;

  /// BoxFit for the image fit default BoxFit.cover.
  final BoxFit boxFit;

  /// Memory cache for image is cache size.
  final CustomMemCache? memCache;

  /// Loading widget for image is loading.
  final Widget? loadingWidget;

  /// Size of the image.
  final Size? size;

  @override
  Widget build(BuildContext context) {
    if (url?.isEmpty ?? true) {
      return emptyWidget ?? const SizedBox();
    }
    return CachedNetworkImage(
      imageUrl: url!,
      memCacheHeight: memCache?.height ?? 300,
      memCacheWidth: memCache?.width ?? 300,
      progressIndicatorBuilder: (context, url, downloadProgress) {
        return loadingWidget ??
            CircularProgressIndicator(
              value: downloadProgress.progress,
            );
      },
      errorWidget: (context, url, error) {
        return emptyWidget ?? const SizedBox();
      },
      errorListener: (e) {
        if (kDebugMode) {
          debugPrint('Error: $e');
        }
      },
      height: size?.height,
      width: size?.width,
      fit: boxFit,
    );
  }
}
