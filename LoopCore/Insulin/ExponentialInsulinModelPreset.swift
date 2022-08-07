//
//  ExponentialInsulinModelPreset.swift
//  Loop
//
//  Copyright © 2017 LoopKit Authors. All rights reserved.
//

import LoopKit


public enum ExponentialInsulinModelPreset: String {
    case humalogNovologAdult
    case humalogNovologChild
    case fiasp
    case fiaspJohn
    case Afrezza
    case Lyumjev
}


// MARK: - Model generation
extension ExponentialInsulinModelPreset {
    var actionDuration: TimeInterval {
        switch self {
        case .humalogNovologAdult:
            return .minutes(360)
        case .humalogNovologChild:
            return .minutes(360)
        case .fiasp:
            return .minutes(360)
        case .fiaspJohn:
            return .minutes(90)
        case .Afrezza:
            return .minutes(160)
        case .Lyumjev:
            return .minutes(300)
        }
    }

    var peakActivity: TimeInterval {
        switch self {
        case .humalogNovologAdult:
            return .minutes(75)
        case .humalogNovologChild:
            return .minutes(65)
        case .fiasp:
            return .minutes(55)
        case .fiaspJohn:
            return .minutes(55)
        case .Afrezza:
            // return .minutes(15)
            return .minutes(53)
        case .Lyumjev:
            return .minutes(62)
        }
    }
    
    var effectDelay: TimeInterval {
        switch self {
        case .humalogNovologAdult:
            return .minutes(10)
        case .humalogNovologChild:
            return .minutes(10)
        case .fiasp:
            return .minutes(10)
        case .fiaspJohn:
            return .minutes(20)
        case .Afrezza:
            // return .minutes(4)
            return .minutes(10)
        case .Lyumjev:
            return .minutes(5)
        }
    }

    var model: InsulinModel {
        return ExponentialInsulinModel(actionDuration: actionDuration, peakActivityTime: peakActivity, delay: effectDelay)
    }
}


extension ExponentialInsulinModelPreset: InsulinModel {
    public var effectDuration: TimeInterval {
        return model.effectDuration
    }
    
    public var delay: TimeInterval {
        return model.delay
    }

    public func percentEffectRemaining(at time: TimeInterval) -> Double {
        return model.percentEffectRemaining(at: time)
    }
}


extension ExponentialInsulinModelPreset: CustomDebugStringConvertible {
    public var debugDescription: String {
        return "\(self.rawValue)(\(String(reflecting: model))"
    }
}
