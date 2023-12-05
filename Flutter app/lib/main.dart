import 'package:flutter/material.dart';
import 'package:Wimbi/components/my_button.dart';
import 'package:Wimbi/components/my_textfield.dart';
import 'package:Wimbi/components/square_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:circular/circular.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:url_launcher/url_launcher.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void onSignInPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MapScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wimbi'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.blueAccent[100],
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    const Icon(
                      Icons.lock,
                      size: 80,
                      color: Colors.blueAccent,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "By signing in you are agreeing to our Terms and Privacy Policy",
                      style: TextStyle(
                        color: Colors.blueAccent[700],
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 20),
                    MyTextField(
                      controller: usernameController,
                      hintText: 'Username',
                      obscureText: false,
                    ),
                    const SizedBox(height: 10),
                    MyTextField(
                      controller: passwordController,
                      hintText: 'Password',
                      obscureText: true,
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot Password?',
                            style: TextStyle(color: Colors.blueAccent[600]),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    MyButton(
                      onTap: () => onSignInPressed(context),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.blueAccent[400],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0),
                            child: Text(
                              'Or continue with',
                              style: TextStyle(color: Colors.blueAccent[700]),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.blueAccent[400],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SquareTile(imagePath: 'lib/images/google.png'),
                        SizedBox(width: 25),
                        SquareTile(imagePath: 'lib/images/apple.png'),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Not a member?',
                          style: TextStyle(color: Colors.blueAccent[700]),
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          'Register now',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wimbi'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  'lib/images/logo.png',
                  width: 200,
                  height: 200,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 10),

            ],
          ),
        ),
      ),
    );
  }
}
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Wimbi'),
      centerTitle: true,
      backgroundColor: Colors.blueAccent,
    ),
    body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                'lib/images/logo.png',
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              ),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              ),
              child: Text(
                'Register',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}


class RegisterPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController(); // Added email controller
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
  TextEditingController();



  void onSignInPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WelcomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wimbi'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.blueAccent[100],
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    const Icon(
                      Icons.person_add,
                      size: 80,
                      color: Colors.blueAccent,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Create your account",
                      style: TextStyle(
                        color: Colors.blueAccent[700],
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    MyTextField(
                      controller: usernameController,
                      hintText: 'Username',
                      obscureText: false,
                    ),
                    const SizedBox(height: 10),
                    MyTextField(
                      controller: emailController,
                      hintText: 'Email', // Added email field
                      obscureText: false,
                    ),
                    const SizedBox(height: 10),
                    MyTextField(
                      controller: passwordController,
                      hintText: 'Password',
                      obscureText: true,
                    ),
                    const SizedBox(height: 10),
                    MyTextField(
                      controller: confirmPasswordController,
                      hintText: 'Confirm Password',
                      obscureText: true,
                    ),
                    const SizedBox(height: 10),
                    MyButton(
                      onTap: () => onSignInPressed(context),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.blueAccent[400],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0),
                            child: Text(
                              'Or continue with',
                              style:
                              TextStyle(color: Colors.blueAccent[700]),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.blueAccent[400],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SquareTile(imagePath: 'lib/images/google.png'),
                        SizedBox(width: 25),
                        SquareTile(imagePath: 'lib/images/apple.png'),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already a member?',
                          style: TextStyle(color: Colors.blueAccent[700]),
                        ),
                        const SizedBox(width: 4),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                          ),
                          child: Text(
                            'Go Back',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class WelcomePage extends StatelessWidget {
  // Function to handle pin taps
  void onPinTap(BuildContext context, String boatName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BoatStatePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Wimbi',
          style: TextStyle(color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,), // Set text color to white
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 8, // Adjust the flex value as needed (90%)
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/images/map.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  // Adjust the image dimensions as needed
                  Positioned(
                    top: 220,
                    left: 150,
                    child: GestureDetector(
                      onTap: () => onPinTap(context, 'Boat 1'),
                      child: Icon(Icons.location_on, color: Colors.green,size: 70.0),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left: 220,
                    child: GestureDetector(
                      onTap: () => onPinTap(context, 'Boat 1'),
                      child: Icon(Icons.location_on, color: Colors.red,size: 70.0),
                    ),
                  ),
                  Positioned(
                    top: 140,
                    left: 150,
                    child: GestureDetector(
                      onTap: () => onPinTap(context, 'Boat 1'),
                      child: Icon(Icons.location_on, color: Colors.green,size: 70.0),
                    ),
                  ),
                  Positioned(
                    top: 250,
                    left: 90,
                    child: GestureDetector(
                      onTap: () => onPinTap(context, 'Boat 1'),
                      child: Icon(Icons.location_on, color: Colors.red ,size: 70.0),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left: 70,
                    child: GestureDetector(
                      onTap: () => onPinTap(context, 'Boat 1'),
                      child: Icon(Icons.location_on, color: Colors.green,size: 70.0),
                    ),
                  ),
                  Positioned(
                    top: 300,
                    left: 150,
                    child: GestureDetector(
                      onTap: () => onPinTap(context, 'Boat 1'),
                      child: Icon(Icons.location_on, color: Colors.yellow,size: 70.0),
                    ),
                  ),

                  // Repeat for other pins
                ],
              ),
            ),
          ),
          // Container for the button
          Expanded(
            flex: 1, // Adjust the flex value as needed (10%)
            child: Container(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () => {_showBottomSheet(context)},
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent, // Change the background color as needed
                ),
                child: Text(
                  'Choose Boat',
                  style: TextStyle(fontSize: 25,
                    color: Colors.white,
                  ),
                  // Change the text size as needed
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

class BoatStatePage extends StatelessWidget {
  void Signedinpress(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SettingsPage()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 100.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text('Dashboard         ', style: TextStyle(color: Colors.white,fontSize: 35, fontWeight: FontWeight.bold,),),
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.cyan.shade400],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(16.0),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 1.0,
              ),
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return _buildGridCard(context, index);
                },
                childCount: 6,

              ),
            ),
          ),
          SliverToBoxAdapter(
            child: _buildOverallStateCard(),
          ),
        ],
      ),
    );
  }

  Widget _buildGridCard(BuildContext context, int index) {
    var icons = [
      Icons.battery_charging_full,
      Icons.invert_colors,
      Icons.speed,
      Icons.filter_vintage,
      Icons.phone_iphone,
      Icons.settings,
    ];


    var titles = [
      'Battery Level',
      'Tank Level',
      'Sensors State',
      'Filter State',
      'Pipes State',
      'Settings',
    ];

    var subtitles = ['100%', '95%', '64%', '27°', '100%', ''];

    if (index == 5) {
      return Card(
        elevation: 4.0,
        child: InkWell(
          onTap: () {
            // Navigate to the Settings page when the card is tapped
            Signedinpress(context);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              gradient: LinearGradient(
                colors: [Colors.blue.shade100, Colors.blue.shade50],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(icons[index], size: 40.0, color: Colors.blue),
                SizedBox(height: 10.0),
                Text(titles[index], style: TextStyle(color: Colors.blue.shade800)),
                SizedBox(height: 5.0),
                Text(subtitles[index], style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.blue.shade900)),
                SizedBox(height: 10.0),
                // Add a button text
                Text("", style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
        ),
      );
    }

    return Card(
      elevation: 4.0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          gradient: LinearGradient(
            colors: [Colors.blue.shade100, Colors.blue.shade50],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(icons[index], size: 40.0, color: Colors.blue),
            SizedBox(height: 10.0),
            Text(titles[index], style: TextStyle(color: Colors.blue.shade800)),
            SizedBox(height: 5.0),
            Text(subtitles[index], style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.blue.shade900)),
          ],
        ),
      ),
    );
  }

  Widget _buildOverallStateCard() {
    return Padding(

      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        elevation: 4.0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            gradient: LinearGradient(
              colors: [Colors.blue.shade300, Colors.blue.shade100],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.bar_chart, size: 40.0, color: Colors.blue.shade900),
              Text(
                'Overall State',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.blue.shade900),
              ),
              Text(
                '99.4%',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.blue.shade900),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildClickableSettingsCard(BuildContext context, IconData icon, String title) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SettingsScreen()),
      );
    },
    child: Card(
      elevation: 4.0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          gradient: LinearGradient(
            colors: [Colors.blue.shade100, Colors.blue.shade50],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 40.0, color: Colors.blue),
            SizedBox(height: 10.0),
            Text(title, style: TextStyle(color: Colors.blue.shade800)),

          ],
        ),
      ),
    ),
  );
}

