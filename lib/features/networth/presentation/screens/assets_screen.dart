import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RealEstateScreen(),
    ),
  );
}

class RealEstateScreen extends StatefulWidget {
  const RealEstateScreen({super.key});

  @override
  State<RealEstateScreen> createState() => _RealEstateScreenState();
}

class _RealEstateScreenState extends State<RealEstateScreen> {
  String selectedChip = 'Liquid Cash';

  final List<Map<String, dynamic>> assets = [
    {
      'name': 'Daga Developers',
      'value': '₹14,56,346.79',
      'time': '45 days ago',
      'change': '+6.32%',
      'isPositive': true,
    },
    {
      'name': 'Anna Nagar Street',
      'value': '₹12,06,346.79',
      'time': '2 years ago',
      'change': '-6.32%',
      'isPositive': false,
    },
    {
      'name': 'Viviza Grande',
      'value': '₹45,00,346.79',
      'time': '1.4 years ago',
      'change': '+6.32%',
      'isPositive': true,
    },
    {
      'name': 'Sakthi Estate',
      'value': '₹90,90,000.79',
      'time': '12 years ago',
      'change': '+6.32%',
      'isPositive': true,
    },
    {
      'name': 'Voc Nagar Street',
      'value': '₹34,89,000.79',
      'time': '11 years ago',
      'change': '-6.32%',
      'isPositive': false,
    },
    {
      'name': 'Garden Developers',
      'value': '₹12,00,346.79',
      'time': '3 years ago',
      'change': '+6.32%',
      'isPositive': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Assets',
      //     style: TextStyle(
      //       // fontSize: width * 0.05,
      //       fontFamily: 'ChesnaGrotesk',
      //     ),
      //   ),
      // ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double width = constraints.maxWidth;
          double height = constraints.maxHeight;

          return SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(width * 0.04),
                  child: Row(
                    children: [
                      // Circular back icon button
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey.shade400,
                          ), // light grey border
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            size: 16,
                            color: Colors.black87,
                          ),
                          onPressed: () {},
                        ),
                      ),

                      SizedBox(width: width * 0.02),

                      Text(
                        'Assets',
                        style: TextStyle(
                          fontSize: width * 0.05,
                          fontFamily: 'ChesnaGrotesk',
                        ),
                      ),
                    ],
                  ),
                ),

                // Tabs
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                  child: Row(
                    children: [
                      _buildChip('Liquid Cash', width),
                      _buildChip('Real Estate', width),
                      _buildChip('Gold', width),
                      _buildChip('Silver', width),
                    ],
                  ),
                ),

                // SizedBox(height: height * 0.015),

                // Green Info Card
                Container(
                  //margin: EdgeInsets.symmetric(horizontal: width * 0.04),
                  padding: EdgeInsets.all(width * 0.04),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 250, 253, 251),
                        Color.fromARGB(255, 191, 228, 198),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Real Estate',
                          style: TextStyle(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'ChesnaGrotesk',
                          ),
                        ),
                        SizedBox(height: height * 0.02),
                        Text(
                          'Total Value',
                          style: TextStyle(
                            fontSize: width * 0.035,
                            color: Colors.grey.shade700,
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '₹23.42 Cr',
                                style: TextStyle(
                                  fontSize: width * 0.07,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.trending_up,
                                color: Colors.green,
                                size: 25,
                              ),
                            ],
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'As on 24 Jan, 2024 | 10:00',
                              style: TextStyle(
                                fontSize: width * 0.035,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            Icon(
                              Icons.refresh,
                              size: 25,
                              color: Colors.grey.shade700,
                            ),
                            SizedBox(width: width * 0.25),
                            Container(
                              alignment: Alignment.center,
                              width: width * 0.13,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                '21.32%',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: width * 0.035,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: height * 0.02),

                // Section Title
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white, // Background color
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        // Header Row
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Real Estate Assets',
                                style: TextStyle(
                                  fontSize: width * 0.045,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const Icon(Icons.more_horiz, color: Colors.black),
                            ],
                          ),
                        ),
                        // List
                        Expanded(
                          child: ListView.builder(
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 0.04,
                            ),
                            itemCount: assets.length,
                            itemBuilder: (context, index) {
                              final item = assets[index];
                              return Container(
                                margin: const EdgeInsets.only(
                                  bottom: 6,
                                ), // spacing between tiles
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 10,
                                      offset: Offset(0, 6),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.04,
                                    vertical: height * 0.015,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            item['name'],
                                            style: TextStyle(
                                              fontSize: width * 0.045,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            item['time'],
                                            style: TextStyle(
                                              fontSize: width * 0.035,
                                              color: const Color.fromARGB(
                                                255,
                                                87,
                                                86,
                                                86,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            item['value'],
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: width * 0.04,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 6,
                                                  vertical: 1,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: item['isPositive']
                                                      ? Colors.green
                                                            .withOpacity(0.15)
                                                      : Colors.red.withOpacity(
                                                          0.15,
                                                        ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      item['isPositive']
                                                          ? Icons.trending_up
                                                          : Icons.trending_down,
                                                      size: 16,
                                                      color: item['isPositive']
                                                          ? Colors.green
                                                          : Colors.red,
                                                    ),
                                                    SizedBox(width: 4),
                                                    Text(
                                                      item['change']
                                                          .replaceAll('+', '')
                                                          .replaceAll('-', ''),
                                                      style: TextStyle(
                                                        color:
                                                            item['isPositive']
                                                            ? Colors.green
                                                            : Colors.red,
                                                        fontSize: width * 0.035,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Bottom Button
                Padding(
                  padding: EdgeInsets.all(width * 0.03),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(vertical: height * 0.02),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Add Real Estate',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: width * 0.045,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildChip(String label, double width) {
    final bool isSelected = label == selectedChip;

    return Padding(
      padding: EdgeInsets.only(right: width * 0.02),
      child: RawChip(
        label: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: const Color(0xFFEFEFEF),
        selectedColor: Colors.black,
        selected: isSelected,
        showCheckmark: false,
        onSelected: (_) {
          setState(() {
            selectedChip = label;
          });
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 0,
        padding: EdgeInsets.symmetric(horizontal: width * 0.02, vertical: 8),
      ),
    );
  }
}
