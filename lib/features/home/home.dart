import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:med_g/assets/icons.dart';
import 'package:med_g/core/routes/asosiy.dart';
import 'package:med_g/core/routes/chat.dart';
import 'package:med_g/core/routes/kalendar.dart';
import 'package:med_g/core/routes/maqola.dart';
import 'package:med_g/core/routes/profile.dart';
import 'package:med_g/features/home/bloc/navigation_bar_bloc.dart';
import 'package:med_g/features/home/widgets/destination_page.dart';
import 'package:med_g/features/home/widgets/navigation_bar_item.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  late PageController homePageController;

 
  var index = 0;

  @override
  void initState() {
    homePageController = PageController(keepPage: true);
    
    super.initState();
  }

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationBarBloc(),
      child: BlocBuilder<NavigationBarBloc, NavigationBarState>(
        builder: (context, state) {
          return Scaffold(
            body: Column(children: [
              Expanded(
                child: IndexedStack(
                  index: index,
                  children: const [
                    DestinationPage(
                      onGenerateRoute: AsosiyRoute.onGenerateRoute,
                    ),
                    DestinationPage(
                      onGenerateRoute: MaqolaRoute.onGenerateRoute,
                    ),
                    DestinationPage(
                      onGenerateRoute: ChatRoute.onGenerateRoute,
                    ),
                    DestinationPage(
                      onGenerateRoute: KalendarRoute.onGenerateRoute,
                    ),
                    DestinationPage(
                      onGenerateRoute: ProfileRoute.onGenerateRoute,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).padding.bottom),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        NavigationBarItem(
                            index: 0,
                            icon: AppIcons.asosiy,
                            title: 'Asosiy',
                            onTap: () {
                              index = 0;
                              context
                                  .read<NavigationBarBloc>()
                                  .add(IsActiveColor(index: 0, isActive: true));
                            }),
                        NavigationBarItem(
                            index: 1,
                            icon: AppIcons.maqola,
                            title: 'Maqolalar',
                            onTap: () {
                              index = 1;
                              context
                                  .read<NavigationBarBloc>()
                                  .add(IsActiveColor(index: 1, isActive: true));
                            }),
                        NavigationBarItem(
                            index: 2,
                            icon: AppIcons.chat,
                            title: 'Chat',
                            onTap: () {
                              index = 2;
                              context
                                  .read<NavigationBarBloc>()
                                  .add(IsActiveColor(index: 2, isActive: true));
                            }),
                        NavigationBarItem(
                            index: 3,
                            icon: AppIcons.kalendar,
                            title: 'Calendar',
                            onTap: () {
                              index = 3;
                              context
                                  .read<NavigationBarBloc>()
                                  .add(IsActiveColor(index: 3, isActive: true));
                            }),
                        NavigationBarItem(
                          index: 4,
                          icon: AppIcons.profile,
                          title: 'Profil',
                          onTap: () {
                            index = 4;
                            context
                                .read<NavigationBarBloc>()
                                .add(IsActiveColor(index: 4, isActive: true));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    homePageController.dispose();
    super.dispose();
  }
}
