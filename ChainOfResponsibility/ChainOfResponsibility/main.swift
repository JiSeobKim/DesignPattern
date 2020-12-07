//
//  main.swift
//  ChainOfResponsibility
//
//  Created by 김지섭 on 2020/12/07.
//

import Foundation



protocol NetworkingHandler {
    init(success: NetworkingHandler?, fail: NetworkingHandler?)
    func handle()
}

// 최초등록 -> 회사 등록 -> 유저 등록
func 카드등록프로세스() {
    // 유저 등록
    let userRegist = UserRegistModel(success: nil, fail: nil)
    // 회사 등록
    let companyRegist = CompanyRegistModel(success: userRegist, fail: nil)
    // 최초 등록
    let firstRegtst = FirstRegistModel(success: nil, fail: companyRegist)
    
    firstRegtst.handle()
}


// 유저 해제 -> 회사 해제
func 카드해제프로세스() {
    // 회사 해제
    let companyDelete = CompanyDeleteModel(success: nil, fail: nil)
    // 유저 해제
    let userDelete = UserDeleteModel(success: companyDelete, fail: companyDelete)
    userDelete.handle()
}


카드등록프로세스()
print("----")
카드해제프로세스()
