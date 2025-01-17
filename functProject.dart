import 'dart:io';
displayStudent(List studentData){
        
        print(studentData);
}

addStudent(List studentData){

print('Enter sudent name:');
String name=stdin.readLineSync()!;
print('Enter sudent rollno:');
int rollno=int.parse(stdin.readLineSync()!);

print('name : $name , rollno : $rollno ');
//  print('----------------');

studentData.add({'name': name,'rollno': rollno});

print(studentData);
print( 'Student added successfully');
}

deleteStudent(List studentData){

  print('Enter Student Rollno');
  int inputrollno=int.parse(stdin.readLineSync()!);

  for (var student in studentData) {
    if(student['rollno']==inputrollno){
      studentData.remove(student);
    
      print('Student with $inputrollno has been deleted');
      print('Updated Data:');
      print(studentData);
      break;
    }
    else{
      print('rollno : $inputrollno is not exist in our data');
      
    }
  }

}

updateStudent(List studentData){

  print('Enter thr rollno which you want to update student name:');
   int inputrollnoofUpSt=int.parse(stdin.readLineSync()!);  //rollno of update student

  bool found=false;
  for (var student in studentData) {

    if(inputrollnoofUpSt==student['rollno']){
      print('Enter New Name of Student');
      student['name']=stdin.readLineSync()!;
      found=true;
      print('Student Name Updated Successfully');
     break;
    } 
  }
  if(!found){
    print('rollno : $inputrollnoofUpSt is not exist in our data');
    
  }
}

