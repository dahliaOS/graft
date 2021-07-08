import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.deepOrange,
                  child: Text('OS'),
                  foregroundColor: Colors.white,
                ),
                Container(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Virtual Machine',
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      'Linux - Ubuntu 20.04',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                    ),
                  ],
                )
              ],
            ),
            Container(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: ConstrainedBox(
                        constraints:
                            BoxConstraints(maxWidth: 500, maxHeight: 512),
                        child: Card(
                            semanticContainer: true,
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "MANAGEMENT",
                                    style: Theme.of(context).textTheme.overline,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(5),
                                        child: ElevatedButton.icon(
                                            onPressed: () {},
                                            icon:
                                                Icon(Icons.play_arrow_outlined),
                                            label: Text("START")),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(5),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(Icons.restart_alt),
                                            label: Text("RESTART")),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(5),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(Icons.dangerous),
                                            label: Text("DESTROY")),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )))),
                Expanded(
                    child: ConstrainedBox(
                        constraints:
                            BoxConstraints(maxWidth: 500, maxHeight: 512),
                        child: Card(
                            semanticContainer: true,
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "RESOURCES",
                                    style: Theme.of(context).textTheme.overline,
                                  )
                                ],
                              ),
                            )))),
              ],
            )
          ],
        ));
  }
}
