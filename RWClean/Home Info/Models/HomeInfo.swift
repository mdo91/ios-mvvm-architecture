//
//  HomeInfo.swift
//  RWClean
//
//  Created by Mdo on 22/09/2020.
//  Copyright © 2020 Mdo. All rights reserved.
//

import Foundation

public class HomeInfo{
    
    //MARK: - instance Porperties
    
    public fileprivate(set) var bathroomCount:UInt
    public fileprivate(set) var bedroomCount:UInt
    public fileprivate(set) var kitchenSize: RoomSize
    public fileprivate(set) var otherRoomsCount: UInt
    public fileprivate(set) var squareFootage: UInt
    
    
    
    
    //MAKR: - Object lifecycle
    public init(bathroomCount:UInt,
                bedroomCount: UInt,
                kitchenSize:RoomSize,
                otherRoomsCount:UInt,
                squareFootage:UInt){
        
        self.bathroomCount = bathroomCount
        self.bedroomCount = bedroomCount
        self.kitchenSize = kitchenSize
        self.otherRoomsCount = otherRoomsCount
        self.squareFootage = squareFootage
        
    }
    
    public func copy() ->HomeInfo{
        
        return HomeInfo(bathroomCount: bathroomCount,
                        bedroomCount: bedroomCount,
                        kitchenSize: kitchenSize, otherRoomsCount: otherRoomsCount, squareFootage: squareFootage)
    }
    
    
    
}

//MARK: - MutableHomeInfo

public class MutableHomeInfo: HomeInfo{
    
    public convenience init(){
        
        self.init(bathroomCount: 2,
                  bedroomCount: 3,
                  kitchenSize: .medium,
                  otherRoomsCount: 1,
                  squareFootage: 2000)
    }
    
    public func setBathroomCount(_ count: UInt){
        
        bathroomCount = count
    }
    
    public func setBedroomCount(_ count: UInt){
        
        bedroomCount = count
    }
    
    public func setKitchenSize(_ roomSize: RoomSize){
        
        kitchenSize = roomSize
    }
    
    public func setOtherRoomsCount(_ count: UInt){
        
        otherRoomsCount = count
    }
    
    public func setSquareFootage(_ area:UInt){
        
        squareFootage = area
    }
    
}
