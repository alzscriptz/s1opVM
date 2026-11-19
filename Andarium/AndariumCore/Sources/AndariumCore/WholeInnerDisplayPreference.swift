// SPDX-License-Identifier: GPL-2.0-or-later

import Foundation

/// Settings' "Use the whole inner screen" on a folding iPhone (`SessionPlan`),
/// kept for the install across launches. A fresh install is on.
///
/// It is a stored value of its own, so it never rewrites the stored display
/// options (`DisplayOptions`).
public struct WholeInnerDisplayPreference {
    /// The stored value's key in the defaults database.
    public static let key = "andarium.wholeInnerDisplay"

    private let defaults: UserDefaults

    public init(defaults: UserDefaults = .standard) {
        self.defaults = defaults
    }

    /// The last value kept; on until one is.
    public var isOn: Bool { defaults.object(forKey: Self.key) as? Bool ?? true }

    public func keep(_ on: Bool) {
        defaults.set(on, forKey: Self.key)
    }
}