Widget _buildOverallStateCard() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: Card(
      elevation: 4.0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          gradient: LinearGradient(
            colors: [Colors.blue.shade300, Colors.blue.shade100],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.bar_chart, size: 40.0, color: Colors.blue.shade900),
            Text(
              'Overall State',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.blue.shade900),
            ),
            Text(
              '99.4%',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.blue.shade900),
            ),
          ],
        ),
      ),
    ),
  );
}



class meteo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('weather'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            _buildSettingItem(Icons.wind_power, 'Wind', '10 km/h', 'Normal'),
            _buildSettingItem(Icons.umbrella, 'Rain', '3%', 'No risk'),
            _buildSettingItem(Icons.water_drop, 'Humidity', '50%', 'Normal'),
            _buildSettingItem(Icons.thermostat, 'Temperature', '27°', 'Normal'),
            _buildSettingItem(Icons.wb_sunny, 'UV Index', '2.3', ''),
            _buildSettingItem(Icons.visibility, 'Visibility', '16.1 km', 'Good and Clear'),
            _buildSettingItem(Icons.storm, 'Storm Risk', '0%', ''),
            // Add more items here
          ],
        ),
      ),
    );
  }

  Widget _buildSettingItem(IconData icon, String title, String value, String subtitle) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Text(value),
      ),
    );
  }
}

class MapSelectScreen extends StatefulWidget {
  @override
  _MapSelectScreenState createState() => _MapSelectScreenState();
}

class _MapSelectScreenState extends State<MapSelectScreen> {
  String selectedWimbi = 'Wimbi 1';

  void _navigateToWelcomePage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WelcomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select your Wimbi')),
      body: Stack(
        children: <Widget>[
          Image.asset('lib/images/map.png', fit: BoxFit.cover),
          Positioned(
            top: 200,
            left: 70,
            child: IconButton(
              icon: Icon(Icons.flag),
              color: selectedWimbi == 'Wimbi 1' ? Colors.red : Colors.grey,
              onPressed: () {
                setState(() {
                  selectedWimbi = 'Wimbi 1';
                });
                _navigateToWelcomePage();
              },
            ),
          ),
          // Repeat for other flags
        ],
      ),
      bottomSheet: DropdownButton<String>(
        value: selectedWimbi,
        items: <String>['Wimbi 1', 'Wimbi 2', 'Wimbi 3'].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            selectedWimbi = newValue!;
          });
          _navigateToWelcomePage();
        },
      ),
    );
  }
}

void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return FractionallySizedBox(
        heightFactor: 0.8,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Wimbi ${index + 1}'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BoatStatePage(),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      );
    },
  );
}


class profie extends StatelessWidget {
  const profie({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('lib/images/avatar.png'),
            ),
            const SizedBox(height: 20),
            itemProfile('Name', 'Wimbi', CupertinoIcons.person),
            const SizedBox(height: 10),
            itemProfile('Phone', '+21622556677', CupertinoIcons.phone),
            const SizedBox(height: 10),
            itemProfile('Address', 'My address, Ariana city', CupertinoIcons.location),
            const SizedBox(height: 10),
            itemProfile('Email', 'example@ieee.org', CupertinoIcons.mail),
            const SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Text('Edit Profile')
              ),
            )
          ],
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.deepOrange.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10
            )
          ]
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
}




class SolarPanel extends StatefulWidget {
  @override
  _SolarPanelWidgetState createState() => _SolarPanelWidgetState();
}

class _SolarPanelWidgetState extends State<SolarPanel> {
  int deg = 0;
  String imageUrl = '';
  String degWithSymbol = '0%';

  void incrementDeg() {
    setState(() {
      deg++;
      updateDegWithSymbol();
    });
  }

  void decrementDeg() {
    setState(() {
      deg--;
      updateDegWithSymbol();
    });
  }

  void updateDegWithSymbol() {
    degWithSymbol = '$deg%'; // Met à jour la variable avec le symbole °C
  }

