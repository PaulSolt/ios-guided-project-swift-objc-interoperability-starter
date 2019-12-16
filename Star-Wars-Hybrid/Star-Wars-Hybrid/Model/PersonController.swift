//
//  File.swift
//  Star-Wars-Hybrid
//
//  Created by Paul Solt on 12/16/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import Foundation

// What do I need to do to make this Swift code work in Objective-C?

@objc class PersonController: NSObject {
	
	// DESIGN: completion handler vs. property for sharing the results
	// for this, let's use a completion handler
	
	private let baseURL = URL(string: "https://swapi.co/api/people")!

	@objc func searchForPeople(with searchTerm: String, completion: @escaping ([Person]?, Error?) -> Void) {


        var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)!
        let searchItem = URLQueryItem(name: "search", value: searchTerm)
        components.queryItems = [searchItem]
        let url = components.url!

        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error {
                completion(nil, error)
                return
            }
			
			// Do you know how to parse the JSON data?
			
			
			// TODO: parse the data
			print("data: \(data)")
			
			
			
			// TODO: Call my completion handler
			
        }.resume()
    }
}
