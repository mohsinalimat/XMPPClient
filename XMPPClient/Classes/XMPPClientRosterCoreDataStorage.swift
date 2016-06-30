//
//  XMPPClientRosterCoreDataStorage.swift
//  Pods
//
//  Created by Ali Gangji on 6/30/16.
//
//

import Foundation
import XMPPFramework

public class XMPPClientRosterCoreDataStorage: XMPPRosterCoreDataStorage {
    override public func commonInit() {
        super.commonInit()
        autoRemovePreviousDatabaseFile = false
    }
    override public func managedObjectModelName() -> String! {
        return "XMPPRoster"
    }
    override public func clearAllUsersAndResourcesForXMPPStream(stream: XMPPStream!) {
        //prevent destruction of roster, just clear the resources
        clearAllResourcesForXMPPStream(stream)
    }
}
