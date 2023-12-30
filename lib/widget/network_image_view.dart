import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:interview_task/widget/unable_load_view.dart';

class NetworkImageView extends StatelessWidget {
  final String imageUrl;
  final double? height;
  final BoxFit? fit;

  const NetworkImageView({
    required this.imageUrl,
    this.height,
    this.fit,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        CachedNetworkImage(
          memCacheHeight: 200,
          imageUrl: imageUrl,
          height: height,
          placeholder: (context, url) => Container(
            color: Colors.grey,
          ),
          errorWidget: (context, url, error) => const UnableLoadView(),
          fit: fit ?? BoxFit.cover,
        ),
        CachedNetworkImage(
          imageUrl: imageUrl,
          height: height,
          placeholder: (context, url) => Container(
            color: Colors.grey,
          ),
          errorWidget: (context, url, error) => Container(
            color: Colors.grey,
          ),
          fit: fit ?? BoxFit.cover,
        ),
      ],
    );
  }
}
