# CGVector

Adapters and utilities for treating CG types as generic k-dimensional vectors.

### Examples

*Multiplying a `CGPoint` by a `CGSize`*
```swift
let point = CGPoint(x: 1, y: 2) * CGSize(width: 3, height: 4) // CGPoint x: 3, y: 8
```

*Adding a `CGPoint` to a `CGSize`*
```swift
let size = CGSize(width: 2, height: 2) * CGPoint.one // CGSize w: 2, h: 2
```
