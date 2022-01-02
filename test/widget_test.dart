import 'package:http/http.dart' as http;

void main() async {
  await getData();
}

Future getData() async {
  final Uri url = Uri.parse('https://reqres.in/api/users/2');
  final response = await http.get(url);
  print(response.statusCode);
  if (response.statusCode == 200) {
    print(response.headers);
    print(response.body);
  } else {
    print('Tidak ada data');
  }
}
