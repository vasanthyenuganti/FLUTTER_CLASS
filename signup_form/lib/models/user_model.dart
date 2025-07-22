class UserModel {
  final String name;
  final String roll;
  final String college;
  final String branch;
  final int passOutYear;
  final double attendance;
  final String? githubUserName;
  UserModel({
    required this.name,
    required this.roll,
    required this.college,
    required this.branch,
    required this.passOutYear,
    required this.attendance,
    this.githubUserName,
  });
}

final List<UserModel> users = [
  UserModel(
    name: 'Aarav Kumar',
    roll: '21CS101',
    college: 'Aditya Engineering College',
    branch: 'CSE',
    passOutYear: 2025,
    attendance: 92.5,
    githubUserName: 'aaravkumar-dev',
  ),
  UserModel(
    name: 'Meena Reddy',
    roll: '21CS102',
    college: 'Aditya Engineering College',
    branch: 'IT',
    passOutYear: 2025,
    attendance: 88.0,
    githubUserName: 'meenareddy',
  ),
  UserModel(
    name: 'Suresh Babu',
    roll: '21CS103',
    college: 'Aditya Engineering College',
    branch: 'CSE',
    passOutYear: 2025,
    attendance: 85.4,
    githubUserName: 'sureshbabu',
  ),
  UserModel(
    name: 'Divya Sharma',
    roll: '21CS104',
    college: 'Aditya Engineering College',
    branch: 'ECE',
    passOutYear: 2025,
    attendance: 90.0,
    githubUserName: 'divyasharma',
  ),
  UserModel(
    name: 'Rahul Yadav',
    roll: '21CS105',
    college: 'Aditya Engineering College',
    branch: 'EEE',
    passOutYear: 2025,
    attendance: 83.5,
    githubUserName: 'rahulyadav99',
  ),
  UserModel(
    name: 'Pooja Singh',
    roll: '21CS106',
    college: 'Aditya Engineering College',
    branch: 'CSE',
    passOutYear: 2025,
    attendance: 96.2,
    githubUserName: 'poojasingh',
  ),
  UserModel(
    name: 'Vikram Reddy',
    roll: '21CS107',
    college: 'Aditya Engineering College',
    branch: 'MECH',
    passOutYear: 2025,
    attendance: 78.9,
    githubUserName: 'vikramreddy',
  ),
  UserModel(
    name: 'Sneha Das',
    roll: '21CS108',
    college: 'Aditya Engineering College',
    branch: 'CSE',
    passOutYear: 2025,
    attendance: 91.3,
    githubUserName: 'sneha-das',
  ),
  UserModel(
    name: 'Nikhil Verma',
    roll: '21CS109',
    college: 'Aditya Engineering College',
    branch: 'CIVIL',
    passOutYear: 2025,
    attendance: 80.0,
    githubUserName: null, // no GitHub username
  ),
  UserModel(
    name: 'Harika V',
    roll: '21CS110',
    college: 'Aditya Engineering College',
    branch: 'CSE',
    passOutYear: 2025,
    attendance: 89.7,
    githubUserName: 'harikav',
  ),
];

// final UserModel user =UserModel(name: name, roll: roll, college: college, branch: branch, passOutYear: passOutYear, attendance: attendance)
