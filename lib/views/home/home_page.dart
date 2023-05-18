import 'package:empty/core/tools/print.tool.dart';
import 'package:empty/views/new_post/new_post_view.dart';
import 'package:empty/widget/shape/bottom_sheet_modal_shape.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../constants/app_localizations.dart';
import '../../../../constants/colors_constants.dart';
import '../../core/utils/image_constant.dart';
import '../../widget/DrawerWidget.dart';
import '../../widget/appBar/default_app_bar_widget.dart';
import '../../widget/container/bottom_sheet_modal_container.dart';
import '../../widget/custom_circle_avatar.dart';
import '../../widget/imageStackWidget.dart';
import '../../widget/text/text_header_one_widget.dart';
import '../CreateCircleBottomSheet.dart';
import '../application_view.dart';
import '../new_post/bloc/new_post_bloc.dart';
import '../post_owner_about/post_owner_about_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double? spaceFromRight;
  double? spaceFromBottom;
  late Widget openFloatingActionButton;
  late Widget closeFloatingActionButton;
  // late CustomFloatingActionButtonType type;
  bool? barrierDismissible;
  late List<Widget>? _allMenuWidgets;
  List<Widget> _addWidgets = [];
  Color? backgroundColor;
  Color? floatinButtonColor;

  GlobalKey key = GlobalKey();
  int count = 0;

  //positions
  double firstItemX = 0;
  double firstItemY = 0;
  double secondItemX = 0;
  double secondItemY = 0;
  double thirdItemX = 0;
  double thirdItemY = 0;
  double fourthItemX = 0;
  double fourthItemY = 0;
  double fifthItemX = 0;
  double fifthItemY = 0;

  //circular positions

  double bottomCenterY = 150;
  double bottomCenterX = -30;

  double bottomPositionY = 50;
  double bottomPositionX = 15;

  ///
  double topPositionY = 160;
  double topPositionX = 15;

  double topCenterY = 150;
  double topCenterX = 60;

  double centerRightX = 75;
  double centerRightY = 105;

  @override
  void initState() {
    openFloatingActionButton = const Icon(Icons.add);
    closeFloatingActionButton = const Icon(
      Icons.close,
      color: AppColors.PRIMARY_BRAND,
    );
    // type = CustomFloatingActionButtonType.circular;
    spaceFromRight = 50;
    spaceFromBottom = 20;

    _addWidgets = [
      InkWell(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: FaIcon(
            FontAwesomeIcons.basketShopping,
            color: AppColors.PRIMARY_BRAND,
            // size: 33,
          ),
        ),
        onTap: () {
          logToConsole("Post Yuty");
          Navigator.of(context).pop();
          // Navigator.of(context).pop();

          //Post a yutu button
          showModalBottomSheet(
              context: context,
              elevation: 0,
              isScrollControlled: true,
              shape: roundedBottomModalSheet(),
              builder: (buildContext) => BottomSheetModalContainer(
                  title: "New Post",
                  child: BlocProvider(
                    create: (context) => NewPostBloc(),
                    child: const NewPostView(),
                  )));
        },
      ),
      InkWell(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: FaIcon(
            FontAwesomeIcons.camera,
            color: AppColors.PRIMARY_BRAND,
            // size: 33,
          ),
        ),
        onTap: () {
          Navigator.of(context).pop();
          // Navigator.of(context).pop();
        },
      ),
    ];

    _allMenuWidgets = [
      InkWell(
        // child: CircleAvatar(
        //   child: Icon(Icons.add),
        // ),
        child: CircleAvatar(
          backgroundColor: AppColors.PRIMARY_BRAND,
          child: FaIcon(
            FontAwesomeIcons.plus,
            color: Colors.white,
            // size: 33,
          ),
        ),
        onTap: () {
          // BlocProvider.of<NavigationBloc>(context).add(DismissCurrentViewNavigationEvent());
          // BlocProvider.of<SideNavSheetBloc>(context).add(SideNavBlockItemSelectedEvent(item));
          // Navigator.of(context).pop();
          print(("--------------add"));
          _addMenuWidget();
        },
      ),
      InkWell(
        child: CircleAvatar(
            backgroundColor: AppColors.PRIMARY_BRAND,
            child: Transform.rotate(
              // angle: -74.9999982305801 * (pi / 180),
              angle: -80,
              child: SvgPicture.asset('assets/images/vector.svg',
                  semanticsLabel: 'vector'),
            )),
        onTap: () {
          print('--------------------------2');
          // BlocProvider.of<NavigationBloc>(context).add(DismissCurrentViewNavigationEvent());
        },
      ),
      InkWell(
        child: CircleAvatar(
          backgroundColor: AppColors.PRIMARY_BRAND,
          child: FaIcon(
            FontAwesomeIcons.cartShopping,
            color: Colors.white,
            size: 20,
          ),
        ),
        onTap: () {
          print('--------------------------3');
          // BlocProvider.of<NavigationBloc>(context).add(DismissCurrentViewNavigationEvent());
          // BlocProvider.of<NavigationBloc>(context).add(NavigationEventBottomNavTap(RoutePath.Marketplace));
          // BlocProvider.of<NavigationBloc>(context).add(NavigationEventRedirect(routePath: RoutePath.Marketplace));
        },
      ),
      InkWell(
        child: CircleAvatar(
          backgroundColor: AppColors.PRIMARY_BRAND,
          child: FaIcon(
            FontAwesomeIcons.envelope,
            color: Colors.white,
            // size: 33,
          ),
        ),
        onTap: () {
          print('--------------------------4');
          // BlocProvider.of<NavigationBloc>(context).add(DismissCurrentViewNavigationEvent());
          // BlocProvider.of<NavigationBloc>(context).add(NavigationEventRedirect(routePath: RoutePath.ConversationList, pushAsReplacement: false, withBottomNav: false, arguments: false));

          /*
          NavigationEventRedirect(
              routePath: RoutePath.ConversationList,
              pushAsReplacement: false,
              withBottomNav: true,
              arguments: false)
           */
        },
      ),
      InkWell(
        child: CircleAvatar(
          backgroundColor: AppColors.PRIMARY_BRAND,
          child: FaIcon(
            FontAwesomeIcons.userLarge,
            color: Colors.white,
            size: 20,
          ),
        ),
        onTap: () {
          // BlocProvider.of<NavigationBloc>(context).add(DismissCurrentViewNavigationEvent());
          // BlocProvider.of<NavigationBloc>(context).add(NavigationEventRedirect(routePath: RoutePath.Profile, pushAsReplacement: false, withBottomNav: false, arguments: -1));
        },
      )

      /*
      StreamBuilder(
        stream: BlocProvider.of<NavigationBloc>(context).bottomStateSteam,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Container(color: Colors.black, width: 0, height: 0);
          }
          YuTuRoute route = snapshot.data as YuTuRoute;
          return InkWell(
            child: CircleAvatar(
              backgroundColor: AppColors.PRIMARY_BRAND,
              child: FaIcon(
                FontAwesomeIcons.userLarge,
                color: Colors.white,
                size: 20,
              ),
            ),
            onTap: () {
              // BlocProvider.of<NavigationBloc>(context).add(DismissCurrentViewNavigationEvent());
              Navigator.of(context).pop();
              print('-----------------------------tap user');
              CurrentUserSession currentUserConfiguration = route.arguments;
              print('-----------------------------tap user 2');
              //
              _bottomSheet(context, currentUserConfiguration);

            },
          );
        },
      ),

*/
    ];

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      count = _allMenuWidgets != null ? _allMenuWidgets!.length : 0;
      bottomCenterY = count == 4 ? 75 : 150;
      // bottomCenterY = count == 4 ? 75 : 60;
      bottomCenterX = count == 4 ? 65 : -30;
      topCenterY = count == 4 ? 135 : 150;
      topCenterX = count == 4 ? 65 : 60;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool _separeted = false;
    spaceFromRight = MediaQuery.of(context).size.width / 2 - 35;
    print(MediaQuery.of(context).size.width / 2);
    final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      endDrawer: SearchingProfileDrawerWidget(),
      drawerEnableOpenDragGesture: true,
      endDrawerEnableOpenDragGesture: true,
      key: _globalKey,
      body: SafeArea(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/p2.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    DefaultAppBarWidget(globalKey: _globalKey),
                    /*Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                elevation: 0,
                                backgroundColor: Colors.white,
                                isScrollControlled: true,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15))),
                                /*
                          builder: (context) => BlocProvider<CreateBottomSheetBloc>(
                            lazy: true,
                            create: (blockContext) => CreateBottomSheetBloc(navigationBloc: BlocProvider.of<NavigationBloc>(context)),
                            child: CreateBottomSheet(),
                          ),
                          */
                                builder: (context) =>
                                    CreateCircleBottomSheet());
                          },
                          child: Container(
                            // padding: EdgeInsets.symmetric(horizontal: 15),
                            alignment: Alignment.center,
                            child: Stack(
                              children: [
                                Icon(
                                  Icons.notifications_outlined,
                                  color: Colors.white,
                                  // size:  30,
                                ),
                                Positioned(
                                  // alignment: Alignment.topCenter,
                                  top: 3,
                                  right: 3,
                                  // left: -5,
                                  child: Icon(
                                    Icons.circle,
                                    color: Colors.red,
                                    size: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 15,
                        ),

                        IconButton(
                          onPressed: () {
                            //_globalKey.currentState!.openEndDrawer();
                          },
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),

                        // SizedBox(width: 15,),
                      ],
                    ),*/
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (_separeted) {
                            _separeted = false;
                          } else {
                            _separeted = true;
                          }
                        });
                        print("------tap $_separeted");

                        // BlocProvider.of<NavigationBloc>(context).add(NavigationEventRedirect(pushAsReplacement: false, withBottomNav: false, routePath: RoutePath.CategoryView, ));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          !_separeted
                              ? buildStackedImages(
                                  direction: TextDirection.rtl, xShift: -25)
                              : buildStackedImages(
                                  direction: TextDirection.rtl,
                                ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Foodies",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16),
                          ),
                          Expanded(child: Container()),
                          IconButton(
                            onPressed: () {
                              // _showDialog();
                              _showSimpleDialog();
                            },
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildStackedImages(
                              direction: TextDirection.ltr,
                              isHorizontal: false,
                              yShift: 20),
                          SizedBox(
                            height: 50,
                          ),
                          _statWidget(Icons.favorite_border, 142),
                          _statWidget(Icons.messenger_outline_outlined, 142),
                          _statWidget(Icons.send, 142),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ListTile(
                      leading: CustomCircleAvatar(
                        backgroundImage: ImageConstant.img_ellipse3_136x136,
                        radius: 50,
                      ),
                      title: Text(
                        "Kim T. ",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      // style: ListTileStyle.drawer,
                      // contentPadding: EdgeInsetsGeometry.infinity,
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Taco Truck on 6th Av...",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "#Taco #Apley #",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      trailing: TextButton(
                        onPressed: () {
                          //Show detail view with a bottom sheet modal
                          showModalBottomSheet(
                              context: context,
                              elevation: 0,
                              isScrollControlled: true,
                              shape: roundedBottomModalSheet(),
                              builder: (buildContext) =>
                                  BottomSheetModalContainer(
                                    percentage: 0.80,
                                      title: "About",
                                      titleSize: 24.0,
                                      child: PostOwnerAboutView()));
                        },
                        child: Text(
                          "more",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      // dense: false,
                      horizontalTitleGap: 0,
                      minVerticalPadding: 0,
                      // minLeadingWidth: 0,
                    )
                  ],
                ),
                Positioned(
                  key: key,
                  bottom: spaceFromBottom ?? 100,
                  right: spaceFromRight ?? 10,
                  child: GestureDetector(
                    onTap: () {
                      if (spaceFromBottom! > 500) {
                        throw "maximum space from bottom is 500 and maximum space from right is 50";
                      } else {
                        if (_allMenuWidgets != null &&
                            _allMenuWidgets!.length > 1 &&
                            _allMenuWidgets!.length < 6) {
                          _fabMenuDialog();
                        } else {
                          throw "minimum 2 and maximum 5 items allowed";
                        }
                      }
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(8),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // color: floatinButtonColor ?? Colors.white,
                        color: AppColors.PRIMARY_BRAND,
                        // image: DecorationImage(image: AssetImage("assets/images/yutu_logo_white.png" ), fit: BoxFit.fill),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white24,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      // child: openFloatingActionButton,
                      child: Image.asset(
                        "assets/images/yutu_logo_white.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }

  Widget _statWidget(IconData iconData, int value) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value.toString(),
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Icon(
          iconData,
          color: Colors.white,
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }

  Widget buildStackedImages({
    TextDirection direction = TextDirection.ltr,
    bool isHorizontal = true,
    double? xShift,
    double? yShift,
  }) {
    final double size = 50;
    double xxShift = xShift ?? 10;
    final urlImages = [
      'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80',
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    ];

    final items = urlImages.map((urlImage) => buildImage(urlImage)).toList();

    return StackedWidgets(
      direction: direction,
      items: items,
      size: size,
      xShift: xxShift,
      isHorizontal: isHorizontal,
      yShift: yShift ?? 10,
    );
  }

  Widget buildImage(String urlImage) {
    final double borderSize = 3;

    return ClipOval(
      child: Container(
        padding: EdgeInsets.all(borderSize),
        color: Colors.white,
        child: ClipOval(
          child: Image.network(
            urlImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  void _showSimpleDialog() async {
    await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            // <-- SEE HERE
            // title: const Text('Select Booking Type'),
            // alignment: AlignmentGeometry.lerp(a, b, t),
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "category".toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SimpleDialogOption(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/p3-2.png",
                        width: 25,
                        height: 25,
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'General',
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )),
              SimpleDialogOption(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/p3-2.png",
                        width: 25,
                        height: 25,
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'General',
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )),
              SimpleDialogOption(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/p3-2.png",
                        width: 25,
                        height: 25,
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'General',
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )),
              SimpleDialogOption(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/p3-2.png",
                        width: 25,
                        height: 25,
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'General',
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )),
              SimpleDialogOption(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/p3-2.png",
                        width: 25,
                        height: 25,
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'General',
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Circle".toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      Expanded(child: Container()),
                      InkWell(
                        child: Text(
                          "view all",
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 14,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).pop();

                          showModalBottomSheet(
                              context: context,
                              elevation: 0,
                              backgroundColor: Colors.white,
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15))),
                              /*
                          builder: (context) => BlocProvider<CreateBottomSheetBloc>(
                            lazy: true,
                            create: (blockContext) => CreateBottomSheetBloc(navigationBloc: BlocProvider.of<NavigationBloc>(context)),
                            child: CreateBottomSheet(),
                          ),
                          */
                              builder: (context) => CreateCircleBottomSheet());
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              SimpleDialogOption(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/p3-2.png",
                        width: 25,
                        height: 25,
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'General',
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )),
              SimpleDialogOption(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/p3-2.png",
                        width: 25,
                        height: 25,
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'General',
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )),
              SimpleDialogOption(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/p3-2.png",
                        width: 25,
                        height: 25,
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'General',
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SimpleDialogOption(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite_outlined,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'General',
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )),
              SimpleDialogOption(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/p3-2.png",
                        width: 25,
                        height: 25,
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'General',
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )),
            ],
          );
        });
  }

  @override
  void dispose() {
    super.dispose();
  }

  getItemPositions() {
    if (spaceFromBottom != null) {
      topPositionY = 110 + spaceFromBottom!;
      topCenterY = 70 + spaceFromBottom!;
      centerRightY = spaceFromBottom! + 5;

      bottomPositionY = spaceFromBottom! - 55;
      bottomCenterY = spaceFromBottom! - 40;
    }

    if (spaceFromRight != null) {
      topPositionX = 22 + spaceFromRight!;
      topCenterX = 95 + spaceFromRight!;
      centerRightX = 115 + spaceFromRight!;
      bottomCenterX = -60 + spaceFromRight!;
      bottomPositionX = -80 + spaceFromRight!;
    }

    firstItemX = topPositionX;
    firstItemY = topPositionY;

    secondItemX = topCenterX;
    secondItemY = topCenterY;

    thirdItemX = centerRightX;
    thirdItemY = centerRightY;

    fourthItemX = bottomCenterX;
    fourthItemY = topCenterY;

    fifthItemX = bottomPositionX;
    fifthItemY = centerRightY;

    print(
        '---------------------firstItemX: $firstItemX -------firstItemY: $firstItemY');
    print(
        '---------------------secondItemX: $secondItemX -------secondItemY: $secondItemY');
    print(
        '---------------------thirdItemX: $thirdItemX -------thirdItemY: $thirdItemY');
    print(
        '---------------------fourthItemX: $fourthItemX -------fourthItemY: $fourthItemY');
    print(
        '---------------------fifthItemX: $fifthItemX -------fifthItemY: $fifthItemY');
  }

  _fabMenuDialog() {
    // getPosition();
    getItemPositions();
    showDialog(
      barrierDismissible: false,
      useSafeArea: false,
      barrierColor: Colors.black87,
      context: context,
      builder: (context) {
        return _menuOption();
      },
    );
  }

  _menuOption() {
    return Stack(
      children: [
        Positioned(
          bottom: spaceFromBottom ?? 100,
          right: spaceFromRight! + 15,
          // right: spaceFromRight!,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: floatinButtonColor ?? Colors.white,
              ),
              child: Material(
                color: Colors.transparent,
                child: closeFloatingActionButton,
              ),
            ),
          ),
        ),
        if (_allMenuWidgets != null && _allMenuWidgets!.isNotEmpty)
          Positioned(
            right: firstItemX,
            bottom: firstItemY,
            child: Material(
              color: Colors.transparent,
              child: _allMenuWidgets![0],
            ),
          ),
        if (_allMenuWidgets != null && _allMenuWidgets!.length > 1)
          Positioned(
            right: secondItemX,
            bottom: secondItemY,
            child: Material(
              color: Colors.transparent,
              child: _allMenuWidgets![1],
            ),
          ),
        if (_allMenuWidgets != null && _allMenuWidgets!.length > 2)
          Positioned(
            bottom: thirdItemY,
            right: thirdItemX,
            child: Material(
              color: Colors.transparent,
              child: _allMenuWidgets![2],
            ),
          ),
        if (_allMenuWidgets != null && _allMenuWidgets!.length > 3)
          Positioned(
            right: fourthItemX,
            bottom: fourthItemY,
            child: Material(
              color: Colors.transparent,
              child: _allMenuWidgets![3],
            ),
          ),
        if (_allMenuWidgets != null && _allMenuWidgets!.length > 4)
          Positioned(
            right: fifthItemX,
            bottom: fifthItemY,
            child: Material(
              color: Colors.transparent,
              child: _allMenuWidgets![4],
            ),
          ),
      ],
    );
  }

  _addMenuWidget() {
    // getPosition();
    getItemPositions();
    showDialog(
      // barrierDismissible: false,
      useSafeArea: false,
      barrierColor: Colors.transparent,
      // barrierColor: Colors.black.withOpacity(0.01),
      context: context,
      builder: (context) {
        return _addOption();
      },
    );
  }

  _addOption() {
    return Stack(
      children: [
        Positioned(
            right: firstItemX,
            bottom: firstItemY + 50,
            child: Material(
              color: Colors.transparent,
              child: Row(
                children: [
                  Text(
                    "post a yutu",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: _addWidgets[0],
                  ),
                ],
              ),
            )),
        Positioned(
            right: firstItemX,
            bottom: firstItemY + 100,
            child: Material(
              color: Colors.transparent,
              child: Row(
                children: [
                  Text(
                    "New Listing",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: _addWidgets[1],
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
