import Foundation



/// 최초 등록
final class FirstRegistModel: NetworkingHandler {
    var afterSuccess: NetworkingHandler?
    var afterFail: NetworkingHandler?
    
    init(success: NetworkingHandler?, fail: NetworkingHandler?) {
        self.afterSuccess = success
        self.afterFail = fail
    }
    
    func handle() {
        // Response
        let success = false
        
        switch success {
        case true:
            print("최초 등록 성공")
        case false:
            print("최초 등록 실패")
            self.afterFail?.handle()
        }
    }
}

/// 회사 등록
final class CompanyRegistModel: NetworkingHandler {
    var afterSuccess: NetworkingHandler?
    var afterFail: NetworkingHandler?
    
    init(success: NetworkingHandler?, fail: NetworkingHandler?) {
        self.afterSuccess = success
        self.afterFail = fail
    }
    
    func handle() {
        // Response
        let success = true
        
        switch success {
        case true:
            print("회사 등록 성공")
            self.afterSuccess?.handle()
        case false:
            print("회사 등록 실패")
            self.afterFail?.handle()
        }
    }
}

/// 유저 등록
final class UserRegistModel: NetworkingHandler {
    var afterSuccess: NetworkingHandler?
    var afterFail: NetworkingHandler?
    
    init(success: NetworkingHandler?, fail: NetworkingHandler?) {
        self.afterSuccess = success
        self.afterFail = fail
    }
    
    func handle() {
        // Response
        let success = true
        
        switch success {
        case true:
            print("유저 등록 성공")
            self.afterSuccess?.handle()
        case false:
            print("유저 등록 실패")
            self.afterFail?.handle()
        }
    }
}


/// 유저 삭제
final class UserDeleteModel: NetworkingHandler {
    var afterSuccess: NetworkingHandler?
    var afterFail: NetworkingHandler?
    
    init(success: NetworkingHandler?, fail: NetworkingHandler?) {
        self.afterSuccess = success
        self.afterFail = fail
    }
    
    func handle() {
        // Response
        let success = true
        
        switch success {
        case true:
            print("유저 삭제 성공")
            self.afterSuccess?.handle()
        case false:
            print("유저 삭제 실패")
            self.afterFail?.handle()
        }
    }
}

/// 회사 삭제
final class CompanyDeleteModel: NetworkingHandler {
    var afterSuccess: NetworkingHandler?
    var afterFail: NetworkingHandler?
    
    init(success: NetworkingHandler?, fail: NetworkingHandler?) {
        self.afterSuccess = success
        self.afterFail = fail
    }
    
    func handle() {
        // Response
        let success = true
        
        switch success {
        case true:
            print("회사 삭제 성공")
            self.afterSuccess?.handle()
        case false:
            print("회사 삭제 실패")
            self.afterFail?.handle()
        }
    }
}
