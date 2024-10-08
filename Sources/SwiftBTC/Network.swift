//
//  SwiftBTC
//
//  Created by Otto Suess on 05.04.18.
//  Copyright © 2018 Zap. All rights reserved.
//

import Foundation

public enum Network: String, Codable, CaseIterable {
    case regtest
    case signet
    case testnet
    case mainnet
    case simnet
}
