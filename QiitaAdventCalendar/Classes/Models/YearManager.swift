//
//  YearManager.swift
//  QiitaAdventCalendar
//
//  Created by bs on 2015/12/27.
//  Copyright © 2015年 bs. All rights reserved.
//

import Foundation
import UIKit

class YearManager: NSObject {

  static let years = ["2015", "2014", "2013", "2012", "2011"]

  static func rootViewController(year: String) -> UIViewController {
    switch year {
    case "2015":
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      let vc = storyboard.instantiateViewControllerWithIdentifier("CategoryViewController") as! CategoryViewController
      return vc
    default:
      let category = CategoryEntity()
      category.title = year
      category.url = "advent-calendar/" + year
      category.year = .EarlyYear
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      let vc = storyboard.instantiateViewControllerWithIdentifier("CalendarViewController") as! CalendarViewController
      vc.category = category
      return vc
    }
  }
}