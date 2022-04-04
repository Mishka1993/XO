//
//  LogCommand.swift
//  XO-game
//
//  Created by Михаил Киржнер on 04.04.2022.
//  Copyright © 2022 plasmon. All rights reserved.
//

import Foundation

final class LogCommand {
    let action: LogAction

    init(action: LogAction) {
        self.action = action
    }

    var logMessage: String {
        switch action {
        case let .playerInput(player, position):
            return "\(player) placed mark at \(position)"
        case let .gameFinished(winner):
            if let winner = winner {
                return "\(winner) win game"
            } else {
                return "game finished with no winner"
            }
        case .restartGame:
            return "game restarted"
        }
    }
}
