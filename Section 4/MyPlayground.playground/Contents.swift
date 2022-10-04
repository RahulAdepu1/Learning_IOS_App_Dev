//String Interpolation
//print("Text \(code) Text")
print("Hello \(2+3) World")

//Example
print("The result of 5 + 3 = \(5+3)")

//Learning variables
var a = 5
var b = 8

//code to swap values without assigning numerical values
var c = a
a = b
b = c

print("a: \(a)")
print("b: \(b)")


//------------------------------------
//Learning arrays
var numbers = [45, 73, 195, 53]

let computedNumbers = [numbers[0]*numbers[1], numbers[1]*numbers[2], numbers[2]*numbers[3], numbers[3]*numbers[0]]
    
    
print(computedNumbers)


//---------------Lecture 46---------------------
//----------------------------------------------
//Learning Constants

//This will work for variables with changing values
//var x = 3
//x = 5
//print(x)

//For constants
let x = 3
//x=5 // will cause and error "note: change 'let' to 'var' to make it mutable"
print(x)

//----------------------------------------------
//Learning data Types
//String -> "String" //Text is called string
//Int -> 12 //whole number
//Float -> 12.345 //for numbers with decimal places
//Double -> 3.14159265359 // for numbers with more decimal values
//Bool -> true/false // Only to check if it is true or false

//----------------------------------------------
//Randomisation
//Method one
//Int.random(in: lower ... upper) //don't forget 3 dots to show the range
//let randomNumber = Int.random(in: 1 ... 3) //closed range of whole number with inclusive of 1 and 3
//print(randomNumber)

//The 3 dots represent closed range operator
//For half open range operator we use "..<"
//this does not include the upper value

//We can get a number with decimal values by making following changes
//let randomNumber = Float.random(in: 1 ... 3)
//print(randomNumber)
//this will give you values from 1.0000000 upto 3.0000000

//BUT IF YOU CHANGE THE RANGE RANGE BOUND then
//let randomNumber = Float.random(in: 1 ..< 3)
//print(randomNumber)
//this will give you values from 1.0000000 upto 2.9999999 and will not have 3.0000000 as a possible outcome because of range bound set

//We can also have a random boolean value but since the possible outcomes of a boolean values are true/false there is no range
//Bool.random()

//FOR ARRAYS
//array[Int.random(in: lower ... upper) -> to get random values based on their position in the array list
//array.randomElement() -> to get a random value from the array
//array.shuffle() -> to shuffle the position of the values in the array list

let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    
//The number of letters in alphabet equals 26
//var p1 = alphabet.randomElement()!
//var p2 = alphabet.randomElement()!
//var p3 = alphabet.randomElement()!
//var p4 = alphabet.randomElement()!
//var p5 = alphabet.randomElement()!
//var p6 = alphabet.randomElement()!
//let password = p1 + p2 + p3 + p4 + p5 + p6

//let password = alphabet.randomElement()!
//+ alphabet.randomElement()!
//+ alphabet.randomElement()!
//+ alphabet.randomElement()!
//+ alphabet.randomElement()!
//+ alphabet.randomElement()!

//let password = alphabet[Int.random(in: 0...25)]
//+ alphabet[Int.random(in: 0...25)]
//+ alphabet[Int.random(in: 0...25)]
//+ alphabet[Int.random(in: 0...25)]
//+ alphabet[Int.random(in: 0...25)]
//+ alphabet[Int.random(in: 0...25)]
print(password)

//Why does alphabet.randomElement()! work while alphabet.randomElement() does not. why is the "!" at the end changing the value


//---------------Lecture xx---------------------
//----------------------------------------------
//Learning
