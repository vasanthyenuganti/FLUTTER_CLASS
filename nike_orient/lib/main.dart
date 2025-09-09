import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nike_orient/my_animi.dart';
import 'package:nike_orient/my_hero.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(DevicePreview(builder: (_) => MyFlexView()));
}

// class MainApp extends StatelessWidget {
//   MainApp({super.key});

//   List<String> techSkills = [
//     // Programming Languages & Frameworks
//     "Python",
//     "JavaScript",
//     "Java",
//     "C#",
//     "C/C++",
//     "SQL",
//     "PHP",
//     "Go",
//     "Ruby",
//     "Swift",
//     "Objective-C",
//     "Kotlin",
//     "R",
//     "HTML/CSS",
//     "TypeScript",
//     "ASP.NET",
//     "Perl",
//     "XML",
//     "Scala",
//     "MATLAB",

//     // Web & Software Development
//     "Front-end development (React, Angular, Vue.js)",
//     "Backend development (Node.js, Django, Rails, ASP.NET)",
//     "Mobile app development (iOS/Android)",
//     "API development & integration",
//     "Git version control",
//     "RESTful services",

//     // Data & Analytics
//     "Data analysis (Excel, R, Tableau, Power BI)",
//     "Data mining",
//     "Data visualization",
//     "Machine learning (TensorFlow, scikit-learn)",
//     "Big Data (Hadoop, Spark)",
//     "Database management (MySQL, PostgreSQL, MongoDB, Oracle)",

//     // Cloud Computing
//     "Amazon Web Services (AWS)",
//     "Microsoft Azure",
//     "Google Cloud Platform (GCP)",
//     "Cloud architecture",
//     "Virtualization (VMware, Hyper-V)",
//     "Cloud security",

//     // Cybersecurity
//     "Firewalls",
//     "Intrusion Detection Systems (IDS)",
//     "Ethical hacking",
//     "Encryption",
//     "Network security",
//     "Security compliance & risk management",

//     // Platforms, Tools, & Productivity
//     "Microsoft Office Suite (Excel, PowerPoint, Word, Outlook)",
//     "Google Workspace",
//     "Asana",
//     "Trello",
//     "Jira",
//     "Slack",
//     "Zoom",
//     "Teams",
//     "CRM tools (Salesforce, Zoho, HubSpot)",
//     "ERP systems (SAP, Oracle, Microsoft Dynamics)",

//     // DevOps & System Administration
//     "Linux/Unix system administration",
//     "Shell scripting (Bash, PowerShell)",
//     "Docker",
//     "Kubernetes",
//     "Continuous Integration/Continuous Deployment (CI/CD)",
//     "Automation (Ansible, Chef, Puppet)",

//     // UI/UX & Design
//     "Adobe Creative Suite (Photoshop, Illustrator, InDesign)",
//     "Figma",
//     "Sketch",
//     "UI/UX design principles",
//     "Wireframing",
//     "Prototyping",

//     // Networking
//     "TCP/IP",
//     "DNS",
//     "DHCP",
//     "LAN/WAN setup and optimization",
//     "VPN configuration",
//     "Network troubleshooting",

//     // Emerging Technologies
//     "Artificial Intelligence (AI)",
//     "Robotics/automation",
//     "Blockchain development",
//     "Augmented Reality (AR) / Virtual Reality (VR)",
//     "Internet of Things (IoT)",
//     "3D modeling and printing",

//     // Industry-Specific Tech Skills
//     "Learning Management Systems (LMS: Moodle, Blackboard)",
//     "EHR systems (for healthcare)",
//     "CAD software (AutoCAD, SolidWorks for engineering)",
//     "Supply chain management (SAP, Oracle, Infor)",
//     "Point of Sale (POS) systems (retail)",
//     "Video editing (Final Cut Pro, Premiere Pro)",
//     "Financial software (QuickBooks, Xero, Sage 50)",
//     "Marketing automation (Mailchimp, HubSpot)",
//     "SEO/SEM tools (Google Analytics, SEMrush)",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Wrap(
//                 spacing: 12,
//                 runSpacing: 12,
//                 // direction: Axis.vertical,
//                 alignment: WrapAlignment.end,
//                 runAlignment: WrapAlignment.spaceBetween,
//                 crossAxisAlignment: WrapCrossAlignment.center,
//                 children: List.generate(10, (i) {
//                   return Container(height: 200, width: 150, color: Colors.red);
//                 }),
//               ),
//               Wrap(
//                 children:
//                     techSkills
//                         .map(
//                           (ele) => Chip(
//                             avatar: CircleAvatar(backgroundColor: Colors.red),
//                             label: Text(ele),
//                           ),
//                         )
//                         .toList(),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// wrap
// flex

class MyFlexView extends StatelessWidget {
  const MyFlexView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHero());
  }
}

class MyView extends StatefulWidget {
  const MyView({super.key});

  @override
  State<MyView> createState() => _MyViewState();
}

class _MyViewState extends State<MyView> {
  bool _isVertical = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CupertinoSwitch(
          value: _isVertical,
          onChanged: (val) {
            setState(() {
              _isVertical = !_isVertical;
            });
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Badge(
              label: Text("3"),
              // offset: Offset(-24, -1),
              alignment: Alignment.centerRight,
              // isLabelVisible: false,
              backgroundColor: Colors.green,
              child: Icon(Icons.notifications_outlined),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: _isVertical ? Axis.vertical : Axis.horizontal,
        child: Flex(
          spacing: 12,
          direction: _isVertical ? Axis.vertical : Axis.horizontal,
          children: List.generate(100, (i) {
            return Container(
              height: 200,
              width: 200,
              color: i.isEven ? Colors.blue : Colors.red,
            );
          }),
        ),
      ),
    );
  }
}
