//
//  Adapters.swift
//
//
//  Created by Gabriel O'Flaherty-Chan on 2021-02-01.
//

#if canImport(UIKit)
  import UIKit
#elseif canImport(AppKit)
  import AppKit
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
