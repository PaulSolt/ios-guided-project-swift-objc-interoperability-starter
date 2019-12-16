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
			
			guard let data = data else {
				completion(nil, NSError()) // TODO: Fix with actual error
				return
			}
			
//			guard let data = data else {
//				return completion(nil, NSError()) // TODO: Fix with actual error data is nil
//			}
			
			do {
				guard let dictionary = try JSONSerialization.jsonObject(with: data, options: []) as? [String : Any] else {
					completion(nil, NSError()) // TODO: Fix with error that it's wrong type (not Dictionary)
					// OR: try and parse as an Array (maybe it's different JSON format depending on API Call)
					return
				}
				
				guard let personDictionaries = dictionary["results"] as? [[String : Any]] else {
					// TODO: JSON object is not what we expect, is it an error or is the server down?
					throw NSError() // TODO: throw an appropriate error
					// OR: parse the non-standard JSON and display it to the user/developer
					
					// Probably an error
					/*
					{
						"detail": "Not found"
					}
					*/
					
				}
				
//				var people = [Person]()
//				for dictionary in personDictionaries {
//					if let person = Person(dictionary: dictionary) {
//						people.append(person)
//					}
//				}
				
				let people = personDictionaries.compactMap { Person(dictionary: $0) }
				completion(people, nil)
				
				
			} catch {
				completion(nil, error)
			}
			
			
			// TODO: Call my completion handler
			
        }.resume()
    }
}
