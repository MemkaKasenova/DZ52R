//
//  NetworkManager.swift
//  DZ52R
//
//  Created by merim kasenova on 23/5/23.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    
    let urlString = "https://dummyjson.com/products"
    
    func fetchProducts() async throws -> Products {
        let url = URL(string: urlString)
        let request = URLRequest(url: url!)
        
        let (data, _) = try await URLSession.shared.data(from: url!)
        return try await decodeData(data: data)
    }
    
    private func decodeData<T: Decodable>(data: Data) async throws -> T {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        }
}
