import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isAddedToList = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xFF141414),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'NETFLIX',
                    style: TextStyle(
                      color: Color(0xFFE50914),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                  Icon(
                    CupertinoIcons.person_circle,
                    color: Color(0xFFFFFFFF),
                    size: 30,
                  ),
                ],
              ),

              SizedBox(height: 24),

              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF292929),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Center(
                  child: Text(
                    'FEATURED MOVIE',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              Row(
                children: [
                  CupertinoButton.filled(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Icon(CupertinoIcons.play_fill, size: 18),
                        SizedBox(width: 8),
                        Text('Play'),
                      ],
                    ),
                  ),

                  const SizedBox(width: 12),

                  CupertinoButton(
                    color: const Color(0xFF292929),
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Icon(CupertinoIcons.add, size: 18),
                        SizedBox(width: 8),
                        Text('My List'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
