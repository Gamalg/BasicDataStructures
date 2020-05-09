import UIKit

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
func isCorrectBrackets(brackets: String) {
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
// ((()))(
// (((((
isCorrectBrackets(brackets: "([](){([])})")
isCorrectBrackets(brackets: "()[]}")
isCorrectBrackets(brackets: "{{[()]]")
isCorrectBrackets(brackets: "foo(bar);")
isCorrectBrackets(brackets: "foo(bar[i);")
isCorrectBrackets(brackets: "(((())))))")
isCorrectBrackets(brackets: ")))))")
isCorrectBrackets(brackets: "123huod")

isCorrectBrackets(brackets: "(")
isCorrectBrackets(brackets: "qwe(qwe")
isCorrectBrackets(brackets: "()((([]))")
