import Foundation

class Pessoa {

    var name = ""
    var age = 0
    var jobType = ""

    init(_ name:String,_ age:Int) {
        self.name = name
        self.age = age
    }

    func birthday() {
        print("Happy Birthday")
        return age += 1
    }

    func job() {
        return print("Não informado")
    }
}

class Employee: Pessoa {
    var married = false

    override func job() {
        print("Referenciando o metodo sem sobrescrever ainda")
        super.job()
        
        print("Sobrescrevi!")
        jobType = "dev"
        return print("I'm Dev")
    }
}

var joan = Employee("Joan", 24)
joan.birthday()
joan.job()
print("Nome:", joan.name, "Idade:", joan.age, "Casado:", joan.married, "/ Job:", joan.job)