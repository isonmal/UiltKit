//
//  String.swift
//  Pods-UiltKit_Example
//
//  Created by 籍孟飞 on 2019/4/19.
//

import Foundation

extension Uilt where Base == String {
    
    public func isValidatePhone() -> Bool {
        let check = "^1(([34578]\\d)\\d)\\d{7}$"
        let regextes = NSPredicate(format: "SELF MATCHES %@", check)
        return regextes.evaluate(with: base)
    }
    
    public func isValidateEmail() -> Bool {
        let pwassRegx = "[\\w!#$%&'*+/=?^_`{|}~-]+(?:\\.[\\w!#$%&'*+/=?^_`{|}~-]+)*@(?:[\\w](?:[\\w-]*[\\w])?\\.)+[\\w](?:[\\w-]*[\\w])?"
        let pwassTest = NSPredicate(format: "SELF MATCHES %@", pwassRegx)
        return pwassTest.evaluate(with: base)
    }
    
    public func isValidatePwass(_ min: Int, max: Int) -> Bool {
        let pwassRegx = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{\(min),\(max)}$"
        let pwassTest = NSPredicate(format: "SELF MATCHES %@", pwassRegx)
        return pwassTest.evaluate(with: base)
    }
    
    public func isValidatePostCode() -> Bool {
        let pwassRegx = "^[1-9][0-9]{5}$"
        let pwassTest = NSPredicate(format: "SELF MATCHES %@", pwassRegx)
        return pwassTest.evaluate(with: base)
    }
    
    public func isValidateServiceMobile() -> Bool {
        let pwassRegx = "^\\+?[0-9\\-]*$"
        let pwassTest = NSPredicate(format: "SELF MATCHES %@", pwassRegx)
        return pwassTest.evaluate(with: base)
    }
    
    public func isValidateIdNumber() -> Bool {
        let pwassRegx = "(^\\d{15}$)|(^\\d{18}$)|(^\\d{17}(\\d|X|x)$)"
        let pwassTest = NSPredicate(format: "SELF MATCHES %@", pwassRegx)
        return pwassTest.evaluate(with: base)
    }
}