  @override
  void initState() {
    super.initState();
    updateDegWithSymbol();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 70),
            CircularSlider(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(-10, -10),
                      color: Colors.white,
                      blurRadius: 20,
                      spreadRadius: 1),
                  BoxShadow(
                      offset: Offset(10, 10),
                      color: Color.fromARGB(255, 158, 158, 158),
                      blurRadius: 20,
                      spreadRadius: 1),
                ],
              ),
              maxValue: 51,
              radius: 100,
              child: Text(
                degWithSymbol,
                style: TextStyle(fontSize: 30),
              ),
              color: Color(0xffEEEEEE),
              sliderColor: Color(0xff62CBDA),
              unSelectedColor: Color(0xffD7DEE7),
              onDrag: (deg) {
                setState(() {
                  this.deg = deg;
                  updateDegWithSymbol();
                });
              },
            ),
            SizedBox(height: 30),
            Text(
              '$degWithSymbol',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: decrementDeg,
                  child: Icon(Icons.remove),
                ),
                SizedBox(width: 15),
                ElevatedButton(
                  onPressed: incrementDeg,
                  child: Icon(Icons.add),
                ),
              ],
            ),
            Image.asset(
              deg <= 19
                  ? 'lib/images/1.png'
                  : deg <= 25
                  ? 'lib/images/1.png'
                  : 'lib/images/1.png',
              width: 250,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}


class SettingsPage extends StatefulWidget {


  void onSignInPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WelcomePage()),
    );
  }
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Settings'),
      ),
      backgroundColor: Colors.blueAccent,
      body: ListView(
        children: <Widget>[
          SettingItem(
            icon: Icons.cloud,
            title: 'Weather',
            subtitle: 'Climate Condition',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => meteo()),
              );
            },
          ),
          SettingItem(
            icon: Icons.directions_boat,
            title: 'Boats State',
            subtitle: '',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BoatStatePage2()),
              );
            },
          ),
          SettingItem(
            icon: Icons.person,
            title: 'Profile',
            subtitle: '',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profie()),
              );
            },
          ),
          SettingItem(
            icon: Icons.language,
            title: 'Language',
            subtitle: '',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LanguageSelectionScreen()),
              );
              // Add navigation code for the 'Langue' setting here
            },
          ),
        ],
      ),
    );
  }
}





class SettingItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback? onPressed;

  const SettingItem({
    Key? key,
    required this.icon,
    required this.title,
    this.subtitle = '',
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: ListTile(
        leading: Icon(icon, color: Colors.yellow),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          if (onPressed != null) {
            onPressed!(); // Call the onPressed function if it's not null
          }
        },
      ),
    );
  }
}


class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Offset position = Offset(270, 280); // Initial position for the draggable point

  // Function to handle taps on objects
  void onObjectTap(String objectName) {
    print('$objectName tapped');
    // Perform actions based on the object tapped, like navigation
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background map image
          Positioned.fill(
            child: Image.asset(
              'lib/images/tnmap.png',
              fit: BoxFit.cover,
            ),
          ),
          // Clickable objects
          Positioned(
            left: 260, // Adjust the position as needed
            top: 155,
            child: GestureDetector(
              onTap: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WelcomePage()),
              );},
              child: Image.asset('lib/images/object1.png',scale: 0.65,),
            ),
          ),
          Positioned(
            left: 170, // Adjust the position as needed
            top: 150,
            child: GestureDetector(
              onTap: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WelcomePage()),
              );},
              child: Image.asset('lib/images/object1.png',scale: 0.65,),
            ),
          ),
          Positioned(
            left: 260, // Adjust the position as needed
            top: 450,
            child: GestureDetector(
              onTap: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WelcomePage()),
              );},
              child: Image.asset('lib/images/object1.png',scale: 0.65,),
            ),
          ),
          Positioned(
            left: 280, // Adjust the position as needed
            top: 480,
            child: GestureDetector(
              onTap: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WelcomePage()),
              );},
              child: Image.asset('lib/images/object1.png',scale: 0.65,),
            ),
          ),
          Positioned(
            left: 150, // Adjust the position as needed
            top: 100,
            child: GestureDetector(
              onTap: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WelcomePage()),
              );},
              child: Image.asset('lib/images/object1.png',scale: 0.65,),
            ),
          ),
          Positioned(
            left: 180, // Adjust the position as needed
            top: 200,
            child: GestureDetector(
              onTap: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WelcomePage()),
              );},
              child: Image.asset('lib/images/object1.png',scale: 0.65,),
            ),
          ),
          // Add more Positioned widgets for other objects here...

          // Draggable blue point
          Positioned(
            left: position.dx,
            top: position.dy,
            child: Draggable(
              feedback: Icon(Icons.my_location_rounded, color: Colors.blue, size: 50),
              child: Icon(Icons.my_location_rounded, color: Colors.blue, size: 50),
              childWhenDragging: Container(),
              onDragEnd: (details) {
                setState(() {
                  position = details.offset;
                });
              },
            ),
          ),
          // Choose Your Region button
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _showBottomSheett(context);
                  });
                },
                child: Text(
                  'Choose Your Region',
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
                  onPrimary: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void _showBottomSheett(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return FractionallySizedBox(
        heightFactor: 0.8, // 40% of the screen height
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  // If it's the first item, add a tap handler
                  if (index == 0) {
                    return ListTile(
                      title: Text('Region ${index + 1}'),
                      onTap: () {
                        Navigator.pop(context); // Close the bottom sheet
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => WelcomePage()),
                        );
                      },
                    );
                  }
                  // For other items, you can handle them differently or the same
                  return ListTile(title: Text('Region ${index + 1}'));
                },
              ),
            ),
          ],
        ),
      );
    },
  );
}
class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              // Implement logout functionality
            },
          ),
          ListTile(
            leading: Icon(Icons.palette),
            title: Text('Change Colors'),
            onTap: () {
              // Implement color change functionality
            },
          ),
          ListTile(
            leading: Icon(Icons.directions_boat),
            title: Text('Add Boat'),
            onTap: () {

            },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Change Language'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LanguageSelectionScreen()),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildSocialButton(
                  icon: Icons.facebook,
                  onPressed: () => _launchURL('https://www.facebook.com/profile.php?id=100011887802388'),
                ),
                _buildSocialButton(
                  icon: Icons.camera_alt,
                  onPressed: () => _launchURL('https://www.instagram.com/chater.mrezgui/'),
                ),
                _buildSocialButton(
                  icon: Icons.work,
                  onPressed: () => _launchURL('https://www.linkedin.com/in/chater-mrezgui-342125299/'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialButton({required IconData icon, required VoidCallback onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        padding: EdgeInsets.all(24),
      ),
      child: Icon(icon),
    );
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class LanguageSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Language'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('عربي - Arabic'),
            onTap: () {
              // Implement language change functionality
            },
          ),
          ListTile(
            title: Text('Français - French'),
            onTap: () {
              // Implement language change functionality
            },
          ),
          ListTile(
            title: Text('English'),
            onTap: () {
              // Implement language change functionality
            },
          ),
          ListTile(
            title: Text('Español - Spanish'),
            onTap: () {
              // Implement language change functionality
            },
          ),
          ListTile(
            title: Text('choose another language'),
            onTap: () {
              // Implement language change functionality
            },
          ),
        ],
      ),
    );
  }
}


