
// MARK: 추상
protocol PayInfomation {
    // 정보 불러오기
    func readInfo()
    // 구매처 불러오기
    func getVendorList()
    // 구매 항목 불러오기
    func getPurchasedList()
}

extension PayInfomation {
    // 정보 불러오기 구현
    func readInfo() {
        getVendorList()
        getPurchasedList()
    }
}


// MARK: 구현
// 일반 가맹점 결제 정보
class NormalStorePayInfo: PayInfomation {
    func getVendorList() {
        print("일반 가맹점 리스트 불러오기")
    }
    
    func getPurchasedList() {
        print("일반 식권 생성 리스트 불러오기")
    }
}

// 식콘 결제 정보
class SikconPaynInfo: PayInfomation {
    func getVendorList() {
        print("식콘 브랜드 리스트 불러오기")
    }
    
    func getPurchasedList() {
        print("식콘 구매 리스트 불러오기")
    }
}
