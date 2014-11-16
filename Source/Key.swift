//  Key.swift
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

protocol Key {
    
    var accessibility: Accessibility { get set }
    var accessGroup: CFStringRef { get set }
    init(attributes: Dictionary<String, Any>)
}

public struct GenericKey: Key {
    
    private var _accessibility:     Accessibility!
    private var _accessGroup:       CFStringRef!
    private var _creationDate:      CFDateRef!
    private var _modificationDate:  CFDateRef!
    private var _description:       CFStringRef!
    private var _comment:           CFStringRef!
    private var _creator:           CFNumberRef!
    private var _type:              CFNumberRef!
    private var _label:             CFStringRef!
    private var _isInvisible:       CFBooleanRef!
    private var _isNegative:        CFBooleanRef!
    private var _account:           CFStringRef!
    private var _service:           CFStringRef!
    private var _generic:           CFDataRef!
    
    var accessibility: Accessibility {
        get {
            return _accessibility
        }
        set {
            _accessibility = newValue
        }
    }
    
    var accessGroup: CFStringRef {
        get {
            return _accessGroup
        }
        set {
            _accessGroup = newValue
        }
    }
    
    var creationDate: CFDateRef {
        get {
            return _creationDate
        }
    }
    
    var modificationDate: CFDateRef {
        get {
            return _modificationDate
        }
    }
    
    var description: CFStringRef {
        get {
            return _description
        }
        set {
            _description = newValue
        }
    }
    
    var comment: CFStringRef {
        get {
            return _comment
        }
        set {
            _comment = newValue
        }
    }
    
    var creator: CFNumberRef {
        get {
            return _creator
        }
        set {
            _creator = newValue
        }
    }
    
    var type: CFNumberRef {
        get {
            return _type
        }
        set {
            _type = newValue
        }
    }
    
    var label: CFStringRef {
        get {
            return _label
        }
        set {
            _label = newValue
        }
    }
    
    var isInvisible: CFBooleanRef {
        get {
            return _isInvisible
        }
        set {
            _isInvisible = newValue
        }
    }
    
    var isNegative: CFBooleanRef {
        get {
            return _isNegative
        }
        set {
            _isNegative = newValue
        }
    }
    
    var account: CFStringRef {
        get {
            return _account
        }
        set {
            _account = newValue
        }
    }
    
    var service: CFStringRef {
        get {
            return _service
        }
        set {
            _service = newValue
        }
    }
    
    var generic: CFDataRef {
        get {
            return _generic
        }
        set {
            _generic = newValue
        }
    }
    
    public init(attributes: Dictionary<String, Any>) {
        accessibility   = .WhenUnlocked
        isInvisible     = kCFBooleanFalse
    }
    
    /*
    kSecAttrAccessible
    kSecAttrAccessGroup
    kSecAttrCreationDate
    kSecAttrModificationDate
    kSecAttrDescription
    kSecAttrComment
    kSecAttrCreator
    kSecAttrType
    kSecAttrLabel
    kSecAttrIsInvisible
    kSecAttrIsNegative
    kSecAttrAccount
    kSecAttrService
    kSecAttrGeneric
    */
}


public struct InternetKey: Key {
    
    var accessibility: Accessibility {
        get {
            return self.accessibility
        }
        set(newValue) {
            self.accessibility = newValue
        }
    }
    
    var accessGroup: CFStringRef {
        get {
            return self.accessGroup
        }
        set(newValue) {
            self.accessGroup = newValue
        }
    }
    
    public init(attributes: Dictionary<String, Any>) {
        accessibility   = .WhenUnlocked
        //isInvisible     = kCFBooleanFalse
    }
}

/*
struct Certificate: Key {
}

struct PrivateKey: Key {
}

struct Identity: Key {
}
*/