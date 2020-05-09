import Foundation

public class Stack<Element> {
    private var elements: [Element]
    
    public init() {
        elements = []
    }
    
    public func pop() -> Element {
        return elements.removeLast()
    }
    
    public func add(_ element: Element) {
        elements.append(element)
    }
    
    public func top() -> Element? {
        return elements.last
    }
    
    public func isEmpty() -> Bool {
        return elements.isEmpty
    }
}
