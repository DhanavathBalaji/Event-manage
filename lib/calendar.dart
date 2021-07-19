
import 'dart:ui';

import 'package:event_app/events.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'profile_page.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  Map<DateTime, List<Event>> selectedEvents;

  CalendarFormat format = CalendarFormat.month;
  DateTime focusedDay = DateTime.now();
  DateTime selectedDay = DateTime.now();
  TextEditingController _eventController = TextEditingController();
  @override
  void initState() {
    selectedEvents = {};
    // TODO: implement initState
    super.initState();
  }

  List<Event> _getEventsFromDay(DateTime date) {
    return selectedEvents[date] ?? [];
  }



  @override
  void dispose() {
    _eventController.dispose();
    // TODO: implement dispose
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
      appBar: AppBar(
        title: Text(
          'MY EVENTS',
          style: TextStyle(
            fontFamily: 'SourceSansPro',
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
          leading: IconButton( onPressed: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
          },
            icon:Icon(Icons.person_rounded ),
            color:Colors.black,
            iconSize: 40,

          ),
        ),
      body:Column(
        children: [
          TableCalendar(
            focusedDay: selectedDay,
            firstDay: DateTime(1990),
            lastDay: DateTime(2060),
            calendarFormat: format,
            onFormatChanged: (CalendarFormat _format) {
              setState(() {
                format = _format;
              });
            },
            startingDayOfWeek: StartingDayOfWeek.monday,
            onDaySelected: (DateTime selectDay, DateTime focuseDay) {
              setState(() {
                focusedDay = focuseDay;
                selectedDay = selectDay;
              });
            },
            selectedDayPredicate: (DateTime date) {
              return isSameDay(selectedDay, date);
            },
            eventLoader: _getEventsFromDay,
            calendarStyle: CalendarStyle(
              isTodayHighlighted: true,
              selectedDecoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15),
              ),
              selectedTextStyle: TextStyle(
                color: Colors.white,
              ),
              todayDecoration: BoxDecoration(
                color: Colors.black26,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15),
              ),
              defaultDecoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15),
              ),
              weekendDecoration: BoxDecoration(
                shape: BoxShape.rectangle,

                borderRadius: BorderRadius.circular(15),
              ),
            ),
            headerStyle: HeaderStyle(
              formatButtonVisible: true,
              titleCentered: true,
              titleTextStyle: TextStyle(
                fontFamily: 'Pacifico',
              ),
              formatButtonShowsNext: false,
              formatButtonDecoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(15),
              ),
              formatButtonTextStyle: TextStyle(
                color: Colors.white,

              ),
              leftChevronVisible: false,
              rightChevronVisible: false,
            ),
          ),
          ..._getEventsFromDay(selectedDay).map((Event event) => ListTile(title: Text(event.title,style: TextStyle(
            color:Colors.blueAccent,
           fontWeight: FontWeight.bold,


          ),),
          ),
          ),


    Column(
      mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
    FloatingActionButton.extended(
    backgroundColor: Colors.deepPurpleAccent,
    onPressed: () => showDialog(
    context: context,
    builder: (context) => AlertDialog(
    title: Text('Add Event'
    ),
    content: TextFormField(
    controller: _eventController,
    ),
    actions: [
    TextButton(
    child: Text('cancel'),
    onPressed: () => Navigator.pop(context),
    ),
    TextButton(
    child: Text('ok'),
    onPressed: () {
    if (_eventController.text.isEmpty) {
    } else {
    if (selectedEvents[selectedDay] != null) {
    selectedEvents[selectedDay].add(
    Event(title: _eventController.text),
    );
    }
    else{
    selectedEvents[selectedDay]=[
    Event(title: _eventController.text),
    ];
    }

    }Navigator.pop(context);
    _eventController.clear();
    setState(() {
    });
    return;

    }),
    ],
    ),
    ),
    label: Text(
    'Add Event',
    style: TextStyle(
    color: Colors.black,
    ),
    ),
    icon: Icon(Icons.add),
    ),
       SizedBox(
    height:2.0,
    ),
       FloatingActionButton.extended(
          backgroundColor: Colors.deepPurpleAccent,
          onPressed: () => showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Add IITG Event'
              ),
              content: TextFormField(
                controller: _eventController,
              ),
              actions: [
                TextButton(
                  child: Text('cancel'),
                  onPressed: () => Navigator.pop(context),
                ),
                TextButton(
                    child: Text('ok'),
                    onPressed: () {
                      if (_eventController.text.isEmpty) {
                      } else {
                        if (selectedEvents[selectedDay] != null) {
                          selectedEvents[selectedDay].add(
                            Event(title: _eventController.text),
                          );
                        }
                        else{
                          selectedEvents[selectedDay]=[
                            Event(title: _eventController.text),
                          ];
                        }

                      }Navigator.pop(context);
                      _eventController.clear();
                      setState(() {
                      });
                      return;

                    }),
              ],
            ),
          ),
          label: Text(
            'Add IITG Event',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          icon: Icon(Icons.add),
        ),
    ],),

    ],),
    ),

    );
  }

}
