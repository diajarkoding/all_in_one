import 'dart:convert';

import 'package:all_in_one/serializable/api/user_api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'models/user_model.dart';

class Serializable extends StatefulWidget {
  const Serializable({Key? key}) : super(key: key);

  @override
  State<Serializable> createState() => _SerializableState();
}

class _SerializableState extends State<Serializable> {
  Future<UserIndex>? userData;

  @override
  void initState() {
    super.initState();

    userData = UserApi().fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Serializable'),
        centerTitle: true,
      ),
      body: FutureBuilder<UserIndex>(
        future: userData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            if (snapshot.hasData) {
              var data = snapshot.data!.data;
              return ListView.builder(
                  itemCount: data!.length,
                  itemBuilder: (context, index) {
                    var avatar = data[index].avatar;
                    var firstName = data[index].firstName;
                    var lastName = data[index].lastName;
                    var email = data[index].email;
                    return Container(
                      padding: const EdgeInsets.all(10),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage('$avatar'),
                        ),
                        title: Text('$firstName $lastName'),
                        subtitle: Text('$email'),
                      ),
                    );
                  });
            } else {
              return const Center(
                child: Text('Tidak ada data'),
              );
            }
          }
        },
      ),
    );
  }
}
