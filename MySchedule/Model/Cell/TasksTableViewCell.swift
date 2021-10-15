//
//  TasksTableViewCell.swift
//  MySchedule
//
//  Created by Anton on 14.10.2021.
//

import Foundation
import UIKit

class TasksTableViewCell: UITableViewCell {
    
    let taskName = UILabel(text: "UI UX", font: .boldSystemFont(ofSize: 20),alignment: .left)
    let taskDescription = UILabel(text: "Make buttons", font: .systemFont(ofSize: 14), alignment: .left)
    
    let readyButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "chevron.down.circle"), for: .normal)
        button.tintColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.selectionStyle = .none
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not beenn implemented")
    }
    
    func setConstraints() {
    }
    
}
