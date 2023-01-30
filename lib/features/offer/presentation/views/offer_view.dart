
import 'package:flutter/material.dart';
import 'package:mega/features/offer/presentation/views/widget/offer_view_body.dart';

class OfferView extends StatelessWidget {
  const OfferView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: OfferViewBody()),
    );
  }
}
