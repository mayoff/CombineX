import Foundation
import Quick
import Nimble

func throwAssertion<T>() -> Predicate<T> {
    return Predicate { actualExpression in
        return try Nimble.throwAssertion().satisfies(actualExpression.cast { _ in })
    }
}