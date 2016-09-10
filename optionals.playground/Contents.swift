// Optionals


var optionalTest: String?

optionalTest = "404"

// print(optionalTest)

//if optionalTest != nil {
//    let theOptional = optionalTest!
//    print(theOptional)
//}

// Uma melhor opcao é usar o unwrapping atraves do if com variavel temporaria

//if let theOptional = optionalTest{
//    print(theOptional)
//}

// pode-se juntar mais de uma condicao no teste do if let

//por exemplo:

if let theOptional = optionalTest, optionalInt = Int(theOptional)
    where optionalInt == 404{
    print(theOptional)
}else{
    print("Erro")
}

// Aqui em cima ele esta verificando se tem algum valor dentro da variavel
// se tem ele verifica se pode transforma em integer com o metodo Int()
// e ainda verifica se o resultado dessa conversao e o inteiro 404 com o where


var maybeStr: String? = "maybe this be a string"

if let str = maybeStr {
    print(str)
}else{
    print("there is no string")
}

//guard

func stringuer(str: String?){
    guard let str = str else{
        return
    }
    print(str.characters.count)
}

stringuer(maybeStr)

