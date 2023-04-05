//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by viacheslav on 04.04.2023.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again"
    case unableToComplete = "Unable to complete your request. Please check your internet connection"
    case invalidResponse = "Invalid response from the server. Please try again"
    case invalidData = "The data recieved from the server is invalid. Please try again"
}
