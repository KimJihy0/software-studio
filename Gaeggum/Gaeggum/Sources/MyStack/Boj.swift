//
//  Boj.swift
//  Gaeggum
//
//  Created by Jihyo on 2022/05/12.
//

import Foundation
import UIKit

func bojStatHtml(_ scale: CGFloat, _ handle: String) -> String {
    return """
            <html>
                <head>
                    <meta name="viewport" content="width=device-width, initial-scale=\(scale), maximum-scale=\(scale), minimum-scale=\(scale), user-scalable=0">
                </head>
                <body>
                    <img src="https://github-readme-solvedac.hyp3rflow.vercel.app/api/?handle=\(handle)">
                </body>
            </html>
            """
}

func isValid(handle: String) -> Bool {
    guard let url = URL(string: "https://solved.ac/api/v3/user/show?handle=\(handle)") else {
        return false
    }
    let html = try? String(contentsOf: url, encoding: .utf8)
    return html != nil
}

func isValid(gitUsername: String) -> Bool {
    guard let url = URL(string: "https://api.github.com/users/\(gitUsername)") else {
        return false
    }
    let html = try? String(contentsOf: url, encoding: .utf8)
    return html != nil
}



