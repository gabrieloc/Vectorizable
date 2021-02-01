//
//  Util.swift
//
//
//  Created by Gabriel O'Flaherty-Chan on 2021-02-01.
//

import Foundation

extension Vector {
  static var length: Int {
    Self(components: []).components.count
  }

  static var one: Self {
    Self(components: .init(repeating: 1, count: length))
  }

  static var zero: Self {
    Self(components: .init(repeating: 0, count: length))
  }

  static func distance(lhs: Self, rhs: Self) -> Primitive {
    sqrt((lhs.components - rhs.components).reduce(0) { $0 + $1 * $1 })
  }
}

extension Vector where Primitive: FloatingPoint {
  static func lerp(_ a: Self, _ b: Self, _ t: Self.Primitive) -> Self {
    a * (1 - t) + b * t
  }
}

public extension Vector {
  var x: Primitive { components[safe: 0] ?? 0 }
  var y: Primitive { components[safe: 1] ?? 0 }
  var z: Primitive { components[safe: 2] ?? 0 }
  var w: Primitive { components[safe: 3] ?? 0 }
}
