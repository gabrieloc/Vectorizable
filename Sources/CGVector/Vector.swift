//
//  Vector.swift
//
//
//  Created by Gabriel O'Flaherty-Chan on 2021-02-01.
//

public protocol Vector: Equatable {
  associatedtype Primitive: FloatingPoint
  var components: [Primitive] { get }
  init(components: [Primitive])
}
