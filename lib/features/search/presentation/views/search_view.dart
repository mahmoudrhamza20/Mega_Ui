

import 'package:flutter/material.dart';
import 'package:mega/features/search/presentation/views/widget/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:SearchViewBody() ,
    );

  }
}
