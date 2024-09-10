import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int activeIndex = 0;

  List<CarouselContainer> carouselContainers = [
    CarouselContainer(
      name: 'Ahmad',
      date: '30 Mei 2024',
      imageProfile: '',
      day: 'Senin',
    ),
    CarouselContainer(
      name: 'Firman',
      date: '1 Juni 2024',
      imageProfile: '',
      day: 'Kamis',
    ),
    CarouselContainer(
      name: 'Syah',
      date: '5 Agustus 2024',
      imageProfile: '',
      day: 'Jumat',
    ),
  ];

  changeCarouselIndicator(index, reason) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Welcome Container
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hi, Good Morning!',
                  style: TextStyle(fontSize: 16),
                ),
                // Profile Container
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 12),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0XFFF02823),
                        Color(0XFFC10F66),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Profile Image
                          Container(
                            width: 56,
                            height: 56,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.shade300,
                            ),
                          ),
                          const SizedBox(width: 16),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Ahmad Firmansyah',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      'Member Since',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'FrontEnd Engineer',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      '01 Juni 2021',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Location',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      const Row(
                        children: [
                          Text(
                            'Kantor Sahid',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'ICO',
                            style: TextStyle(
                              fontSize: 12,
                              fontStyle: FontStyle.italic,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Today Acivity Container
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 26, vertical: 16),
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Today's activity",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            size: 28,
                            color: Color(0XFFF95E4E),
                          ),
                          SizedBox(height: 14),
                          Text(
                            '08:30',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Check In',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            size: 28,
                            color: Color(0XFFF95E4E),
                          ),
                          SizedBox(height: 14),
                          Text(
                            '03:00:00',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Working Hours',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            size: 28,
                            color: Color(0XFFF95E4E),
                          ),
                          SizedBox(height: 14),
                          Text(
                            '--:--',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Check Out',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // PCS News Slider
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 26, bottom: 12),
                child: Text(
                  'PCS News',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              CarouselSlider(
                items: carouselContainers,
                options: CarouselOptions(
                  height: 190,
                  // aspectRatio: 16 / 9,
                  viewportFraction: .9,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: false,
                  onPageChanged: changeCarouselIndicator,

                  scrollDirection: Axis.horizontal,
                ),
              ),
              const SizedBox(height: 14),
              Center(
                child: AnimatedSmoothIndicator(
                  activeIndex: activeIndex,
                  count: carouselContainers.length,
                  effect: SlideEffect(
                    radius: 100,
                    dotWidth: 14,
                    dotHeight: 14,
                    spacing: 6,
                    activeDotColor: const Color(0XFFF82B18),
                    dotColor: Colors.grey.shade300,
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(left: 26),
                child: Text(
                  'Online',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              // Container Online
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 26,
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Positioned(
                      top: 0,
                      left: 8 * 35,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 4),
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // color: Colors.grey.shade300,

                          gradient: const LinearGradient(
                            colors: [
                              Color(0XFFF02823),
                              Color(0XFFC10F66),
                            ],
                          ),
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            '10\nMore',
                            style: TextStyle(
                              fontSize: 8,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    ...List.generate(
                      8,
                      (index) => Positioned(
                        left: index == 0 ? null : (index * 35),
                        child: onlineContent(),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Column onlineContent() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 4),
          width: 42,
          height: 42,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade300,
            border: Border.all(
              width: 2,
              color: Colors.white,
            ),
          ),
        ),
        const Text(
          'Jefril',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          'Sahid',
          style: TextStyle(
            fontSize: 8,
          ),
        )
      ],
    );
  }
}

// ignore: must_be_immutable
class CarouselContainer extends StatelessWidget {
  CarouselContainer({
    super.key,
    required this.name,
    required this.date,
    required this.day,
    required this.imageProfile,
  });

  String name;
  String date;
  String day;
  String imageProfile;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        margin: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 12),
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade300,
                  ),
                ),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFF95546),
                  ),
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      day,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      date,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: List.generate(
                  4,
                  (index) => Text(
                    'Kalimat ${index + 1} - Lorem ipsum dolor sit amet consec',
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
