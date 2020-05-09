import UIKit

//let node1 = Node(value: "1")
//let node2 = Node(value: "2")
//let node3 = Node(value: "3")
//
//node1.next = node2
//node2.next = node3
//node2.previous = node1
//node3.previous = node2

//let linkedList = LinkedList(head: node1)
//
//print(linkedList)

func test() -> String {
    let string = "zzzwwzzyz"
    var map = [Character: Int]()
    var indexArray = [Character]()
    for char in string {
        if let value = map[char] {
            map[char] = value + 1
        } else {
            map[char] = 1
        }
        
        if !indexArray.contains(char) {
            indexArray.append(char)
        }
    }
    
    var resultString = ""
    for char in indexArray {
        if let mappedCharValue = map[char] {
            resultString += "\(mappedCharValue)\(char)"
        }
    }
    
    print(resultString)
    
    return resultString
}

test()
