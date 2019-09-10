import UIKit



print("Hello, In Class 01")



//Welcome to In Class 01



//Question 1: Printing Variables

// Create a variable that holds your name

// Print the "Hello " concatenated with the variable that you just created.

var name:String = "Hyun"
print("1:====================With my name========================")
print("Hello \(name)")



//Question 2a: Loop over the provided array of names and print them

let names = ["Zoe", "Olive","Petra","Salvatore","Tommie","Nora","Cesar","Madelene","Dillon","Nikia"]
print("2a:====================Print sigle========================")
for index in names {
    
    print(index)
    
}







//Question 2b: Loop over the provided array of names and print the names in upper case
print("2b:====================UPPER CASE========================")
for index in names{
    
    print(index.uppercased())
    
}





//Question 2c: Loop over the provided array of names and print only the names that start with O, M or N

print("2c:==============print O,M, or N=================")

for index in names{
    
    
    
    if index.first == "O" ||  index.first == "M" || index.first == "N"{
        
        print(index)
        
    }
    
}





//Question 3: loop over the numbers from 1 to 20 and prints the numbers.

//But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”.

//For numbers which are multiples of both three and five print “FizzBuzz”

print("3:===============FIZZ BUZZ================")

for number in 1...20{
    
    //print (number % 3)
    
    if number % 3 == 0 {
        
        if number % 5 ==  0 {
            
            print ("FizzBuzz")
            
        }
        
        print("Buzz")
        
    }
        
    else if number % 5 == 0{
        
        print ("Fizz")
        
    }
    
}





//Question 4: Write a function that accepts a number and returns true if the number is even and false otherwise

func evenNumber (num: Int) -> Bool {
    
    var b:Bool = false
    
    if num % 2 == 0 {
        
        b = true
        
    }
    
    return b
    
}

print("4:================== Eeven Number ================")

print("input is 4 : \(evenNumber(num: 4))")





//Question 5: Write a function that accepts an array of numbers and returns the mininmum number in the array

func findMIn (input:[Int]) -> Int? {
    
    return input.min()
    
}

var num = [1,2,3,4,5,4,5,]
print("5:====================return the mininum Number========================")
print(findMIn(input: num)!)





//Question 6a: Create a User class that has name, age and gender as attributes.

//Create a simple initializer that receives the name, age, gender, and state values and initializes the attributes in the User object.

//Create a method that prints the User object attributes, you can also take a look at the following Protocol

// https://developer.apple.com/documentation/swift/string/2427941-init

//Create an example user that has name as "Bob Smith", age is 25, gener is Male, and state is NC print this user using the method you created.

//think like all colorful send are mix in boxe.
//you cannot grab it beacuse its mixed.
//class is like orgainze box,
//            extend ==="CustomStringConvertible"====
class User: CustomStringConvertible{
    //this function print out the when class runs.
    var description: String {
        
        return "User(Name: \(name!) Age: \(age!) Gender: \(gender!) State: \(state!))"
        
    }
    
    var name:String?
    
    var age:Int?
    
    var gender:String?
    
    var state:String?
    
    init(name:String, age:Int, gender:String, state:String) {
        
        self.name = name
        
        self.age = age
        
        self.gender = gender
        
        self.state = state
        
    }
    
}
print("6a:====================Simple initializer========================")
var user1 = User(name: "Bob Smith", age: 25, gender: "Male", state: "NC")



print(user1)



//Question 6b: You are provided with the usersData array, that has the user information formatted as a string comma separatated.

//Write a function that receives the userData array as input and returns an array of User objects based on the parsed users data.

//If the age is not a number or invalid then set it to the default of 28

//Print the array returned by your function to show the each user parsed.

let usersData =   ["Lola Grimsdyke,89,Female,NC",
                   
                   "Sybilla Martinetto,84,Female,NC",
                   
                   "Casi Roizn,78,Female,IL",
                   
                   "Wilma Guilaem,84,Female,CA",
                   
                   "Woodman Brooke,test,Male,MI",
                   
                   "Roberta Allkins,46,Female,NY",
                   
                   "Tommi Severs,31,Female,NC",
                   
                   "Clayson Lantiff,77,Male,NC",
                   
                   "Aleta Mirams,94,Female,NC",
                   
                   "Galina Roskelly,28,Female,MI",
                   
                   "Eunice Oldam,92,Female,CA",
                   
                   "Dominica Took,71,Female,CA",
                   
                   "Sashenka Serle,68,Female,CA",
                   
                   "Arvy Jenckes,39,Male,IL"];



