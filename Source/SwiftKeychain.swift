//  SwiftKeychain.swift
//
// Copyright (c) 2014 Minubia (http://minubia.com)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation

public enum Accessibility : RawRepresentable {
    
    case WhenUnlocked, AfterFirstUnlock, Always,
    WhenPasscodeSetThisDeviceOnly, WhenUnlockedThisDeviceOnly,
    AfterFirstUnlockThisDeviceOnly, AlwaysThisDeviceOnly
    
    public init?(rawValue: String) {
        if rawValue == String(kSecAttrAccessibleWhenUnlocked) {
            self = WhenUnlocked
        }
        else if rawValue == String(kSecAttrAccessibleAfterFirstUnlock) {
            self = AfterFirstUnlock
        }
        else if rawValue == String(kSecAttrAccessibleAlways) {
            self = Always
        }
        else if rawValue == String(kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly) {
            self = WhenPasscodeSetThisDeviceOnly
        }
        else if rawValue == String(kSecAttrAccessibleWhenUnlockedThisDeviceOnly) {
            self = WhenUnlockedThisDeviceOnly
        }
        else if rawValue == String(kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly) {
            self = AfterFirstUnlockThisDeviceOnly
        }
        else if rawValue == String(kSecAttrAccessibleAlwaysThisDeviceOnly) {
            self = AlwaysThisDeviceOnly
        }
        else {
            return nil
        }
    }
    
    public var rawValue: String {
        switch self {
        case WhenUnlocked:
            return String(kSecAttrAccessibleWhenUnlocked)
        case AfterFirstUnlock:
            return String(kSecAttrAccessibleAfterFirstUnlock)
        case Always:
            return String(kSecAttrAccessibleAlways)
        case WhenPasscodeSetThisDeviceOnly:
            return String(kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly)
        case WhenUnlockedThisDeviceOnly:
            return String(kSecAttrAccessibleWhenUnlockedThisDeviceOnly)
        case AfterFirstUnlockThisDeviceOnly: 
            return String(kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly)
        case AlwaysThisDeviceOnly: 
            return String(kSecAttrAccessibleAlwaysThisDeviceOnly)
        }
    }	
}

public func add<Key>(key: Key ){
    
}
