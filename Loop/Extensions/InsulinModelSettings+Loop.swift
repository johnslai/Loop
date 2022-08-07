//
//  InsulinModelSettings+Loop.swift
//  Loop
//
//  Copyright © 2019 LoopKit Authors. All rights reserved.
//

import LoopCore
import LoopKit


extension InsulinModelSettings {
    var title: String {
        switch self {
        case .exponentialPreset(let model):
            return model.title
        case .walsh(let model):
            return model.title
        }
    }
}


extension ExponentialInsulinModelPreset {
    var title: String {
        switch self {
        case .humalogNovologAdult:
            return NSLocalizedString("Rapid-Acting – Adults", comment: "Title of insulin model preset")
        case .humalogNovologChild:
            return NSLocalizedString("Rapid-Acting – Children", comment: "Title of insulin model preset")
        case .fiasp:
            return NSLocalizedString("Fiasp", comment: "Title of insulin model preset")
        case .fiaspJohn:
            return NSLocalizedString("Fiasp - John", comment: "Title of insulin model preset")
        case .Afrezza:
            return NSLocalizedString("Afrezza", comment: "Title of insulin model preset")
        case .Lyumjev:
            return NSLocalizedString("lyumjev", comment: "Title of insulin model preset")
        }
    }

    var subtitle: String? {
        switch self {
        case .humalogNovologAdult:
            return NSLocalizedString("A model based on the published absorption of Humalog, Novolog, and Apidra insulin in adults.", comment: "Subtitle of Rapid-Acting – Adult preset")
        case .humalogNovologChild:
            return NSLocalizedString("An adjustment to the adult model based on empirical effects in children.", comment: "Subtitle of Rapid-Acting – Children preset")
        case .fiasp:
            return NSLocalizedString("A model based on the published absorption of Fiasp insulin(10-55-360).", comment: "Subtitle of Fiasp preset")
        case .fiaspJohn:
            return NSLocalizedString("A personalized model of Fiasp insulin(20-55-90).", comment: "Subtitle of FiaspJohn preset")
        case .Afrezza:
            return NSLocalizedString("A model of Afrezza(10-53-160).", comment: "Subtitle of Afrezza preset, see https://www.accessdata.fda.gov/drugsatfda_docs/label/2014/022472lbl.pdf")
        case .Lyumjev:
            return NSLocalizedString("A model of Lyumjev(5-62-300).", comment: "Subtitle of Lyumjev preset")
        }
    }
}


extension WalshInsulinModel {
    var title: String {
        return NSLocalizedString("Walsh", comment: "Title of insulin model setting")
    }

    var subtitle: String {
        return NSLocalizedString("The legacy model used by Loop, allowing customization of action duration.", comment: "Subtitle description of Walsh insulin model setting")
    }
}
