import Foundation

public class Node<T> {
    public var next: Node<T>?
    public var value: T
    public var previous: Node<T>?
    
    public init(value: T) {
        self.value = value
    }
}

public class LinkedList<T> {
    public var head: Node<T>
    public var tail: Node<T>
    
    public var description: String {
        return "Head: \(head.value), Tail: \(tail.value)"
    }
    
    public init(head: Node<T>) {
        self.head = head
        var node: Node<T>?
        while head.next != nil {
            node = head.next
        }
        
        if node == nil {
            node = head
        }
        
        self.tail = node!
    }
    
    public func append(node: Node<T>) {
        
    }
    
    public func insert(_ nodeToInsert: Node<T>, after node: Node<T>) {
        
    }
    
    public func removeNodeFromBegin() {
        
    }
    
    public func removeNodeFromEnd() {
        
    }
}
