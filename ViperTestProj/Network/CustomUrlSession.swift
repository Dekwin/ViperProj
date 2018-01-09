//
//  CustomUrlSession.swift
//  ViperTestProj
//
//  Created by Игорь on 09.01.2018.
//  Copyright © 2018 igor. All rights reserved.
//

import Foundation
class CustomUrlSession
{
    var url:URL?
    var session:URLSession?
    var apiUrl:String?
    func getSourceUrl(apiUrl:String) -> URL
    {
        url = URL(string:apiUrl)
        return url! }
    func callApi(url:URL) -> String
    {
        session = URLSession()
        var outputdata:String = ""
        let task = session?.dataTask(with: url as URL) { (data, _, _) ->
            Void in
            if let data = data
            {
                outputdata = String(data: data, encoding: String.Encoding.utf8)!
                print(outputdata)
            } }
        task?.resume()
        return outputdata
    } }
