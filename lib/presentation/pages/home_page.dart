import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_practice1201/presentation/bloc/animated_bloc.dart';
import 'package:flutter_bloc_practice1201/presentation/bloc/animated_event.dart';
import 'package:flutter_bloc_practice1201/presentation/bloc/animated_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
    final random = Random();


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container Demo"),
        backgroundColor: Colors.blueGrey,
      ),
      body: GestureDetector(
        onTap: () {
          context.read<AnimatedBloc>().add(
                ClickEvent(
                  randomSize: random.nextDouble() * 200 + 50,
                  randomColor: Color.fromRGBO(
                    random.nextInt(256),
                    random.nextInt(256),
                    random.nextInt(256),
                    1.0,
                  ),
                ),
              );
        },
        child: Center(
          child: BlocBuilder<AnimatedBloc, AnimatedState>(
            builder: (context, state) {
              if (state is AnimatedInitial) {
                return AnimatedContainer(
                  duration: const Duration(seconds: 2),
                  width: state.size,
                  height: state.size, 
                  color: state.color,
                );
              } else if (state is Animatedloading) {
                return const CircularProgressIndicator();
              } else {
                return Container();
              }
            },
          ),
        ),
      ),
    );
  }
}
