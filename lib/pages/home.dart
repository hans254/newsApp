import 'package:flutter/material.dart';
import 'package:newsapp/category_model/category_model.dart';
import 'package:newsapp/services/data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = [];

  @override
  void initState() {
    categories = getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(200, 255, 255, 255),
      body: 
        Container(
        margin: EdgeInsets.only(top: 20.0, left: 20.0),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Buzz",
                  style: TextStyle(
                      color: Color(0xff3280ef),
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
                Text("Line",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Hottest News",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.872,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
                    child: Material(
                      elevation: 3.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  "images/news2.jpg",
                                  width:
                                      MediaQuery.of(context).size.width / 1.8,
                                  fit: BoxFit.cover,
                                  height: 150,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 1.8,
                              child: Text(
                                "DOGE staffers offer group resignation in order to not ‘legitimise’ Musk",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 1.8,
                              child: Text(
                                "A group of 21 US federal workers issued a resignation letter saying DOGE risked compromising sensitive government data.",
                                style: TextStyle(
                                    color: const Color.fromARGB(151, 0, 0, 0),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: 80.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  color: Color(0xff3280ef),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              margin: EdgeInsets.only(left: 188),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 30.0,
                              ),
                            )
                          ],
                        )
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
                    child: Material(
                      elevation: 3.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  "images/news2.jpg",
                                  width:
                                      MediaQuery.of(context).size.width / 1.8,
                                  fit: BoxFit.cover,
                                  height: 150,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 1.8,
                              child: Text(
                                "DOGE staffers offer group resignation in order to not ‘legitimise’ Musk",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 1.8,
                              child: Text(
                                "A group of 21 US federal workers issued a resignation letter saying DOGE risked compromising sensitive government data.",
                                style: TextStyle(
                                    color: const Color.fromARGB(151, 0, 0, 0),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: 80.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  color: Color(0xff3280ef),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              margin: EdgeInsets.only(left: 188),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 30.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              "Explore",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10.0,),
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CategoryTile(
                    categoryname: categories[index].categoryName,
                    image: categories[index].image
                  );
                }
              ),
            ),
            Text(
              "Trending News",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              margin: EdgeInsets.only(right: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
              ),
              
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                    child: Image.asset("images/news1.jpg", width: 120, height: 120, fit: BoxFit.cover,),
                  ),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.7,
                        child: Text(
                          "DOGE staffers offer group resignation in order to not ‘legitimise’ Musk",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.7,
                        child: Text(
                          "A group of 21 US federal workers issued a resignation letter saying DOGE risked compromising sensitive government data.",
                          style: TextStyle(
                              color: const Color.fromARGB(151, 0, 0, 0),
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      
    );
  }
}
  class CategoryTile extends StatelessWidget {
    final image, categoryname;
    CategoryTile({this.categoryname, this.image});

    @override
    Widget build (BuildContext context){
      return Container(
        margin: EdgeInsets.only(right: 20.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset(image, height: 120, width: 120, fit: BoxFit.cover,),
            ),
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(color: Colors.black45, borderRadius: BorderRadius.circular(60)),
            ),
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
              child: Center(
                child: Text(categoryname, style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),),
              )
            )
          ],
        ),
      );
    }
  }
