//
//  LogAction.swift
//  XO-game
//
//  Created by Михаил Киржнер on 04.04.2022.
//  Copyright © 2022 plasmon. All rights reserved.
//

import Foundation

public enum LogAction {
    case playerInput(player: Player, position: GameboardPosition)

    case gameFinished(winner: Player?)

    case restartGame
}

public func Log(_ action: LogAction) {
    let command = LogCommand(action: action)
    LoggerInvoker.shared.addLogCommand(command)
}
