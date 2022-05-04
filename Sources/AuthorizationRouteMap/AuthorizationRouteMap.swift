import Module
import ModelInterfaces

public protocol AuthorizationRouteMap: AnyObject {
    func rootModule() -> AuthorizationModule
}

public protocol AuthorizationModuleInput: AnyObject {
    
}

public protocol AuthorizationModuleOutput: AnyObject {
    func userAuthorized(account: AccountModelProtocol)
}

public typealias AuthorizationModule = Module<AuthorizationModuleInput, AuthorizationModuleOutput>
