//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class HasOnlyReadOnly: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var bar: String?

    public var foo: String?

    public init(bar: String? = nil, foo: String? = nil) {
        self.bar = bar
        self.foo = foo
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        bar = jsonDictionary.json(atKeyPath: "bar")
        foo = jsonDictionary.json(atKeyPath: "foo")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let bar = bar {
            dictionary["bar"] = bar
        }
        if let foo = foo {
            dictionary["foo"] = foo
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}