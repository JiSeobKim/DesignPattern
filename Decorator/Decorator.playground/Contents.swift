import UIKit

/// 프로토콜
protocol Display {
    func draw()
}


/// 기본이 되는 클래스
class ReloadDisPlay: Display {
    func draw() {
        print("기본 그리기")
    }
}

/// 데코레이터
class DisplayDcorator: Display {
    var decoDisplay: Display
    
    init(display: Display) {
        self.decoDisplay = display
    }
    
    func draw() {
        self.decoDisplay.draw()
    }
}


/// 데코 상속1
class TrafficDecorator: DisplayDcorator {
    override func draw() {
        super.draw()
        self.drawTraffic()
    }
    
    private func drawTraffic() {
        print("교통량")
    }
}

/// 데코 상속2
class OtherDecorator: DisplayDcorator {
    override func draw() {
        super.draw()
        self.something()
    }
    
    private func something() {
        print("무언가")
    }
}


// MARK: - 사용

print("\n-- 기본")
let defaultObject = ReloadDisPlay()
defaultObject.draw()

print("\n-- 기본 + 트래픽")
let traffic = TrafficDecorator(display: defaultObject)
traffic.draw()

print("\n-- 기본 + 트래픽 + Other")
let trafficAndOther = OtherDecorator(display: defaultObject)
trafficAndOther.draw()

