//
//  Util.swift
//
//
//  Created by Gabriel O'Flaherty-Chan on 2021-02-01.
//

import Foundation

public extension Vector {
  internal static var length: Int {
    Self(components: []).components.count
  }

  static var one: Self {
    Self(components: .init(repeating: 1, count: length))
  }

  static var zero: Self {
    Self(components: .init(repeating: 0, count: length))
  }
}

func distance<V: Vector>(_ lhs: V, _ rhs: V) -> V.Scalar {
  sqrt((lhs.components - rhs.components).reduce(0) { $0 + $1 * $1 })
}

func lerp<V: Vector>(_ a: V, _ b: V, _ t: V.Scalar) -> V {
  a * (1 - t) + b * t
}

public extension Vector {
  var x: Scalar { components[safe: 0] ?? 0 }
  var y: Scalar { components[safe: 1] ?? 0 }
  var z: Scalar { components[safe: 2] ?? 0 }
  var w: Scalar { components[safe: 3] ?? 0 }
}
