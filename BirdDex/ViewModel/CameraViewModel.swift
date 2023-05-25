//
//  CameraViewModel.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 24/05/23.
//

import Foundation
import SwiftUI

class CameraViewModel: ObservableObject {
    @Published var image: UIImage?
    @Published var showPicker = false

}
