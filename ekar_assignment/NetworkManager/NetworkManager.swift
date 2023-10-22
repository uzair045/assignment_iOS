//
//  NetworkManager.swift
//  ekar_assignment
//
//  Created by Uzair Mughal on 18/10/2023.
//

import Foundation
import Combine

final class NetworkManager {
    
    static let shared = NetworkManager()
    private init() {}
    
    var  cancellable = Set<AnyCancellable>()
    
    func makeCall<T: Codable>(url: URL) -> AnyPublisher<T,Error> {
        return Future { [self] promise in
            URLSession.shared.dataTaskPublisher(for: url)
                .receive(on: DispatchQueue.main)
                .map({$0.data})
                .decode(type: T.self, decoder: JSONDecoder())
                .mapError({$0})
                .sink { completion in
                    switch completion {
                    case .finished:
                        print("Task finished")
                    case let .failure(error):
                        promise(.failure(error))
                    }
                } receiveValue: { data in
                    promise(.success(data))
                }
                .store(in: &cancellable)
        }
        .eraseToAnyPublisher()
    }
}
