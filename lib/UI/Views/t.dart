import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  TextEditingController _searchController = TextEditingController();
  // List<String> _choices = ['einmal', 'zweimal', 'dreimal'];
  // String _selectedChoice = 'einmal'; // العنصر المحدد افتراضيًا

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(children: [
          TextFormField(
            controller: _searchController,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'ابحث هنا',
              // يمكنك تخصيص المزيد من الخصائص هنا
            ),
            onChanged: (value) {
              // يمكنك القيام بإجراءات إضافية عند تغيير النص
              print('النص المدخل: $value');
            },
          )
        ]),
      ),
      // ListView.builder(
      //   itemCount: _choices.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     return ElevatedButton(
      //       child: Text(_choices[index],
      //           style: TextStyle(
      //             color: _selectedChoice == _choices[index]
      //                 ? Colors.white
      //                 : Colors.green,
      //           )),
      //       style: ElevatedButton.styleFrom(
      //         backgroundColor: _selectedChoice == _choices[index]
      //             ? Colors.green
      //             : Colors.white,
      //       ),
      //       onPressed: () {
      //         setState(() {
      //           _selectedChoice = _choices[index]; // تحديث العنصر المحدد
      //         });
      //       },
      //       // shape: RoundedRectangleBorder(
      //       //   borderRadius: BorderRadius.circular(30.0),
      //       // ),
      //     );
      //   },
      // ),
    );
  }
}
