import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/data_model/current_data.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:todo/data_model/todo_data.dart';


class CurrentTasks extends StatefulWidget {
  @override
  _CurrentTasksState createState() => _CurrentTasksState();
}

class _CurrentTasksState extends State<CurrentTasks> {
  int indx=0,_value=1;
  List<Widget>bodyWidget=[
    Container(
      child: ListView.builder(
        itemCount: CurrentData.data.length,
        itemBuilder: (context,i)=>
            Tasks(
              taskName:CurrentData.data[i].name,
              date:CurrentData.data[i].date,
              time:CurrentData.data[i].time,
            ),
      ),
    ),
    SfCalendar(
      view: CalendarView.week,
    ),
    Container(
      child: ListView.builder(
        itemCount: CurrentData.data.length-5,
        itemBuilder: (context,i)=>
            Tasks_marked(
              taskName:CurrentData.data[i].name,
              date:CurrentData.data[i].date,
              time:CurrentData.data[i].time,
            ),
      ),
    ),

  ];
  @override
  Widget build(BuildContext context) {
    var nameController;
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom:0.0),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          iconSize: 30.0,
          onTap: (index){
            setState(() {
              indx=index;
            });
          },
          selectedItemColor: Color(0xFF3756FF),
          currentIndex: indx,
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.list_dash),
              backgroundColor: Colors.black,
              label: '',

            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today_outlined),
               backgroundColor: Colors.white,
               label: '',

            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.checkmark_alt_circle_fill),
              backgroundColor: Colors.black,
              label: '',

            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:70.0,right: 150.0),
              child: Text(
                'New Task',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:50.0),
              child: Container(
                width: 250,
                height: 80,
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelText: "Task Name",
                      labelStyle: new TextStyle(
                          color: const Color(0xFF424242),
                          fontSize: 17.0
                      )
                  ),
                  onSubmitted: (String str)
                  {
                    setState(() {
                      CurrentData.lengthOfList++;
                      CurrentData.data.add(
                        TodoData(str, 'icon', 'description', '15/4', '12:00')
                      );
                      print(CurrentData.data);
                    });

                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:50.0),
              child: Container(
                width: 250,
                height: 80,
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelText: "Description",
                      labelStyle: new TextStyle(
                          color: const Color(0xFF424242),
                          fontSize: 17.0
                      )
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:50.0,right: 100.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:35.0),
                    child: Text(
                      'Date',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Container(
                     // padding: EdgeInsets.only(top:50.0,right: 100.0),
                      child: DropdownButton(
                          value: _value,
                          items: [
                            DropdownMenuItem(
                              child: Text("15/4"),
                              value: 1,
                            ),
                            DropdownMenuItem(
                              child: Text("22/2"),
                              value: 2,
                            ),
                            DropdownMenuItem(
                                child: Text("16/3"),
                                value: 3
                            ),
                            DropdownMenuItem(
                                child: Text("18/5"),
                                value: 4
                            )
                          ],
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          }),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:50.0,right: 100.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:35.0),
                    child: Text(
                      'Time',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Container(
                      child: DropdownButton(
                          value: _value,
                          items: [
                            DropdownMenuItem(
                              child: Text("1:15"),
                              value: 1,
                            ),
                            DropdownMenuItem(
                              child: Text("3:25"),
                              value: 2,
                            ),
                            DropdownMenuItem(
                                child: Text("12:30"),
                                value: 3
                            ),
                            DropdownMenuItem(
                                child: Text("4:00"),
                                value: 4
                            )
                          ],
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          }),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:100.0,right: 80.0),
              child: Container(
                width: 150,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: LinearGradient(
                      begin: FractionalOffset.topLeft,
                      end: FractionalOffset.bottomRight,
                      colors: [
                        //Color(0xff0d69ff).withOpacity(0.0),
                        const Color(0xFF3756FF).withOpacity(0.5),
                        const Color(0xFFC1B4CB).withOpacity(0.5),
                      ],
                      stops: [
                        0.0,1.0
                      ]),
                ),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> CurrentTasks(),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      'Add',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        //shadowColor: Color(0xFFF6E8F4),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        //leading: new Icon(Icons.menu,color: Colors.black,size: 30.0,),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(left:50.0),
            child: Text(
              'TODO',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ),
        body: bodyWidget[indx],

    );

  }
}

class Tasks extends StatelessWidget {

  String taskName,date,time,s;
  Tasks({this.taskName,this.date,this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:15.0,top:20.0,right: 15.0),
      child: Row(
        children: [
          Container(
            width: 300,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                  colors: [
                    //Color(0xff0d69ff).withOpacity(0.0),
                    const Color(0xFF3756FF).withOpacity(0.5),
                    const Color(0xFFC1B4CB).withOpacity(0.5),
                  ],
                  stops: [
                    0.0,1.0
                  ]),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:10.0),
                  child: Container(
                     width: 40,
                     height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                      image: DecorationImage(
                        image: NetworkImage('https://cdn1.iconfinder.com/data/icons/circle-outlines/512/Checklist_List_Todo_Notes_Note_Task_Tasks-512.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:10.0),
                  child: Text(
                     taskName,
                  ),
                ),
              ],
            ),
          ),
          data_date_time(date: date, time: time),
        ],
      ),
    );
  }
}

class data_date_time extends StatelessWidget {
  const data_date_time({
    Key key,
    @required this.date,
    @required this.time,
  }) : super(key: key);

  final String date;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:15.0,left: 40.0),
      child: Container(
        child: Column(
          children: [
            Text(
              date,
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Text(
                time,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Tasks_marked extends StatelessWidget {

  String taskName,date,time,s;
  Tasks_marked({this.taskName,this.date,this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:15.0,top:20.0,right: 15.0),
      child: Row(
        children: [
          Container(
            width: 300,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                  colors: [
                    //Color(0xff0d69ff).withOpacity(0.0),
                    const Color(0xFF3756FF).withOpacity(0.5),
                    const Color(0xFFC1B4CB).withOpacity(0.5),
                  ],
                  stops: [
                    0.0,1.0
                  ]),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:10.0),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                      image: DecorationImage(
                        image: NetworkImage('https://cdn1.iconfinder.com/data/icons/circle-outlines/512/Checklist_List_Todo_Notes_Note_Task_Tasks-512.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:10.0),
                  child: Text(
                    taskName,
                  ),
                ),
              ],
            ),
          ),
          done_task(),
        ],
      ),
    );
  }
}

class done_task extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:15.0,left: 40.0),
      child: Container(
        child: Icon(
          CupertinoIcons.checkmark_alt_circle,
        )
      ),
    );
  }
}
