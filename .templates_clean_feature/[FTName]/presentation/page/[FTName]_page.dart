import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/<FTName>_bloc.dart';

class <FTName | capitalCase>Page extends StatelessWidget {
  const <FTName | capitalCase>Page({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return BlocProvider<<FTName | capitalCase>Bloc>(
      create: (_) => <<FTName | capitalCase>Bloc>(),
      child: <FTName | capitalCase>View(),
    );
  }
}
