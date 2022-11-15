pragma solidity 0.4.25;

contract Mycontract{

    struct Student{
        int id;
        int marks;
        string name;
        string department;
    }

    int public stdCount=0;
    mapping(int=>Student) public arr;

    // event log(string msg);

    // fallback() external view{
    //     emit log("student is not present");
    // }

    function addStudent(int id,int marks,string name,string department) public{
        stdCount=stdCount+1;
        arr[stdCount]=Student(id,marks,name,department);
    } 

    function BonusMarks(int mark,int no) public{
        arr[no].marks=arr[no].marks+mark;
    }

    function getName(int no) public view returns(string){
        return arr[no].name;
    }
}
