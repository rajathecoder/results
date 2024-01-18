import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:results/designs/designs.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int len = 0;
    /* return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children:const [
          UserAccountsDrawerHeader(
            accountName: Text('Collage Name'),
            accountEmail: Text('Collage Id'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image(image: NetworkImage('https://image.shutterstock.com/image-photo/old-brick-black-color-wall-260nw-1605128917.jpg'))
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.notifications, color: Colors.black87),
            title: Text('Notifications'),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.black87),
            title: Text('Settings'),
          ),
          ListTile(
            leading: Icon(Icons.info, color: Colors.black87),
            title: Text('About'),
          ),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.black87),
            title: Text('Exit'),
          ),
        ],
      ),
    );*/
    return Drawer(
      child: Column(
        children: <Widget> [
          Container(margin: const EdgeInsets.only(top: 10),),
           ListTile(
            leading: const Icon(Icons.info),
            title: const Text("About Us"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutUs()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.security_sharp),
            title: const Text("Privacy Policy"),
            onTap: (
                ){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PrivacyPolicy()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app_outlined),
            title: const Text("Exit "),
            onTap: (){
              SystemNavigator.pop();
            },
           ),
          Container(),
        ],
      ),
    );
  }
}



class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
        backgroundColor: const Color.fromRGBO(95, 49, 125,2) ,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              '     I am grateful to everyone who has supported me in creating this application. '
                  'Without the help of my family, friends and colleagues, '
                  'I would not have been able to make it a reality. Their encouragement and motivation was instrumental in the success of this project.'
                  ' I would like to thank them for their unwavering support throughout the process.\n\n\n'
                  '     The development of this application was also made possible by the use of modern technology and tools.'
                  'I am thankful for all the resources that were available to me which enabled me to create an efficient and user-friendly application.\n\n\n'
                  '     Finally, I would like to thank everyone who has used or is currently using this application.'
                  ' Your feedback has been invaluable in helping me improve it further and make it even better than before. Thank you all!\n\n\n'
                  'Special Thanks\n'
                  'My family\n'
                  'Prabhakara Pandian(Colleague) \n'
                  'Aravinth(Logo Designer) \n'
                  'Anandhi(Web Developer)\n'
                  'Shobia(Web Developer)',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}


class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Privacy Policy"),
        backgroundColor: const Color.fromRGBO(95, 49, 125,2) ,
      ),
      body: Container(
        height: sHeight(100, context),
        width: sWidth(100, context),
        child: const WebView(
          initialUrl: "https://mellow-lollipop-07290f.netlify.app/",
        ),
      ),
    );
  }
}
