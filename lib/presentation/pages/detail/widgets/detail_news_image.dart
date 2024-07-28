import 'dart:async';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/global_shimmer.dart';

class DetailNewsImage extends StatefulWidget {
  const DetailNewsImage({super.key, required this.postId});

  final String postId;

  @override
  State<DetailNewsImage> createState() => _DetailNewsImageState();
}

class _DetailNewsImageState extends State<DetailNewsImage> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('posts').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData || _isLoading) {
          return GlobalShimmer(
            width: 327.w,
            height: 208.h,
          );
        }
        final postDatas = snapshot.data!;
        final post = postDatas.docs.firstWhere(
          (doc) => doc['postId'] == widget.postId,
        );
        final postImage = post['newsPhoto'];
        return Container(
          width: 327.w,
          height: 208.h,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(18),
            ),
          ),
          child: Image.file(
            File(postImage),
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
