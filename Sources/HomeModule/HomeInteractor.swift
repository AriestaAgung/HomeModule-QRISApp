//
//  HomeInteractor.swift
//  QRIS App
//
//  Created by Ariesta APP on 25/01/24.
//

import Foundation
import BalanceCore

protocol HomeUseCase {
    func fetchBalance(completion: @escaping (BalanceModel?) -> Void)
    func updateBalance(_ amount: Double, completion: @escaping (BalanceModel?) -> Void)
    func addBalance(_ amount: Double, completion: @escaping (BalanceModel?) -> Void)
}

public class HomeInteractor: HomeUseCase {
    public func addBalance(_ amount: Double, completion: @escaping (BalanceModel?) -> Void) {
        BalanceInteractor.shared.addBalance(amount) { bal in
            completion(bal)
        }
    }
    
    public static let shared = HomeInteractor()
    public func fetchBalance(completion: @escaping (BalanceModel?) -> Void) {
        BalanceInteractor.shared.getBalance { balance in
            completion(balance)
        }
    }
    
    public func updateBalance(_ amount: Double, completion: @escaping (BalanceModel?) -> Void) {
        BalanceInteractor.shared.updateBalance(amount) { bal in
            completion(bal)
        }
    }
    
    
}
