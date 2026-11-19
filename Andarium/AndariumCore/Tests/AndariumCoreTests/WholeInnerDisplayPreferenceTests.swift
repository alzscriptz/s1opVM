// SPDX-License-Identifier: GPL-2.0-or-later

import Foundation
import Testing
@testable import AndariumCore

struct WholeInnerDisplayPreferenceTests {
    private func defaults() -> UserDefaults {
        let name = "WholeInnerDisplayPreferenceTests.\(UUID().uuidString)"
        let defaults = UserDefaults(suiteName: name)!
        defaults.removePersistentDomain(forName: name)
        return defaults
    }

    @Test func aFreshInstallUsesTheWholeInnerScreen() {
        #expect(WholeInnerDisplayPreference(defaults: defaults()).isOn)
    }

    @Test func whatThePersonSetsIsKept() {
        let store = defaults()
        WholeInnerDisplayPreference(defaults: store).keep(false)
        #expect(!WholeInnerDisplayPreference(defaults: store).isOn)
        WholeInnerDisplayPreference(defaults: store).keep(true)
        #expect(WholeInnerDisplayPreference(defaults: store).isOn)
    }
}
