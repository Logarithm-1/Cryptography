// Cryptanalysis.swift
//
// This source file is part of the Swift Math open source project.
//
// Copyright (c) 2022 Logan Richards and the Swift Math project authors.
// Licensed under MIT
//
// See https://github.com/Logarithm-1/Cryptography/blob/main/LICENSE for license information

import Foundation

public protocol Cryptanalysis {
    /// Analyze the `cipherText`
    /// - Parameter cipherText: An (supposably) encypted message.
    /// - Returns The final analyze of the `cipherText`
    func analyze(_ cipherText: String) -> String
}


