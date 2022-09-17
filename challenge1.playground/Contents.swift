import UIKit

func challenge1(input: String) -> Bool {
    let chars = input.map {
        String($0)
    }
    
    for index in ( 0 ..< chars.count) {
        for iterator in (index + 1 ..< chars.count) {
            if chars[index] == chars[iterator] {
                return false
            }
        }
    }
    return true
}

assert(challenge1(input: "No duplicates") == true, "Challenge 1 failed")
assert(challenge1(input: "abcdefghijklmnopqrstuvwxyz") == true,
"Challenge 1 failed")
assert(challenge1(input: "AaBbCc") == true, "Challenge 1 failed")
assert(challenge1(input: "Hello, world") == false, "Challenge 1 failed")
