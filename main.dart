import 'functProject.dart';
import 'dart:io';
void main(){
   
  mainMenu();
}

// funtion


mainMenu(){

  List studentData=[
        {'name' : 'talha','rollno' : 25},
        {'name' : 'samad','rollno' : 44},
        {'name' : 'ali','rollno' : 10},
        {'name' : 'bilal','rollno' : 38}
        ];

  print('Welcome To Student Management System');
  print('----------------');
  print('loading :)');
  print('----------------');



  // 1 second baad run hoga jo isky andr likha wa hai
  Future.delayed(Duration(seconds: 1),(){

  while (true){
      print('----------------');
     print('Student Management System');
      print('----------------');
    print('Press 1 for Display Students Data');
  print('Press 2 for Add New Student In Data');
  print('Press 3 for Delete Student From Data');
  print('Press 4 for Update Student Data');
  print('Press 5 for Exit From system');
  print('Enter an one option:');

  int inputOption=int.parse(stdin.readLineSync()!);

  if(inputOption==1){
    print('----------------');
    print('Students Data:');
    print('----------------');
    displayStudent(studentData);
    
  }
  else if(inputOption==2){
     print('----------------');
    print('Add Student:');
     print('----------------');
     addStudent(studentData);
     
  }
  else if(inputOption==3){
     print('----------------');
    print('Delete Student:');
     print('----------------');
    deleteStudent(studentData);
  }
  else if(inputOption==4){
    print('----------------');
    print('Update Student:');
    print('----------------');
    updateStudent(studentData);
  }
  else if(inputOption==5){
    print('You Exit From Program.......');
    break;
  }
  else{
    print('invalid input');
  }

  }});

 
}
