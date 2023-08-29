import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: ListView(
        children: [
          Card(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
              decoration: const BoxDecoration(
              color: Color.fromARGB(50, 255, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular(12.0)), 
          ) ,
           child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
              const Expanded(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "search",
                    hintStyle: TextStyle(color: Color.fromARGB(255, 33, 150, 243)),
                    icon: Icon(Icons.search, color: Colors.blue,)
                  ),
                ),
              ),
              Expanded(
                flex: 0,
                child:Row( 
                  children: <Widget>[
                    IconButton(
                      onPressed: (){},
                       icon: Icon(Icons.mic, color: Colors.white,)
                      ),
                      VerticalDivider(color: Colors.white54),
                      IconButton(onPressed: (){},
                       icon: Icon(Icons.more_vert, color: Colors.white),
                       ),
                  ],
                ) ,
              ),
            ],
          ),
          ),
          ),
          const Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.wifi),
              ),
              title: Text("Wi-fi"),
            ),
          ),
          const Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.bluetooth_connected),
              ),
              title: Text("Bluetooth"),
            ),
          ),
          const Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.signal_cellular_alt),
              ),
              title: Text("Cellular"),
            ),
          ),
          const Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.notifications),
              ),
              title: Text("Notications"),
            ),
          ),
          const Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.speaker_phone),
              ),
              title: Text("Sounds"),
            ),
          ),
          const Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings_applications),
              ),
              title: Text("General"),
            ),
          ),
          const Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.brightness_2),
              ),
              title: Text("Focus"),
            ),
          ),
          const Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.accessibility),
              ),
              title: Text("Accessibility"),
            ),
          ),
          const Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.fingerprint),
              ),
              title: Text("touch ID"),
            ),
          ),
          const Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.sos),
              ),
              title: Text("Emergency"),
            ),
          ),
          const Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.exposure),
              ),
              title: Text("Exposure"),
            ),
          ),
          const Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.battery_0_bar),
              ),
              title: Text("Battery"),
            ),
          ),
          const Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.privacy_tip_sharp),
              ),
              title: Text("Privacy"),
            ),
          ),
          const Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.wallet),
              ),
              title: Text("Wallet"),
            ),
          ),
        ],
      ),
      );  
  }
}