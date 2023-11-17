import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../cart/presentaion/views/cart_view.dart';
import '../cubit/home_cubit.dart';
import '../views/home_view.dart';
import '../../../profile/presentation/views/profile_view.dart';
import '../../../search/presentaion/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

PersistentTabController _controller = PersistentTabController();

class HomeNavBarWidget extends StatelessWidget {
  const HomeNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      items: _navBarsItems(),
      controller: _controller,
      navBarStyle: NavBarStyle.style12,
      backgroundColor: AppColors.primaryColor,
      decoration: const NavBarDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
    );
  }
}

List<Widget> _buildScreens() {
  return [
    BlocProvider(
      create: (context) => HomeCubit()..getHistoricalPeriods(),
      child: const HomeView(),
    ),
    const CartView(),
    const SearchView(),
    const ProfileView(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.assetsImagesHomeIconActive),
      inactiveIcon: SvgPicture.asset(Assets.assetsImagesHomeIcon),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.assetsImagesShoppingCartActive),
      inactiveIcon: SvgPicture.asset(Assets.assetsImagesShoppingCart),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.assetsImagesSearchActive),
      inactiveIcon: SvgPicture.asset(Assets.assetsImagesSearch),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.assetsImagesPersonActive),
      inactiveIcon: SvgPicture.asset(Assets.assetsImagesPerson),
    ),
  ];
}
