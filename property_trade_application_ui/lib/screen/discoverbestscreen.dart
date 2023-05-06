import 'package:flutter/material.dart';
import 'listing_model.dart';

class DiscoverBestScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BestScreen();
  }
}

class BestScreen extends State<DiscoverBestScreen> {
  List<String> category = [
    'Houses',
    'Apartment',
    'Flot',
    'Villas',
    'Offices',
    'Shops',
    'WherHouses',
  ];

  List<ListingModel> listing = [
    ListingModel(1, 'Bluish Home', 'assets/images/image1.jpg', '27th street',
        1500.0, 3, 3, 500),
    ListingModel(2, 'Bluish Home', 'assets/images/image1.jpg', '27th street',
        1500.0, 3, 3, 500),
    ListingModel(3, 'Bluish Home', 'assets/images/image1.jpg', '27th street',
        1500.0, 3, 3, 500),
  ];

  List<ListingModel> near = [
    ListingModel(1, 'Bluish homes', 'assets/images/image1.jpg',
        '27th Street symemarang', 1500.00, 3, 3, 500),
    ListingModel(2, 'Blossom blue homes', 'assets/images/image1.jpg',
        '27th Wallstreet', 3000.00, 5, 4, 1200),
  ];

  var selectedIndex = 0;

  tooggleIndex(value) {
    setState(() {
      selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffdcdada),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(Icons.settings),
                    ),
                    Column(
                      children: [
                        const Text("Location"),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              "Symetang",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_outlined,
                              size: 14,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("assets/images/profile.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 330, 0),
                child: const SizedBox(
                  height: 30,
                  child: Text(
                    textAlign: TextAlign.left,
                    "Discover Best ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 300, 10),
                child: const SizedBox(
                  height: 20,
                  child: Text(
                    textAlign: TextAlign.left,
                    "Suitable Property ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * .09,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  shrinkWrap: true,
                  itemCount: category.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => tooggleIndex(index),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 2.0),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            category[index],
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              //secondsection
              SizedBox(
                height: size.height * .50,
                child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  itemCount: listing.length,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: size.height,
                      width: size.width * .5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image: AssetImage(listing[index].image),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    listing[index].name,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(listing[index].address),
                                  const SizedBox(height: 5),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor:
                                            Colors.pink.withOpacity(.2),
                                        radius: 12,
                                        child: const Icon(
                                          Icons.bed_outlined,
                                          size: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(' ${listing[index].bedrooms}'),
                                      const SizedBox(width: 4),
                                      CircleAvatar(
                                        backgroundColor:
                                            Colors.pink.withOpacity(.2),
                                        radius: 12,
                                        child: const Icon(
                                          Icons.bathtub_outlined,
                                          size: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(' ${listing[index].bathrooms}'),
                                      const SizedBox(width: 2),
                                      CircleAvatar(
                                        backgroundColor:
                                            Colors.pink.withOpacity(.2),
                                        radius: 12,
                                        child: const Icon(
                                          Icons.train_outlined,
                                          size: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(' ${listing[index].size} mm')
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Near You',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )),
                    Text('See all',
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              SizedBox(
                height: size.height * .3,
                child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 15),
                    //  physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 2),
                    itemCount: near.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: size.height * .15,
                        width: size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: size.height * .35,
                              width: size.width * .28,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: AssetImage(near[index].image),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Padding(
                                padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      near[index].name,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(near[index].address),
                                    const SizedBox(height: 5),
                                    Text('${near[index].size} km'),
                                    const SizedBox(height: 5),
                                    Text(
                                      '${near[index].price}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ))
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
