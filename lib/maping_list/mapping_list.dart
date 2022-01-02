import 'package:all_in_one/maping_list/maping_model.dart';
import 'package:flutter/material.dart';

class MappingPage extends StatelessWidget {
  const MappingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapping List'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: myList.length,
        itemBuilder: (snapshot, index) {
          print(index);
          var data = myList[index];
          List myFavFood = myList[index].favFood;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nama: ${data.nama}'),
                      Text('Umur: ${data.umur}'),
                      Text('Hobi: ${data.hobi}'),
                    ],
                  )
                ],
              ),
              Row(
                children: myFavFood.map((food) {
                  return Container(
                    color: Colors.amber,
                    margin: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Text(food),
                  );
                }).toList(),
              )
            ],
          );
        },
      ),
    );
  }
}
