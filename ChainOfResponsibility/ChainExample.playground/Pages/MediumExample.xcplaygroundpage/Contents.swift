
enum Severity {
    case easy
    case medium
    case hard
}

protocol IssueHandling {
    init(next: IssueHandling?)
    func handle(level: Severity)
}


final class ExpertHandler: IssueHandling {
    var next: IssueHandling?
    
    init(next: IssueHandling?) {
        self.next = next
    }
    
    func handle(level: Severity) {
        if case level = Severity.hard {
            print("Request handled by expert")
        } else {
            print("Request can't be handled by expert")
            next?.handle(level: level)
        }
    }
}

final class SeniorHandler: IssueHandling {
    var next: IssueHandling?
    
    init(next: IssueHandling?) {
        self.next = next
    }
    
    func handle(level: Severity) {
        if case level = Severity.medium {
            print("Request handled by senior")
        } else {
            print("Request can't be handled by senior")
            next?.handle(level: level)
        }
    }
}

final class JuniorHandler: IssueHandling {
    var next: IssueHandling?
    
    init(next: IssueHandling?) {
        self.next = next
    }
    
    func handle(level: Severity) {
        if case level = Severity.easy {
            print("Request handled by junior")
        } else {
            print("Request can't be handled by junior")
            next?.handle(level: level)
        }
    }
}


let expertHandler = ExpertHandler(next: nil)
let seniorHandler = SeniorHandler(next: expertHandler)
let juniorHandler = JuniorHandler(next: seniorHandler)

juniorHandler.handle(level: .hard)
