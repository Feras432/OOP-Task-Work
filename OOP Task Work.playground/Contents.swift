import UIKit

//Task 1
struct Person {
    var name: String
    var DOB: String
}
var ferasPerson = Person(name: "Feras", DOB: "March 3")
print(ferasPerson.DOB)



//Task 2
struct Employee {
    var id: Int
    var name: String
    var department: String
    
    func printDetails(){
        print("\(name) works in \(department) and has an id of \(id)")
        
    }
}

class Company {
    var Employees: [Employee] = []
    
    func addEmployee(employee: Employee){
        Employees.append(employee)
    }
    
    func listEmployees(){
        for Employee in Employees {
            Employee.printDetails()
        }
    }
}

var com001 = Company()

var emp001 = Employee(id: 134635423, name: "Feras", department: "IT")
com001.addEmployee(employee: emp001)

var emp002 = Employee(id: 453464576, name: "Fawaz", department: "HR")
com001.addEmployee(employee: emp002)

var emp003 = Employee(id: 345645, name: "Faisal", department: "Accounting")
com001.addEmployee(employee: emp003)

com001.listEmployees()
