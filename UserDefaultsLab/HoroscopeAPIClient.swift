//
//  HoroscopeAPI.swift
//  UserDefaultsLab
//
//  Created by Christian Hurtado on 1/13/20.
//  Copyright © 2020 Christian Hurtado. All rights reserved.
//

import Foundation
import NetworkHelper

struct HoroscopeAPIClient{
    
    static func getSigns(with urlString: String,
                        completion: @escaping (Result <Signs, AppError>) -> ()) {
        
     guard let url = URL(string: urlString) else {
             completion(.failure(.badURL(urlString)))
             return
           }
           let request = URLRequest(url: url)
           
           NetworkHelper.shared.performDataTask(with: request) {(result) in
            switch result {
                 case .failure(let appError):
                     completion(.failure(.networkClientError(appError)))
                 case .success(let data):
                     do {
                         let selSign = try JSONDecoder().decode(Signs.self, from: data)
                         completion(.success(selSign))
                     } catch {
                         // completion missing does it work without it ??
                     }
                 }
             }
           }
    
}
