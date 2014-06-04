import Foundation

operator infix =~ {}

@infix func =~ (str: String, pattern: String) -> Bool {
    var error: NSError?
    let regex = NSRegularExpression.regularExpressionWithPattern(pattern, options: nil, error: &error)
    if (error) { return false }
    
    return regex.numberOfMatchesInString(str, options: nil, range: NSMakeRange(0, countElements(str))) > 0
}
