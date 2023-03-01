import 'package:flutter/material.dart';
import 'package:soprts_buissens_sciences_technology/web_view/webViewScreen.dart';

Widget builerItemApp(context, item) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => WebViewScreen(url: item['url'])));
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 120,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                width: 150,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage('${item['urlToImage']}'),
                    // Image.network('https://alkhaleej-services.net/user_images/news/14-02-23-641230428.jpg'),
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      '${item['title']} ',
                      style: Theme.of(context).textTheme.bodyMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    '${item['source']['name']}',
                    style: TextStyle(color: Colors.deepOrangeAccent),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    '${item['publishedAt']}',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
