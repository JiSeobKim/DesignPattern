//
//  TableListProduct.swift
//  BlogFactoryPattern
//
//  Created by kimjiseob on 2020/11/19.
//

import UIKit

class TableListProduct: UIView, ListProduct {
    var view: UIView { return self }
    
    private var tableView: UITableView?
    private var items: [String] = []
    
    private var reusableID: String { return "cell" }
    
    
    /// 초기화
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.tableView = UITableView(frame: self.bounds, style: .plain)
        self.setTableView()
        self.addSubview(tableView!)
    }
    
    /// 초기화 - corder 미제공
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /// 테이블 뷰 셋팅
    private func setTableView() {
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
        self.tableView?.register(UITableViewCell.self, forCellReuseIdentifier: self.reusableID)
    }
    
    /// 리스트 초기화
    func removeAll() {
        self.items = []
        self.tableView?.reloadData()
    }
    
    
    /// 아이템 리스트 업데이트 하기
    func updateList(_ list: [String]) {
        self.items = list
        self.tableView?.reloadData()
    }
}


extension TableListProduct: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.reusableID, for: indexPath)
        
        var text: String?
        
        if 0..<items.count ~= indexPath.row {
            text = self.items[indexPath.row]
        }
        
        cell.textLabel?.text = text
        return cell
    }
}
