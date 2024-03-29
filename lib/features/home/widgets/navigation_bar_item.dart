import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:med_g/features/home/bloc/navigation_bar_bloc.dart';


class NavigationBarItem extends StatelessWidget {
  final int index;
  final String icon;
  final String title;
  final Function() onTap;

  const NavigationBarItem({
    Key? key,
    required this.index,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: BlocBuilder<NavigationBarBloc, NavigationBarState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 13.5),
              index == 2 ? Icon(Icons.add_circle_outlined,size: 32,
                color: index == state.activeIndex ? Colors.black : Colors.white,):
              SvgPicture.asset(
                icon,width: 28,height: 28,
                color: index == state.activeIndex ? Colors.black  : null,
              ),
              const SizedBox(height: 4),
              Text(
                title,
                style: TextStyle
                
                
                (
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color:
                index == state.activeIndex
                        ? Colors.black
                        : Colors.white,
                ),
              ),
              const SizedBox(height: 10.5),
            ],
          );
        },
      ),
    );
  }
}
