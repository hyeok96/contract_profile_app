import 'package:animate_do/animate_do.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:profile_app/model/profile_model.dart';
import 'package:profile_app/screen/contract_detail_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Dio dio = Dio();
  List<ProfileModel> _list = [];

  Future<List<ProfileModel>> getProfileList() async {
    var url = "https://jsonplaceholder.typicode.com/users";
    var res = await dio.get(url);
    if (res.statusCode == 200) {
      var data = List<Map<String, dynamic>>.from(res.data);
      _list = data.map((e) => ProfileModel.fromMap(e)).toList();
      setState(() {});
    }
    return [];
  }

  @override
  void initState() {
    super.initState();
    getProfileList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Conacts"),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: _list.length,
        itemBuilder: (context, index) {
          return FadeInRight(
            delay: Duration(milliseconds: index * 100),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://xsgames.co/randomusers/assets/avatars/male/${_list[index].id}.jpg"),
              ),
              title: Text(
                _list[index].name,
              ),
              subtitle: Text(
                _list[index].email,
              ),
              trailing: IconButton(
                icon: const Icon(Icons.navigate_next),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContractDetailScreen(
                        profile: _list[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
