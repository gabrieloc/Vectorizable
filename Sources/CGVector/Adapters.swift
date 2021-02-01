//
//  Adapters.swift
//
//
//  Created by Gabriel O'Flaherty-Chan on 2021-02-01.
//

#if canImport(UIKit)
  import UIKit
  typealias EdgeInsets = UIEdgeInsets
#elseif canImport(AppKit)
  import AppKit
  typealias EdgeInsets = NSEdgeInsets
#endif

extension CGPoint: Vector {
  public var components: [CGFloat] { [x, y] }
  public init(components: [CGFloat]) {
    self.init(
      x: components[safe: 0] ?? 0,
      y: components[safe: 1] ?? 0
    )
  }
}

extension CGSize: Vector {
  public var components: [CGFloat] { [width, height] }
  public init(components: [CGFloat]) {
    self.init(
      width: components[safe: 0] ?? 0,
      height: components[safe: 1] ?? 0
    )
  }
}

extension CGRect: Vector {
  public var components: [CGFloat] { [minX, minY, width, height] }
  public init(components: [CGFloat]) {
    self.init(
      x: components[safe: 0] ?? 0,
      y: components[safe: 1] ?? 0,
      width: components[safe: 2] ?? 0,
      height: components[safe: 3] ?? 0
    )
  }
}

extension EdgeInsets: Vector {
  public var components: [CGFloat] { [top, left, bottom, right] }
  public init(components: [CGFloat]) {
    self.init(
      top: components[safe: 0] ?? 0,
      left: components[safe: 1] ?? 0,
      bottom: components[safe: 2] ?? 0,
      right: components[safe: 3] ?? 0
    )
  }

  public static func == (lhs: Self, rhs: Self) -> Bool {
    lhs.components == rhs.components
  }
}
