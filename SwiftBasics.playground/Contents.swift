//: Playground - noun: a place where people can play

/*
 * Voçe consegue rodar esses exemplos no https://swift.sandbox.bluemix.net/#/repl
 * Vale notar que compiladores onlines podem dar algum erro ou warning. Apenas ignore-os.
 */

// Método auxiliar
func example(of description: String, action: () -> Void) {
    print("\n--- Exemplo de:", description, "---")
    action()
}

example(of: "Tipos primitivos") {
    // Inteiros
    let idade = 21
    let maiorDeIdade: Int = 18

    // Float e Double
    let sempreDouble = 10.5
    let pontoFlutuante: Float = 2.5
    let PI: Double = 3.141592

    // String
    let string = "supercalifragilisticexpialidocious"
    let umaString: String = "Uma String"

    // Boolean
    let boolean: Bool = true

    // Variável e constante com o tipo inferido
    var variavel = "Isso é uma variável"
    let constante = "Isso é uma constante"

    // Variável e constante com tipo explícito
    var variavel1: String = "Isso também é uma varável"
    let constante1: String = "Isso também é uma constante"

    print(variavel)
    print(constante)
    print(variavel1)
    print(constante1)
}

example(of: "Operadores") {
    let numero1 = 113
    let numero2 = 311

    let resultado1 = numero1 + numero2   // Soma
    let resultado2 = numero2 - numero1   // Subtração
    let resultado3 = numero2 / numero1   // Divisão
    let resultado4 = numero1 * numero2   // Multiplicação
    let resultado5 = numero2 % numero1   // Módulo

    print(resultado1)
    print(resultado2)
    print(resultado3)
    print(resultado4)
    print(resultado5)
}

example(of: "Operadores lógicos") {
    let numero1 = 10
    let numero2 = 20

    let result1 = numero1 == numero2    // Igualdade
    let result2 = numero1 != numero2    // Diferença
    let result3 = numero1 > numero2     // Maior
    let result4 = numero1 >= numero2    // Maior ou igual
    let result5 = numero1 < numero2     // Menor
    let result6 = numero1 <= numero2    // Menor ou igual

    print(result1)
    print(result2)
    print(result3)
    print(result4)
    print(result5)
    print(result6)
}

example(of: "Optional Variables") {
    // Variáveis e constantes em Swift podem ser de dois tipos: Opcionais e não Opcionais.
    // Variáveis comuns não pode receber nulo (em Swift 'nil'), essas variáveis sempre devem ter um valos.
    // Variávies opcionais podem ter nil como valor.
    var variavelOpcional: String?
    //print(variavelOpcional) // Erro uma vez que 'variavelOpcional' possui nil comom valor
    variavelOpcional = "Hello, friend"
    print(variavelOpcional)    // Note que quando 'printamos' a variavel o print vem 'Optional("Hello, friend")

    // Para printarmos a String em sí precisamos fazer o 'desepacotamento' da variável (Unwrapping).
    // Para isso usamos o '!' para realizar o Unwrapping.
    print(variavelOpcional!)

    // Note que se o unwrapping ocorrer e a váriavel for nil isso pode fazer com que o aplicativo lançe uma exceção
    // var variavelOpcional: String? = nil
    // let constanteNaoOpcional: String = variavelOpcional!
}

example(of: "Control Flow") {
    let pixarFan = true
    if pixarFan {
        print("You are a Pixar fan")
    } else {
        print("Have you ever watched Frozen?")
    }
}

example(of: "Optional Binding") {
    let variavelOpcional: String? = "Everybody lies"
    
    // Para evitar o uso do 'force unwrap' (o uso de '!') que pode causar um exceção podemos realizar 'optional bindings'.
    if let value = variavelOpcional {
        print(value)
    }
    // Se constantOptional tiver um valor (for diferente de nil), coloque na constante 'value' e use dentro do 'if'
    // Caso contratrio continue a execução, ou execute o 'else'
}

example(of: "Nil coalescing operator") {
    // Nil coalescing operator é um operador que verifica se o valor de uma variavel opcional é nulo, se for ele atribui um valor
    // que você desejar, caso contrario ele usa o valor da variável.
    var nilVar: String? = nil

    print(nilVar ?? "Valor estava nil")

    nilVar = "Não é mais nil"

    print(nilVar ?? "Valor estava nil")
}

example(of: "Concatenação de Strings") {
    let primeiroNome: String = "Anna"
    let segundoNome: String = "Arendelle"
    print("\(primeiroNome) from \(segundoNome)")
}

example(of: "Métodos (funções)") {
    func disneyQuote() {
        print("The flower that blooms in adversity is the most rare and beautiful of them all.")
    }
    disneyQuote()
}

example(of: "Métodos (funções) com retorno") {
    func niceString() -> String {
        return "These violent delights have violent ends."
    }

    let aString = niceString()
    print(aString)
}

example(of: "Métodos (funções) com argumentos") {
    func loveIsAnOpenDoor(openDoor: Bool) {
        if openDoor {
            print("Yay!! 😄💙")
        } else {
            print("Nay!! ☹️")
        }
    }
    loveIsAnOpenDoor(openDoor: true)
}

