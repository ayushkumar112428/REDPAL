import 'package:flutter/material.dart';

class bookPage extends StatelessWidget {
  final Map<String, dynamic> book;
  const bookPage({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.blue,
      ),*/
      body: Container(
        color: Colors.white70,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.55,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 3, 101, 182),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.088,
                    ),
                    Container(
                      // alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.blue),
                        /*boxShadow: const [
                                BoxShadow(
                                  color: Colors.blue,
                                  blurRadius: 1.0,
                                  spreadRadius: 1.0,
                                ),
                              ]*/
                      ),
                      child: Center(
                          child: Image(image: AssetImage('${book['image']}'))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "${book['title']}",
                      style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${book['title']}",
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${book['price']}",
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        decoration: const BoxDecoration(
                        color: Colors.white30,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 25),
                        spreadRadius: 0.5,
                        blurRadius: 10,
                        color: Colors.white60,
                      ),
                    ]),
                        child: Text(
                          "${book['description']}",
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                        )),
                  ],
                ),
              ),

             SizedBox(height: 20,),

              const bayButton(),

              SizedBox(height: 50,),
              
            ],
          ),
        ),
      ),
    );
  }
}

class bayButton extends StatelessWidget {
  const bayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
        ElevatedButton(
          onPressed: (){}, 
          child: Container(
            width: 130,
            height: 50,
            child: Center(child: Text("Read",style: TextStyle(fontSize: 20),)),
            ),
          ),
        ElevatedButton(
          onPressed: (){}, 
          child: Container(
            width: 130,
            height: 50,
            child: Center(child: Text("Borrow",style: TextStyle(fontSize: 20),)),
            ),
          ),
      ],
    );
  }
}
