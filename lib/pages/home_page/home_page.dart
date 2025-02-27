import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/navigation/app_router.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        CharacterTab(),
        EpisodeTab(),
        LocationTab(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return CupertinoTabBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.map,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.video_library,
              ),
            ),
          ],
        );
      },
    );

    /*return AutoTabsScaffold(
      routes: const [
        UsersRoute(),
        PostsRoute(),
        SettingsRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        currentIndex: tabsRouter.activeIndex,
        return CupertinoTabBar(
              currentIndex: index,
              onTap: tabsRouter.setActiveIndex,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_outline,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.map,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.video_library,
                  ),
                ),
              ],
            );
      },
    );*/
  }
}
