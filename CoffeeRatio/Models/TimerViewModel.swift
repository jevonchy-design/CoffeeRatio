//
//  TimerViewModel.swift
//  CoffeeRatio
//
//  Created by JĒVONCHY on 12/16/22.
//

import Foundation
import Combine

class TimerViewModel {
    public var timer = Timer.publish(every: 1, on: .current, in: .common)
    private var cancellableTimer: Cancellable?

    public func start() {
        cancellableTimer = timer.connect()
    }

    public func stop() {
        guard let cTimer = cancellableTimer else {
            return
        }

        cTimer.cancel()
        timer = Timer.publish(every: 1, on: .current, in: .common)
    }
}
