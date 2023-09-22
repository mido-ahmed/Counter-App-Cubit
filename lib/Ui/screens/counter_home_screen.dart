import 'package:counter_app_with_cubit/bloc/counter_cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class CounterHomeScreen extends StatelessWidget {
  const CounterHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CounterCubit cubit = CounterCubit.get(context);
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 80,
                  width: 300,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(197, 197, 197, 1),
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {
                          cubit.counterIncreased();
                        },
                        icon: const Icon(
                          Icons.plus_one_rounded,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          cubit.counterDecreased();
                        },
                        icon: const Icon(
                          Icons.exposure_minus_1,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 110,
                  child: Container(
                    width: 100.w,
                    height: 80.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child:
                        Center(child: BlocBuilder<CounterCubit, CounterState>(
                      builder: (context, state) {
                        return Text(
                          "${cubit.counter}",
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 60,
                          ),
                        );
                      },
                    )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