example(of: "Métodos com parametros omitidos") {
    func add(_ number1: Int, _ number2: Int) -> Int {
        return number1 + number2
    }
    
    let result = add(5, 5)
    print(result)
}

example(of: "Early Exit (guard)") {
    // Outra forma de realizar 'optional binding', ou qualquer outra verificação que avalie para uma Boolean, é o uso do 'guard'.
    // Usa-se o guard quando alguma condição é necessaria para a execução do resto do código.
    func compliment(name: String?) {
        guard let name = name else { return }

        print("Hello \(name), I'm Olaf and I like warm hugs!")
    }

    var name: String? = nil
    compliment(name: name)
    // Note que como name estava nil nada após o 'guard' foi executado.

    name = "Elsa"
    compliment(name: name)
    // Como name agora possue 'Elsa' o código após o 'guard' foi executado assim como a variável name não é mais opcional após o 'guard'
}

example(of: "Valor padrão para parametros de métodos") {
    func catchphrase(phrase: String = "I'm Pickle Rick!!") {
        print(phrase)
    }

    catchphrase()
    catchphrase(phrase: "Wubba lubba dub dub")
}

example(of: "Arrays") {
    var disneyPixarCharacters = ["Stitch", "Rapunzel", "Buzz Lightyear", "Mr. Incredible", "Moana"]
    print(disneyPixarCharacters)
    disneyPixarCharacters.append("Vanellope Von Schweetz")
    print(disneyPixarCharacters)
}

example(of: "Loops") {
    let disneyPixarCharacters = ["Vanellope Von Schweetz", "Stitch", "Rapunzel", "Buzz Lightyear", "Ralph", "Princess Anna"]
    
    for character in disneyPixarCharacters {
        if(character == "Vanellope Von Schweetz" || character == "Princess Anna") {
            print("\(character) is one of my favorite character")
        } else {
            print("\(character) is an awesome character")
        }
    }

    var index = 0
    for index in index...10 {
        if index % 2 == 0 {
            print(index)
        }
    }
}

example(of: "Classes") {
    class Person {
        var sad = true
        var awesome = false

        func isSad() -> Bool {
            return sad
        }

        func stopBeingSad() {
            sad = false
        }

        func beAwesome() {
            awesome = true
        }
    }

    let me = Person()
    if me.isSad() {
        me.stopBeingSad()
        me.beAwesome()
    }

    print(me.isSad())
    print(me.awesome)
}

example(of: "Herança") {
    class Human {
        private let name: String
        private let surname: String

        init(name: String, surname: String) {
            self.name = name
            self.surname = surname
        }

        public func saySomething() {
            print("Hello! My name is \(name) \(surname)")
        }
    }

    class Employee: Human {
        private let employeeNumber: Int

        init(name: String, surname: String, employeeNumber: Int) {
            self.employeeNumber = employeeNumber
            super.init(name: name, surname: surname)
        }

        // Method overriding
        override func saySomething() {
            print("Stanley was so bad at following directions it's incredible he wasn't fired years ago.")
        }
    }

    class Manager: Employee {

        override func saySomething() {
            print("Yeah, Kitty got wet")
        }

    }

    class BigBoss: Employee {
        private let unit: String

        init(name: String, surname: String, employeeNumber: Int, unit: String) {
            self.unit = unit
            super.init(name: name, surname: surname, employeeNumber: employeeNumber)
        }

        override func saySomething() {
            print("Kept you waiting, huh?")
        }

    }

    let human = Human(name: "Steve", surname: "Jobs")
    human.saySomething()

    let employee = Employee(name: "Stanley", surname: "Employee", employeeNumber: 427)
    employee.saySomething()

    let manager = Manager(name: "Nathan", surname: "Drake", employeeNumber: 123)
    manager.saySomething()

    let john = BigBoss(name: "Solid", surname: "Snake", employeeNumber: 1, unit: "Fox")
    john.saySomething()
}

print("\n--- Exemplo de: Protocolos ---")
protocol Animal {
    var numberOfLegs: Int { get }
    var name: String { get }
    var isAlive: Bool { get }
}

class Cat: Animal {
    var numberOfLegs: Int {
        return 4
    }

    var name: String {
        return "Lumos"
    }

    var isAlive: Bool {
        return true
    }
}

let animal: Animal = Cat()
print(animal.isAlive)
print(animal.name)
print(animal.numberOfLegs)

print("\n--- Exemplo de: Extenssions ---")
// Extensions permite que em qualquer lugar do código você possa 'extender' uma classe.
class Human {
    private let name: String
    private let surname: String
    
    init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
    
    public func saySomething() {
        print("Hello! My name is \(name) \(surname)")
    }
}

protocol Soldier {
    func salute()
}

extension Human: Soldier {
    func salute() {
        print("Boss!!")
    }
}
let human = Human(name: "John", surname: "Price")
human.saySomething()
human.salute()

