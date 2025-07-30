import Foundation

public struct Validator {
    
    public static func validEmail(_ email: String) -> Bool {
        let pattern = #"^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}$"#
        let regex = try? NSRegularExpression(pattern: pattern, options: [.caseInsensitive])
        let range = NSRange(location: 0, length: email.utf16.count)
        return regex?.firstMatch(in: email, options: [], range: range) != nil
    }
    
    public static func sayHello() {
        print("Hello World!")
    }
}
