// MARK: - Mocks generated from file: ViperTestProj/Network/CustomUrlSession.swift at 2018-01-10 13:38:56 +0000

//
//  CustomUrlSession.swift
//  ViperTestProj
//
//  Created by Игорь on 09.01.2018.
//  Copyright © 2018 igor. All rights reserved
import Cuckoo
@testable import ViperTestProj

import Foundation

class MockCustomUrlSession: CustomUrlSession, Cuckoo.Mock {
    typealias MocksType = CustomUrlSession
    typealias Stubbing = __StubbingProxy_CustomUrlSession
    typealias Verification = __VerificationProxy_CustomUrlSession
    let cuckoo_manager = Cuckoo.MockManager()

    private var observed: CustomUrlSession?

    func spy(on victim: CustomUrlSession) -> Self {
        observed = victim
        return self
    }

    
    // ["name": "url", "accesibility": "", "@type": "InstanceVariable", "type": "URL?", "isReadOnly": false]
     override var url: URL? {
        get {
            return cuckoo_manager.getter("url", original: observed.map { o in return { () -> URL? in o.url }})
        }
        
        set {
            cuckoo_manager.setter("url", value: newValue, original: observed != nil ? { self.observed?.url = $0 } : nil)
        }
        
    }
    
    // ["name": "session", "accesibility": "", "@type": "InstanceVariable", "type": "URLSession?", "isReadOnly": false]
     override var session: URLSession? {
        get {
            return cuckoo_manager.getter("session", original: observed.map { o in return { () -> URLSession? in o.session }})
        }
        
        set {
            cuckoo_manager.setter("session", value: newValue, original: observed != nil ? { self.observed?.session = $0 } : nil)
        }
        
    }
    
    // ["name": "apiUrl", "accesibility": "", "@type": "InstanceVariable", "type": "String?", "isReadOnly": false]
     override var apiUrl: String? {
        get {
            return cuckoo_manager.getter("apiUrl", original: observed.map { o in return { () -> String? in o.apiUrl }})
        }
        
        set {
            cuckoo_manager.setter("apiUrl", value: newValue, original: observed != nil ? { self.observed?.apiUrl = $0 } : nil)
        }
        
    }
    

    

    
    // ["name": "getSourceUrl", "returnSignature": " -> URL", "fullyQualifiedName": "getSourceUrl(apiUrl: String) -> URL", "parameterSignature": "apiUrl: String", "parameterSignatureWithoutNames": "apiUrl: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "apiUrl", "call": "apiUrl: apiUrl", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("apiUrl"), name: "apiUrl", type: "String", range: CountableRange(278..<291), nameRange: CountableRange(278..<284))], "returnType": "URL", "isOptional": false, "stubFunction": "Cuckoo.StubFunction"]
     override func getSourceUrl(apiUrl: String)  -> URL {
        
            return cuckoo_manager.call("getSourceUrl(apiUrl: String) -> URL",
                parameters: (apiUrl),
                original: observed.map { o in
                    return { (args) -> URL in
                        let (apiUrl) = args
                        return o.getSourceUrl(apiUrl: apiUrl)
                    }
                })
        
    }
    
    // ["name": "callApi", "returnSignature": " -> String", "fullyQualifiedName": "callApi(url: URL) -> String", "parameterSignature": "url: URL", "parameterSignatureWithoutNames": "url: URL", "inputTypes": "URL", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "url", "call": "url: url", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("url"), name: "url", type: "URL", range: CountableRange(378..<385), nameRange: CountableRange(378..<381))], "returnType": "String", "isOptional": false, "stubFunction": "Cuckoo.StubFunction"]
     override func callApi(url: URL)  -> String {
        
            return cuckoo_manager.call("callApi(url: URL) -> String",
                parameters: (url),
                original: observed.map { o in
                    return { (args) -> String in
                        let (url) = args
                        return o.callApi(url: url)
                    }
                })
        
    }
    

    struct __StubbingProxy_CustomUrlSession: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        var url: Cuckoo.ToBeStubbedProperty<URL?> {
            return .init(manager: cuckoo_manager, name: "url")
        }
        
        var session: Cuckoo.ToBeStubbedProperty<URLSession?> {
            return .init(manager: cuckoo_manager, name: "session")
        }
        
        var apiUrl: Cuckoo.ToBeStubbedProperty<String?> {
            return .init(manager: cuckoo_manager, name: "apiUrl")
        }
        
        
        func getSourceUrl<M1: Cuckoo.Matchable>(apiUrl: M1) -> Cuckoo.StubFunction<(String), URL> where M1.MatchedType == String {
            let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: apiUrl) { $0 }]
            return .init(stub: cuckoo_manager.createStub("getSourceUrl(apiUrl: String) -> URL", parameterMatchers: matchers))
        }
        
        func callApi<M1: Cuckoo.Matchable>(url: M1) -> Cuckoo.StubFunction<(URL), String> where M1.MatchedType == URL {
            let matchers: [Cuckoo.ParameterMatcher<(URL)>] = [wrap(matchable: url) { $0 }]
            return .init(stub: cuckoo_manager.createStub("callApi(url: URL) -> String", parameterMatchers: matchers))
        }
        
    }


    struct __VerificationProxy_CustomUrlSession: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        
        var url: Cuckoo.VerifyProperty<URL?> {
            return .init(manager: cuckoo_manager, name: "url", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var session: Cuckoo.VerifyProperty<URLSession?> {
            return .init(manager: cuckoo_manager, name: "session", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var apiUrl: Cuckoo.VerifyProperty<String?> {
            return .init(manager: cuckoo_manager, name: "apiUrl", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        

        
        @discardableResult
        func getSourceUrl<M1: Cuckoo.Matchable>(apiUrl: M1) -> Cuckoo.__DoNotUse<URL> where M1.MatchedType == String {
            let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: apiUrl) { $0 }]
            return cuckoo_manager.verify("getSourceUrl(apiUrl: String) -> URL", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func callApi<M1: Cuckoo.Matchable>(url: M1) -> Cuckoo.__DoNotUse<String> where M1.MatchedType == URL {
            let matchers: [Cuckoo.ParameterMatcher<(URL)>] = [wrap(matchable: url) { $0 }]
            return cuckoo_manager.verify("callApi(url: URL) -> String", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
    }


}

 class CustomUrlSessionStub: CustomUrlSession {
    
     override var url: URL? {
        get {
            return DefaultValueRegistry.defaultValue(for: (URL?).self)
        }
        
        set { }
        
    }
    
     override var session: URLSession? {
        get {
            return DefaultValueRegistry.defaultValue(for: (URLSession?).self)
        }
        
        set { }
        
    }
    
     override var apiUrl: String? {
        get {
            return DefaultValueRegistry.defaultValue(for: (String?).self)
        }
        
        set { }
        
    }
    

    

    
     override func getSourceUrl(apiUrl: String)  -> URL {
        return DefaultValueRegistry.defaultValue(for: URL.self)
    }
    
     override func callApi(url: URL)  -> String {
        return DefaultValueRegistry.defaultValue(for: String.self)
    }
    
}



