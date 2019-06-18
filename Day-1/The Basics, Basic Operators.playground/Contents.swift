
//TUPLES
let Tuple = ("usman", 23)

let (name, age) = Tuple

print("NAME : \(name)\nAGE : \(age)")

let (_, age2) = Tuple
print("AGE2 : \(age2)")
print("AGE2 : \(Tuple.1)")


//CHECKING NILs

var temp : Int? = 5
//print (String(temp))       //Cannot invoke initializer for type 'String' with an argument list of type '(Int?)'

//CHECKING STRINGS

print(#"Here are three more double quotes: """"#)

var S: String = "HELLO THERE."

var te = S.index(after: S.startIndex)

//CHECKING IF LETs

var A : Int? = 5
var B : Int? = nil

if let t = A {                 //Cannot invoke initializer for type 'Int' with an argument list of type '(Int?)'
    print("A is available")
} else {
    print("A is NOT available")
}

/*
 var C : String? = "5"
 var D : String
 
 if let t = Int(String(C)) {                 //Cannot invoke initializer for type 'Int' with an argument list of type '(Int?)'
 print("A is available : \(String(t))")
 } else {
 print("A is NOT available")
 }
 */

