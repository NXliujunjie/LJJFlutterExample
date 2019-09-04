import 'dart:io';
import 'dart:convert';

void httpRequest() async {
    var url = 'https://httpbin.org/ip';
    var httpClient = new HttpClient();
    String result;
    try {
      var request = await httpClient.getUrl(Uri.parse(url));
      var response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        var json = await response.transform(utf8.decoder).join();
        var data = jsonDecode(json);
        result = data['origin'];
        print(result);
      } else {
        result = 'Error';
      }
    } catch (exception) {
      result = 'Ip Error';
    }
  }