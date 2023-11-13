import 'package:flutter/material.dart';
import 'package:hadathna_app/core/app/style.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(color: black),
    );
  }
}