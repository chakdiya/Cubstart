//
//  Card.swift
//  Quizlet-ish (iOS)
//
//  Created by Diya Chakraborti on 4/14/22.
//

import Foundation
import FirebaseFirestoreSwift

struct Card: Identifiable, Codable {
  @DocumentID var id: String?
  var question: String
  var answer: String
  var successful: Bool = true
  var userId: String?
}
