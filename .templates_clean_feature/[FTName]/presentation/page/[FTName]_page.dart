import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/<FTName>_bloc.dart';

class <FTName | pascalcase>Page extends StatelessWidget {
  const <FTName | pascalcase>Page({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return BlocProvider<<FTName | pascalcase>Bloc>(
      create: (_) => <<FTName | pascalcase>Bloc>(),
      child: <FTName | pascalcase>View(),
    );
  }
}
