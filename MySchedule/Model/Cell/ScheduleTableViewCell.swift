//
//  ScheduleTableViewCell.swift
//  MySchedule
//
//  Created by Anton on 12.10.2021.
//

import Foundation
import UIKit

class ScheduleTableViewCell: UITableViewCell {
    
    let lessonName = UILabel(text: "Soft development", font: .boldSystemFont(ofSize: 24), alignment: .left)
    let teacherName = UILabel(text: "John Ive", font: .systemFont(ofSize: 24), alignment: .right)
    let lessonTime = UILabel(text: "08:00", font: .boldSystemFont(ofSize: 18), alignment: .left)
    let typeLabel = UILabel(text: "Тип:", font: .systemFont(ofSize: 12), alignment: .right)
    let lessonType = UILabel(text: "Лекция", font: .boldSystemFont(ofSize: 12), alignment: .left)
    let buildingLabel = UILabel(text: "Корпус:", font: .systemFont(ofSize: 12), alignment: .right)
    let lessonBuilding = UILabel(text: "2", font: .boldSystemFont(ofSize: 12), alignment: .left)
    let audLabel = UILabel(text: "Аудитория:", font: .systemFont(ofSize: 12), alignment: .right)
    let lessonAud = UILabel(text: "245", font: .boldSystemFont(ofSize: 12), alignment: .left)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not beenn implemented")
    }
    
    func setConstraints() {
        
        let topStackView = UIStackView(arrangedSubviews: [lessonName,teacherName], axis: .horizontal, spacing: 16, distribution: .fillEqually)

        
        self.addSubview(topStackView)
        NSLayoutConstraint.activate([
            topStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
            topStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            topStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
            topStackView.heightAnchor.constraint(equalToConstant: 24)
        ])
        

        
        self.addSubview(lessonTime)
        NSLayoutConstraint.activate([
            lessonTime.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8),
            lessonTime.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            lessonTime.widthAnchor.constraint(equalToConstant: 100),
            lessonTime.heightAnchor.constraint(equalToConstant: 24)
        ])
        
        let bottomStackView = UIStackView(arrangedSubviews: [typeLabel, lessonType, buildingLabel, lessonBuilding, audLabel, lessonAud], axis: .horizontal, spacing: 4, distribution: .fillProportionally)
        
        self.addSubview(bottomStackView)
        NSLayoutConstraint.activate([
            bottomStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8),
            bottomStackView.leadingAnchor.constraint(equalTo: lessonTime.trailingAnchor, constant: 8),
            bottomStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
            bottomStackView.heightAnchor.constraint(equalToConstant: 24)
        ])
    }
    
}
