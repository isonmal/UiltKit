//
//  Validateable.swift
//  KDT
//
//  Created by 籍孟飞 on 2019/1/7.
//  Copyright © 2019 籍孟飞. All rights reserved.
//  正则校验协议

import Foundation

public struct Uilt<Base> {
    let base: Base
    init(value: Base) {
        self.base = value
    }
}
public protocol Validateable {
    associatedtype WrapperType
    var ut: WrapperType {get}
}
extension Validateable {
    public var ut: Uilt<Self> { return Uilt(value: self) }
}

extension String: Validateable {}


