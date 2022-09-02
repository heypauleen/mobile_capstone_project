import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:my_capstone_project/constants/style.dart';
import 'package:table_calendar/table_calendar.dart';

class MyCalendar extends StatelessWidget {
  const MyCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime focusedDay = DateTime.now();
    String headerMonth = DateFormat('MMMM').format(focusedDay);
    String headerYear = DateFormat('yyyy').format(focusedDay);
    return Column(
      children: [
        // Padding(
        //   padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
        //   child: Container(
        //     height: 45,
        //     decoration: BoxDecoration(
        //         color: Colors.white,
        //         borderRadius: BorderRadius.all(Radius.circular(60)),
        //         boxShadow: [
        //           BoxShadow(
        //               color: Color.fromARGB(92, 158, 158, 158),
        //               offset: Offset(-5, 0),
        //               blurRadius: 10.0)
        //         ]),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.only(left: 3.0),
        //           child: TextButton(
        //             onPressed: () {},
        //             style: TextButton.styleFrom(
        //                 backgroundColor: yellow, shape: CircleBorder()),
        //             child: Icon(
        //               Icons.keyboard_arrow_left,
        //               color: green,
        //             ),
        //           ),
        //         ),
        //         Row(
        //           children: [
        //             Text(
        //               headerMonth.toUpperCase(),
        //               style: TextStyle(fontSize: 15, color: green),
        //             ),
        //             const SizedBox(width: 7),
        //             Text(
        //               headerYear,
        //               style: TextStyle(fontSize: 15),
        //             ),
        //           ],
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.only(left: 3.0),
        //           child: TextButton(
        //             onPressed: () {},
        //             style: TextButton.styleFrom(
        //                 backgroundColor: yellow, shape: CircleBorder()),
        //             child: Icon(
        //               Icons.keyboard_arrow_right,
        //               color: green,
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 5, 15, 3),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(92, 158, 158, 158),
                      offset: Offset(-5, 0),
                      blurRadius: 10.0)
                ]),
            child: TableCalendar(
              daysOfWeekStyle: DaysOfWeekStyle(
                  dowTextFormatter: (date, locale) =>
                      DateFormat.E(locale).format(date).toUpperCase(),
                  weekdayStyle:
                      TextStyle(fontWeight: FontWeight.bold, color: lightGray),
                  weekendStyle:
                      TextStyle(fontWeight: FontWeight.bold, color: green)),
              daysOfWeekHeight: 35,
              headerStyle: HeaderStyle(
                titleTextStyle: TextStyle(
                    fontSize: 17, fontWeight: FontWeight.bold, color: gray),
                headerMargin: EdgeInsets.zero,
                titleTextFormatter: (date, locale) =>
                    DateFormat.yMMMM(locale).format(date).toUpperCase(),
                headerPadding: EdgeInsets.zero,
                formatButtonPadding: EdgeInsets.zero,
                leftChevronIcon: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: yellow,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.keyboard_arrow_left,
                    color: green,
                  ),
                ),
                rightChevronIcon: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: yellow,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.keyboard_arrow_right,
                    color: green,
                  ),
                ),
                formatButtonVisible: false,
                titleCentered: true,
              ),
              headerVisible: true,
              calendarFormat: CalendarFormat.month,
              rowHeight: 35,
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
              calendarStyle: CalendarStyle(
                weekendTextStyle: TextStyle(
                  color: green,
                ),
              ),
              calendarBuilders: CalendarBuilders(
                selectedBuilder: (context, day, focusedDay) => Container(
                  margin: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: green, borderRadius: BorderRadius.circular(30)),
                ),
                todayBuilder: (context, day, focusedDay) => Container(
                  margin: const EdgeInsets.all(5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: green)),
                  child: Text(
                    day.day.toString(),
                    style: TextStyle(color: green, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
