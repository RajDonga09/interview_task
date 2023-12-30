import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interview_task/widget/network_image_view.dart';

class CommonImageView extends StatefulWidget {
  final String imageUrl;
  final Color? color;
  final double? height;
  final bool? useOnlyCachedNetwork;
  final Uint8List? encodedImage;
  final BoxFit? fit;

  const CommonImageView({
    required this.imageUrl,
    super.key,
    this.height,
    this.useOnlyCachedNetwork,
    this.color,
    this.encodedImage,
    this.fit,
  });

  @override
  State<CommonImageView> createState() => _CommonImageViewState();
}

class _CommonImageViewState extends State<CommonImageView> {
  @override
  void initState() {
    super.initState();
    debugPrint('CommonImageView PATH: ${widget.imageUrl}');
  }

  @override
  Widget build(BuildContext context) {
    return (widget.encodedImage?.isNotEmpty ?? false)
        ? Image.memory(
            widget.encodedImage!,
            fit: widget.fit ?? BoxFit.cover,
            height: widget.height,
          )
        : widget.imageUrl.toLowerCase().contains('.svg')
            ? widget.imageUrl.toLowerCase().contains('http')
                ? SvgPicture.network(
                    widget.imageUrl,
                    fit: widget.fit ?? BoxFit.cover,
                    height: widget.height,
                    placeholderBuilder: (BuildContext context) => Container(),
                  )
                : widget.imageUrl.toLowerCase().contains('asset')
                    ? SvgPicture.asset(
                        widget.imageUrl,
                        fit: widget.fit ?? BoxFit.cover,
                        height: widget.height,
                      )
                    : SvgPicture.file(
                        File(widget.imageUrl),
                        fit: widget.fit ?? BoxFit.cover,
                        height: widget.height,
                      )
            : widget.imageUrl.toLowerCase().contains('.png') ||
                    widget.imageUrl.toLowerCase().contains('.gif') ||
                    widget.imageUrl.toLowerCase().contains('.jpg') ||
                    widget.imageUrl.toLowerCase().contains('.jpeg') ||
                    widget.imageUrl.toLowerCase().contains('http')
                ? widget.imageUrl.toLowerCase().contains('asset')
                    ? Image.asset(
                        widget.imageUrl,
                        fit: widget.fit ?? BoxFit.cover,
                        color: widget.color,
                        height: widget.height,
                      )
                    : widget.imageUrl.toLowerCase().contains('http')
                        ? widget.useOnlyCachedNetwork ?? false
                            ? CachedNetworkImage(
                                imageUrl: widget.imageUrl,
                                fit: widget.fit ?? BoxFit.cover,
                                color: widget.color,
                                height: widget.height,
                              )
                            : NetworkImageView(
                                imageUrl: widget.imageUrl,
                                height: widget.height,
                              )
                        : Image.file(
                            File(widget.imageUrl),
                            fit: widget.fit ?? BoxFit.cover,
                            color: widget.color,
                            height: widget.height,
                          )
                : Image.file(
                    File(widget.imageUrl),
                    fit: widget.fit ?? BoxFit.cover,
                    height: widget.height,
                    color: widget.color,
                  );
  }
}
