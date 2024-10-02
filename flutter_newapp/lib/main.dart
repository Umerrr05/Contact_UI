import 'package:flutter/material.dart';

void main(){
  runApp(FlutterApp());
}
class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'FlutterApp',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: DashboadrdScreen(),
    );
  }
}

class DashboadrdScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var arrnames = ['Ateeq Ur Rehman','Abdullah','Umar Mughal','Talha Tariq','Saad Sheikh','Syed Hasan','Ali Mughal','Muhammad Daniyal','Arsalan Khan','Hamza Ahmad','Aun Raza','Suhaib Sajid','Wahaj Sheikh'];
    var arrcontacts = ['03308112417','03419827549','03203038796','032020282529','0316243227','03452787984','03273822277','03132729767','03168964421','03159245114','03442755948','03497749531','03432488869'];
    var imgassests = ['assets/images/Ateeq.jpg', 'assets/images/Abdullah.jpg','assets/images/Umar.jpeg','assets/images/Talha.jpg','assets/images/Saad.jpg','assets/images/Hasan.jpg','assets/images/Ali.jpg','assets/images/Daniyal.jpg','assets/images/Arsalan.jpg','assets/images/Hamza.jpg','assets/images/Aun.jpeg','assets/images/Suhaib.jpeg','assets/images/Wahaj.jpeg'];
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Contacts',style: TextStyle(color: Colors.white),)),
        backgroundColor: Colors.black54,
      ),
      body:ListView.separated(itemBuilder: (context, index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.green,
          backgroundImage: AssetImage(imgassests[index]),
        ),
        title: Text(arrnames[index]),
        subtitle: Text(arrcontacts[index]),
        trailing: Icon(Icons.add_call),
        ),
      ),
    );
    },
    itemCount: arrnames.length,
    separatorBuilder: (context,index){
        return Divider(height: 10, thickness: 1);
      },)

      );
  }

}