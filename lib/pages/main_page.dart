part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Color bgColor = "8D92A3".toColor();

  int selectedPage = 0;

  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: CustomSidebar(),
      ),
      appBar: AppBar(
        title: Container(
            alignment: Alignment.center,
            child: Builder(builder: (_) {
              if (selectedPage == 0) {
                return Text("Beranda");
              } else if (selectedPage == 1) {
                return Text("Bookmark");
              } else {
                return Text("Profil");
              }
            })),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  size: 26.0,
                ),
              )),
        ],
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.black,
          ),
          SafeArea(
              child: Container(
            color: Colors.white,
          )),
          SafeArea(
              child: PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                selectedPage = index;
              });
            },
            children: [
              HomePage(),
              BookmarkPage(),
              ProfilPage(),
            ],
          )),
          Align(
              alignment: Alignment.bottomCenter,
              child: CustomBottomNavbar(
                  selectedIndex: selectedPage,
                  onTap: (index) {
                    setState(() {
                      selectedPage = index;
                    });
                    pageController.jumpToPage(selectedPage);
                  }))
        ],
      ),
    );
  }
}
