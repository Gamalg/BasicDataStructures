import UIKit

let task1 = Task1()
task1.isCorrectBrackets(brackets: "([](){([])})")
task1.isCorrectBrackets(brackets: "()[]}")
task1.isCorrectBrackets(brackets: "{{[()]]")
task1.isCorrectBrackets(brackets: "foo(bar);")
task1.isCorrectBrackets(brackets: "foo(bar[i);")
task1.isCorrectBrackets(brackets: "(((())))))")
task1.isCorrectBrackets(brackets: ")))))")
task1.isCorrectBrackets(brackets: "123huod")

task1.isCorrectBrackets(brackets: "(")
task1.isCorrectBrackets(brackets: "qwe(qwe")
task1.isCorrectBrackets(brackets: "()((([]))")
