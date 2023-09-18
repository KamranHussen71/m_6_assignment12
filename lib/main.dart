import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage(),
    );

  }

}

class HomePage extends StatelessWidget {
 final List<String> imageUrls = [
    'https://img.freepik.com/free-psd/digital-device-mockup_53876-91374.jpg?w=826&t=st=1695060371~exp=1695060971~hmac=d0e40b95aba52af70d7fcd74e92095ccdd1b05189ca001c9600677a80ed9333d',
    'https://img.freepik.com/free-psd/laptop-blue-background-mock-up_1022-178.jpg?w=826&t=st=1695060436~exp=1695061036~hmac=12b3a3391e7e4f6f12497f895cc181409f091157a82540305c5f7956b663ae1a',
    'https://img.freepik.com/free-psd/still-life-technology-device-minimal-display_23-2150744509.jpg?w=996&t=st=1695060491~exp=1695061091~hmac=af9f4161760c2a6c03d320c4427cb3ae5c4553e6f4266e97e4979bf99ef9946e',
    'https://img.freepik.com/free-vector/laptop_53876-43921.jpg?w=740&t=st=1695060529~exp=1695061129~hmac=a177bdea0cc95db1c17c5f6fca75d02e64b595256432322d33360f28f17373ba',
    'https://img.freepik.com/free-photo/open-laptop-with-blank-white-screen-against-pink-background_23-2147916361.jpg?t=st=1695060491~exp=1695061091~hmac=9b5dee3c7ab82c4992e51afc95d791965ef27076e72ef8b2fa8c2537a9bf1567',
    'https://img.freepik.com/free-psd/laptop-mock-up-isolated_1310-1458.jpg?t=st=1695060529~exp=1695061129~hmac=9ad8a897231fb7d522f6a3f76a0d5f928f089171b9fea8406f008d4adb9e0646',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title:Text('Photo Gallery'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(

        padding: EdgeInsets.all(7),
        child: Column(
          children: [
            Padding(

              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Welcome to My Photo Gallery!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            Padding(

              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for photos...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1),
                  ),
                ),
              ),
            ),
            GridView.builder(

              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
              ),
              itemCount: imageUrls.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Photo ${index + 1} Clicked!!'),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.network(

                          imageUrls[index],
                          height: 75,
                          fit: BoxFit.cover,
                        ),
                        Padding(

                          padding: const EdgeInsets.all(6.0),
                          child: Center(child: Text('Photo ${index + 1}')),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Image.network(
                'https://img.freepik.com/free-psd/digital-device-mockup_53876-91374.jpg?w=826&t=st=1695060371~exp=1695060971~hmac=d0e40b95aba52af70d7fcd74e92095ccdd1b05189ca001c9600677a80ed9333d',
                height: 120,
                width: 80,
                fit: BoxFit.cover,
              ),
              title: Text('Photo 1'),
              subtitle: Text('Description for Photo 1'),
            ),

            ListTile(
              leading: Image.network(
                'https://img.freepik.com/free-psd/laptop-blue-background-mock-up_1022-178.jpg?w=826&t=st=1695060436~exp=1695061036~hmac=12b3a3391e7e4f6f12497f895cc181409f091157a82540305c5f7956b663ae1a',
                height: 120,
                width: 80,
                fit: BoxFit.cover,
              ),
              title: Text('Photo 2'),
              subtitle: Text('Description for Photo 2'),
            ),

            ListTile(
              leading: Image.network(
                'https://img.freepik.com/free-psd/still-life-technology-device-minimal-display_23-2150744509.jpg?w=996&t=st=1695060491~exp=1695061091~hmac=af9f4161760c2a6c03d320c4427cb3ae5c4553e6f4266e97e4979bf99ef9946e',
                height: 120,
                width: 80,
                fit: BoxFit.cover,
              ),
              title: Text('Photo 3'),
              subtitle: Text('Description for Photo 3'),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: FloatingActionButton(
                elevation: 18,
                child: Icon(Icons.upload),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Photos Uploaded Successfully!'),
                    ),
                  );
                },
                //child: Icon(Icons.upload),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
