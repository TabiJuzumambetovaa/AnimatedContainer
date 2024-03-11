import 'dart:ui';

abstract class AnimatedState{


}
class AnimatedInitial extends AnimatedState{
  final Color color;
  final double size;
  AnimatedInitial({required this.color,required this.size});

}
class AnimatedSuccess extends AnimatedState{
}
class Animatedloading extends AnimatedState{}
class AnimatedError extends AnimatedState{
  
}


