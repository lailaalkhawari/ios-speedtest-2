import Foundation
func isValidPassword(password:String?) -> Bool {
    guard password != nil else { return false }
 
    // at least one uppercase,
    // at least one digit
    // at least one lowercase
    // 8 characters total
    let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}")
    return passwordTest.evaluate(with: password)
}

isValidPassword(password: "Laila2210")
isValidPassword(password: "laila22")

//part2

func checkPassword(password:String) -> String{
    if password.count >= 8 {
        return "password is valid"
    }else{
        return"password isnt valid"
    }
}
var returnCheckPassword =  checkPassword(password: "12345678")
print(returnCheckPassword)
