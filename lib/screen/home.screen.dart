import 'package:flutter/material.dart';
import 'package:searchable_listview/searchable_listview.dart';
import 'package:winter_event/screen/add.event.screen.dart';
import 'package:winter_event/screen/view.event.screen.dart';
import 'package:winter_event/util/calendar.dart';
import 'package:winter_event/util/screen_util/screen_util.dart';
import 'package:winter_event/widget/common_app_bar.dart';
import '../core/config/router/app_router.dart';
import '../core/themes/app_color.dart';
import '../core/themes/app_theme.dart';
import '../widget/sized_box/sized_box.dart';

class HomeScreen extends StatefulWidget {
  static const String route = '/homeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  final List<Event> events = [
    Event(image: 'Leonardo', title: 'Winter Session Event', date: 'DiCaprio'),
    Event(image: 'Leonardo', title: 'Winter Session Event', date: 'Depp'),
    Event(image: 'Leonardo', title: 'Winter Session Event', date: 'De Niro'),
    Event(image: 'Leonardo', title: 'Winter Session Event', date: 'Hardy'),
    Event(image: 'Leonardo', title: 'Winter Session Event', date: 'Washington'),
    Event(image: 'Leonardo', title: 'Winter Session Event', date: 'Affleck'),
    Event(image: 'Leonardo', title: 'Winter Session Event', date: 'De Niro'),
    Event(image: 'Leonardo', title: 'Winter Session Event', date: 'Hardy'),
    Event(image: 'Leonardo', title: 'Winter Session Event', date: 'Washington'),
    Event(image: 'Leonardo', title: 'Winter Session Event', date: 'Affleck'),
    Event(image: 'Leonardo', title: 'Winter Session Event', date: 'De Niro'),
    Event(image: 'Leonardo', title: 'Winter Session Event', date: 'Hardy'),
    Event(image: 'Leonardo', title: 'Winter Session Event', date: 'Washington'),
    Event(image: 'Leonardo', title: 'Winter Session Event', date: 'Affleck'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: 'Event Management',
        actions: [],
      ),
      body:_selectedIndex==0?  Padding(
                padding:const  EdgeInsets.all(3),
                child: SearchableList(
                  style: TextStyle(fontSize: 18.sp),
                  scrollDirection: Axis.vertical,
                  builder: (Event event) => EventItem(event: event),
                  asyncListCallback: () async {
                    return events;
                  },
                  asyncListFilter: (q, list) {
                    return list.where((element) => element.title!.contains(q)).toList();
                  },
                  emptyWidget: const EmptyView(),
                  onRefresh: () async {

                  },
                  inputDecoration: InputDecoration(
                    hintText: 'Enter Event Name or Date',
                    labelText: 'Search Event',
                    border: InputBorder.none,
                    labelStyle: AppTheme.headingStyle.copyWith(
                        color: AppColor.labelHintTextColor,
                        fontSize: 16),
                    hintStyle: AppTheme.headingStyle.copyWith(
                        color: AppColor.labelHintTextColor,
                        fontSize: 16),
                    contentPadding: EdgeInsets.only(
                      left: 10.w,
                      right: 10.w,
                    ),
                  ),
                ),

              )

          :_selectedIndex==1?SingleChildScrollView(
        child: Column(
          children: [
            HorizontalCalendar( date: DateTime.now(),
              textColor: Colors.black45,
              backgroundColor: Colors.white,
              selectedColor: Colors.orange,
              onDateSelected: (date) => print(
                date.toString(),
              ),
            ),
            Sized_8H(),
            Column(
              children: List.generate(3, (index) => buildImageInteractionCard()),
            )
          ],
        ),
      )
      :SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
      bottomNavigationBar:  BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'My Event',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),

        floatingActionButton: Visibility(
          visible: _selectedIndex==0?true:false,
          child: FloatingActionButton(
            backgroundColor:  Colors.amber[800],
            foregroundColor: Colors.white,
            onPressed: () {
              AppRoute.goToNextPage(context: context, screen: AddEventScreen.route,arguments: {});
            },
            child: const Icon(
              Icons.add,
              size: 30,
            ),
          )
        )
    );
  }

  Widget buildImageInteractionCard() => InkWell(
    onTap: (){
      AppRoute.goToNextPage(context: context, screen: ViewEventScreen.route,arguments: {});
    },
    child: Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Ink.image(
                image:const NetworkImage(
                    'https://images.unsplash.com/photo-1540575467063-178a50c2df87?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'
                ),
                height: 240,
                fit: BoxFit.cover,
              ),
              const  Positioned(
                bottom: 16,
                right: 16,
                left: 16,
                child: Text(
                  'Winter Session of Parliament',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding:const EdgeInsets.all(16).copyWith(bottom: 0),
            child:const Text(
              'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    ),
  );
}


class EventItem extends StatelessWidget {
  final Event event;

  const EventItem({
    Key? key,
    required this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        AppRoute.goToNextPage(context: context, screen: ViewEventScreen.route,arguments: {});
      },
      child: Container(
        // height: 60,
        margin: EdgeInsets.symmetric(vertical: 6.h,horizontal: 10.w),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 150.w,
              height: 150.h,
              child: Image.network(
                  'https://images.unsplash.com/photo-1513128034602-7814ccaddd4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZXZlbnQlMjBwbGFubmluZ3xlbnwwfHwwfHw%3D&auto=format',
                fit:BoxFit.cover,
              )
            ),
            Sized_8W(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  '${event.title}',
                  overflow: TextOverflow.clip,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                 ),
                const Text(
                  'Location:Nagpur',
                  style:  TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Date: ${event.date}',
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class EmptyView extends StatelessWidget {
  const EmptyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.error,
          color: Colors.red,
        ),
        Text('no actor is found with this name'),
      ],
    );
  }
}

class Event {
  String ? image;
  String ? title;
  String ? date;

  Event({
     this.image,
     this.title,
     this.date,
  });
}


