import Foundation

class Node<T> {
    var next: Node?
    var value: T
    
    init(value: T) {
        self.value = value
    }
}

class LinkedList<T> {
    var head: Node<T>
    var tail: Node<T>
}
