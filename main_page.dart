import 'package:flutter/material.dart';
import 'package:month_4/homework%202/bloc/bloc/cat_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final CatBloc _catBloc = CatBloc();

  @override
  void initState() {
    _catBloc.add(LoadCatGifEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<CatBloc, CatState>(
          bloc: _catBloc,
          builder: (context, state) {
            if (state is LoadedCatState) {
              return Image.network(state.gif);
            }
            if (state is ErrorCatState) {
              return Text(
                "ERROR",
                style: TextStyle(fontSize: 40, color: Colors.red),
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
