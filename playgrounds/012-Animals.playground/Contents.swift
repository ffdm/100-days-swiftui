import UIKit

class User {
    var username = "Anonymous"
}
var user1 = User()
var user2 = user1
user2.username = "Nedge"
print(user1.username)
