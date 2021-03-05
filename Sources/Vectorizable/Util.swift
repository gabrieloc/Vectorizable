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

  var magnitude: Scalar {
    sqrt(x * x + y * y)
  }
}

public extension Vector where Scalar: Divisible {
  var normalized: Self {
    self / magnitude
  }
}

public func distance<V: Vector>(_ lhs: V, _ rhs: V) -> V.Scalar {
  sqrt((lhs.components - rhs.components).reduce(0) { $0 + $1 * $1 })
}

public func lerp<V: Vector>(_ a: V, _ b: V, _ t: V.Scalar) -> V {
  a * (1 - t) + b * t
}

public extension Vector {
  var x: Scalar { components[safe: 0] ?? 0 }
  var y: Scalar { components[safe: 1] ?? 0 }
  var z: Scalar { components[safe: 2] ?? 0 }
  var w: Scalar { components[safe: 3] ?? 0 }

  static var right: Self {
    .init(components: [1, 0, 0])
  }

  static var left: Self {
    .init(components: [-1, 0, 0])
  }

  static var up: Self {
    .init(components: [0, 1, 0])
  }

  static var down: Self {
    .init(components: [0, -1, 0])
  }

  static var forward: Self {
    .init(components: [0, 0, 1])
  }

  static var back: Self {
    .init(components: [0, 0, -1])
  }
}

public func max<V1: Vector, V2: Vector>(_ lhs: V1, _ rhs: V2) -> V1 where V1.Scalar == V2.Scalar {
  V1(components: zip(lhs.components, rhs.components).map { Swift.max($0.0, $0.1) })
}

public func round<V: Vector>(_ vector: V) -> V {
  V(components: vector.components.map { Foundation.round($0) })
}

public func ceil<V: Vector>(_ vector: V) -> V {
  V(components: vector.components.map { Foundation.ceil($0) })
}

public func floor<V: Vector>(_ vector: V) -> V {
  V(components: vector.components.map { Foundation.floor($0) })
}
