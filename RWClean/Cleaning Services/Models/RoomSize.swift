//
//  RoomSize.swift
//  RWClean
//
//  Created by Mdo on 22/09/2020.
//  Copyright © 2020 Mdo. All rights reserved.
//

import Foundation

public enum RoomSize:String{
    
    
    case small
    case medium
    case larg
    
    public var displayTitle: String{
        
        switch self {
        case .small: return NSLocalizedString("Small", comment: "")
        case .medium: return NSLocalizedString("Medim", comment: "")
        case .larg: return NSLocalizedString("Large", comment: "")
    
        }
    }
    
    public var index: Int{
        
        switch  self {
        case .small: return 0
            
        case .medium: return 1
        
        case .larg: return 2
        }
    }
    
    public init(index:Int){
        
        precondition(index >= RoomSize.small.index)
        precondition(index <= RoomSize.larg.index)
        
        switch index {
        case RoomSize.small.index: self = .small
        case RoomSize.medium.index: self = .medium
        case RoomSize.larg.index: self = .larg
        default: fatalError("Unsupported RomeSize index")
        }
    }
    
}
