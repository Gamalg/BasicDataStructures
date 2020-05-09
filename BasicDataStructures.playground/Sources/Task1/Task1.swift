import Foundation

/// https://stepik.org/lesson/41234/step/1?unit=19818
///
/// Задача со скобками
/// Input: Любая строка с любыми char'ами
/// Output: Success - в случае, если все скобки верны, т. е. на каждую открывающую, есть закрывающая. Если нет, индекс первой закрывающей скобки, для которой нет открывающей
/// Если нет такой скобки, тогда первый индекс открывающей скобки для которой нет открывающей
public class Task1 {
    
    public init() {
    }
    
    /*
     Sample Input 1:
     
     ([](){([])})
     Sample Output 1:
     
     Success
     Sample Input 2:
     
     ()[]}
     Sample Output 2:
     
     5
     Sample Input 3:
     
     {{[()]]
     Sample Output 3:
     
     7
     */
    
    /// - Parameter brackets: ( [ { ) ] }
    public func isCorrectBrackets(brackets: String) {
        func isClosedBracket(character: Character) -> Bool {
            return [")", "}", "]"].contains(character)
        }
        
        func isOppositeBracket(_ bracket: Character, for openBracket: Character) -> Bool {
            return openBracket == "(" && bracket == ")" ||
                openBracket == "[" && bracket == "]" ||
                openBracket == "{" && bracket == "}"
        }
        
        func isBracket(character: Character) -> Bool {
            let brackets: [Character] = ["(", "[", "{", ")", "]", "}"]
            return brackets.contains(character)
        }
        
        let stack = Stack<(Character, Int)>()
        var hasClosedBracketInString: Bool = false
        for (index, character) in brackets.enumerated() {
            if !isBracket(character: character) {
                continue
            }
            
            if isClosedBracket(character: character) {
                hasClosedBracketInString = true
                if let top = stack.top(), isOppositeBracket(character, for: top.0) {
                    stack.pop()
                } else {
                    // перва
                    print("\(index+1)")
                    return
                }
            } else {
                stack.add((character, index+1))
            }
        }
        
        if stack.isEmpty() {
            if hasClosedBracketInString {
                print("Success")
            } else {
                print("0")
            }
            
            return
        }
        
        if hasClosedBracketInString, let top = stack.top() {
            print(top.1)
            
            return
        }
        
        for (index, element) in brackets.enumerated() {
            if !hasClosedBracketInString {
                if isBracket(character: element) {
                    print(index+1)
                    return
                }
            }
        }
        
        print("nothing")
    }
}
