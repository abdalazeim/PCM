import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/app_states.dart';
import 'package:points_counter/cubit/cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: const Text('points counter'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Spacer(
                flex: 1,
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //team A points and points control
                    Column(
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        //number of points in team A
                        SizedBox(
                          height: 180,
                          width: 150,
                          child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                '${BlocProvider.of<AppCubit>(context).teamAPoints}',
                                style: const TextStyle(fontSize: 150),
                              )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        //add 1 point
                        MaterialButton(
                          color: Colors.orange,
                          onPressed: () {
                            BlocProvider.of<AppCubit>(context)
                                .incrementPoints(team: 'A', incrementNum: 1);
                          },
                          child: const Text('add 1 point'),
                        ),

                        //add 2 points
                        MaterialButton(
                          color: Colors.orange,
                          onPressed: () {
                            BlocProvider.of<AppCubit>(context)
                                .incrementPoints(team: 'A', incrementNum: 2);
                          },
                          child: const Text('add 2 point'),
                        ),

                        //add 3 points
                        MaterialButton(
                          color: Colors.orange,
                          onPressed: () {
                            BlocProvider.of<AppCubit>(context)
                                .incrementPoints(team: 'A', incrementNum: 3);
                          },
                          child: const Text('add 3 point'),
                        ),
                      ],
                    ),

                    //my divider
                    const VerticalDivider(
                      color: Colors.grey,
                      thickness: 1.0,
                    ),
                    Column(
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        //number of points in team B
                        SizedBox(
                          height: 180,
                          width: 150,
                          child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                '${BlocProvider.of<AppCubit>(context).teamBPoints}',
                                style: const TextStyle(fontSize: 150),
                              )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        //add 1 point
                        MaterialButton(
                          color: Colors.orange,
                          onPressed: () {
                            BlocProvider.of<AppCubit>(context)
                                .incrementPoints(team: 'B', incrementNum: 1);
                          },
                          child: const Text('add 1 point'),
                        ),

                        //add 2 points
                        MaterialButton(
                          color: Colors.orange,
                          onPressed: () {
                            BlocProvider.of<AppCubit>(context)
                                .incrementPoints(team: 'B', incrementNum: 2);
                          },
                          child: const Text('add 2 point'),
                        ),

                        //add 3 points
                        MaterialButton(
                          color: Colors.orange,
                          onPressed: () {
                            BlocProvider.of<AppCubit>(context)
                                .incrementPoints(team: 'B', incrementNum: 3);
                          },
                          child: const Text('add 3 point'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(
                flex: 3,
              ),

              //reset points to zero
              SizedBox(
                width: 150,
                child: MaterialButton(
                  color: Colors.orange,
                  onPressed: () {
                    BlocProvider.of<AppCubit>(context).resetPoints();
                  },
                  child: const Text('reset'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
