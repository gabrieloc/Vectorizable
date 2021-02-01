//
//  Vector.swift
//
//
//  Created by Gabriel O'Flaherty-Chan on 2021-02-01.
//

public protocol Vector: Equatable {
  associatedtype Scalar: FloatingPoint
  var components: [Scalar] { get }
  init(components: [Scalar])
}
