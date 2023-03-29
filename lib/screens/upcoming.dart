import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Colors.lightBlueAccent.shade100),
      home: const Scaffold(
        body: Center(
          child: ScrollList(),
        ),
      ),
    );
  }
}


class ScrollList extends StatelessWidget {
  const ScrollList({super.key,});

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Column(
        children: [
          for (final booking in bookings)
            BookingListItem(
              date: booking.date,
              time: booking.time,
              place: booking.place,
              url: booking.url,
            ),
        ],
      ),
    );
  }
}

class BookingListItem extends StatelessWidget {
  BookingListItem({ super.key, required this.date,
    required this.time,
    required this.place,
    required this.url,
  });

  final String date;
  final String time;
  final String place;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              Gradient(),
              TitleAndSubtitle(),
            ],
          ),
        ),
      ),
    );
  }

  Widget Gradient() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.lightBlue.shade100],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.6, 0.95],
          ),
        ),
      ),
    );
  }


  Widget TitleAndSubtitle() {
    return Positioned(
      left: 20,
      bottom: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            time,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          Text(
            place,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class booking {
  const booking({
    required this.date,
    required this.time,
    required this.place,
    required this.url,
  });

  final String date;
  final String time;
  final String place;
  final String url;

}
  const bookings= [
    booking(
      date: '29-03-2022', time: '1:00 pm', place: 'Kunnamangalam',
      url: 'URL',
    ),
    booking(
      date: '31-03-2022', time: '1:00 pm', place: 'Kunnamangalam',
      url: 'URL',
    ),
    booking(
      date: '01-04-2022', time: '1:00 pm', place: 'Kunnamangalam',
      url: 'URL',
    ),
  ];