class trackerdirection extends StatefulWidget {
  @override
  _trackerdirectionState createState() => _trackerdirectionState();
}

class _trackerdirectionState extends State<trackerdirection> {
  Offset position = Offset(270, 280);

  // Function to handle taps on objects
  void onObjectTap(String objectName) {
    print('$objectName tapped');
    // Perform actions based on the object tapped, like navigation
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tracker Direction'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
      ),
      body: Stack(
        children: <Widget>[
          // Background map image
          Positioned.fill(
            child: Image.asset(
              'lib/images/Trackerdirection.PNG',
              fit: BoxFit.cover,
            ),
          ),
          // Add more Positioned widgets for other objects here...

          // Draggable blue point
          Positioned(
            left: position.dx,
            top: position.dy,
            child: Draggable(
              feedback: Icon(Icons.my_location_rounded, color: Colors.blue, size: 50),
              child: Icon(Icons.my_location_rounded, color: Colors.blue, size: 50),
              childWhenDragging: Container(),
              onDragEnd: (details) {
                setState(() {
                  position = details.offset;
                });
              },
            ),
          ),
          // Choose Your Region button
        ],
      ),
    );
  }
}









class PanauSolairPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Panau Solair'),
        backgroundColor: Colors.blueAccent,
      ),
      // Your Panau Solair page content here
    );
  }
}

class BoatStatePage2 extends StatefulWidget {
  @override
  _BoatStatePage2 createState() => _BoatStatePage2();
}

class _BoatStatePage2 extends State<BoatStatePage2> {
  bool isCoverOn = false;
  bool isMachineOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        leading: BackButton(),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Cover'),
            leading: Icon(Icons.visibility),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SolarPanel()),
              );
            },
          ),
          ListTile(
            title: Text('Machine'),
            leading: Icon(Icons.settings),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BoatStatePage()),
              );
            },
          ),
          ListTile(
            title: Text('Tracker Direction'),
            leading: Icon(Icons.navigation),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => trackerdirection()),
              );
            },
          ),
        ],
      ),
    );
  }
}
