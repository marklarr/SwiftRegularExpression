SwiftRegularExpression
======================

Match regular expressions against strings without holding a ceremony.

```swift
"Something" =~ "Some[a-z]{4,7}" // true
        
"Ayaka" =~ "A*" // true
"Kayakayak" =~ "ayaka" // true
"Kayakayak" =~ "^ayaka$" // false
        
"Mickey" =~ "M..k" // true
"Mark" =~ "M..k" // true
"Ayaka" =~ "M..k" // false
        
"Mickey" =~ "M..k.." // true
"Mark" =~ "M..k.." // false
```