//put raglar array to class.
func getUserObj(inputArray:[String]) -> [User]{
    
    //create new object User
    
    var userarray = [User]()
    
    for data in inputArray{
        
        //every line of the data put it in to one array
        
        //["Lola Grimsdyke","89","Female","NC"]
        
        var dataString = data.components(separatedBy: ",")
        
        //First one array is name
        
        let name:String = dataString[0]
        
        //[Output <*******>"Lola Grimsdyke"********,"89","Female","NC"]
        
        var age:Int?
        
        if(Int(dataString[1]) != nil) {
            
            age = Int(dataString[1])
            
        } else {
            
            age = 28
            
        }
        
        let gender = dataString[2]
        
        let state = dataString[3]
        
        let user = User(name: name, age: age!, gender: gender, state: state)
        
        userarray.append(user)
        
    }
    
    return userarray
    
}
print("6b:====================Array data into class ========================")
print(getUserObj(inputArray: usersData))





var datauser = getUserObj(inputArray:usersData)

print (datauser[0].age!)



//Question 6c: Using the user array generated, in question 6b, write a function that recieves the list of users generated, and the gender string and

//returns the average age for the provided gender.



func genderAge (objectUsersArray:[User], pickGender:String)->String{
    
    
    //initialize total age and cout how many.
    var totalAge:Int = 0
    
    var count:Int = 0
    
    
    //loop class array(it is not array!).
    for i in objectUsersArray{
        
        //i = one sigle array[0]
        
        if String(i.gender!) == pickGender{
            
            //i.gender!(It's object!!! unwrap it)
            
            //output will be Female or Male
            
           // print (i.gender!)
           
            //print (i.age!)
            
            totalAge += Int(i.age!)
            
            //if the user is female or male then this object will add.
            
            //print (totalAge)
            
            //total number of female or male.
            
            count = count+1
            
        }
        
    }
    
    //print (count)
    
    var avageAgePrivodeGender:Int
    
    avageAgePrivodeGender = totalAge/count
    
    return "Provided gender are: \(pickGender), and Average age are: \(avageAgePrivodeGender)"
    
}


print("6c:====================Function that give female average.========================")
print(genderAge(objectUsersArray: datauser, pickGender: "Female"))




//Question 6d: Using the user array generated, in question 6b, write a function that recieves the list of users generated and

//returns a dictionary containing the state as the key and the count of users in that state as the value


func countUserState (objectUserArray:[User])-> ([String:Int]) {
    //initialize Dictionary
    var count = [String:Int]()
    for i in objectUserArray {
        //in swift you can add same key and store in dictionary.
        count[i.state!, default: 0] += 1
    }
    return count
}
print("6d:====================count each state========================")
print (countUserState(objectUserArray: datauser))





//Question 6e: Using the user array generated, in question 6b, sort the usersData array in ascending order of ages

// a hint can be found at https://www.hackingwithswift.com/example-code/arrays/how-to-sort-an-array-using-sort

datauser.sort {
    Int($0.age!) < Int($1.age!)
    
}

print("6e:========================Sort by user age========================")

print (datauser)





//Question 7: You are provided with two lists of words, namely listA and listB. Write a function that receives both lists as parameters and returns the set of words that overlap in both lists, this is the intersection of both lists. Hint: it is a good idea to use Sets.

let listA = ["bathroom","wealth","failure","tradition","art","soup","message","education","health","thanks","communication","device","imagination","chest","definition","marriage","tea","performance","theory","wood","environment","establishment","measurement","industry","people","moment","recording","opportunity","area","contract","advertising","thing","dirt","college","video","engineering","exam","shopping","emotion","activity"]



let listB = ["passion","gate","relationship","obligation","art","idea","imagination","estate","debt","manager","computer","affair","weakness","college","revolution","quality","thanks","performance","replacement","economics","reception","penalty","passion","sector","currency","goal","effort","insurance","speech","inflation","science","difficulty","football","college","accident","engine","relation","conversation","poet","television"]


func overlaping (firstList: [String], secoundList: [String])->[String]{
    //initialize array that add overlaping list
    var addSome:[String] = []
    //every first listA check
    for i in firstList{
        // listA[0] listB[0..end]
        for j in secoundList{
            // if equal add to the inside function array
            if i == j{
                addSome.append(i)
                
              //  print (i)
                
            }
            
        }
        
    }
    
    return addSome
    
}

print("7:========================overlap========================")

print(overlaping(firstList: listA, secoundList: listB))
