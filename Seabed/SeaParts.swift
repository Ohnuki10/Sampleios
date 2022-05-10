//
//  SeaParts.swift
//  Seabed
//
//  Created by cmStudent on 2022/05/09.
//
import SwiftUI



class SeaParts:ObservableObject{
   
   
   
    let sea: Sea
    var timer: Timer!
    @Published var timer2 :Timer?
    @Published var hour: Int
    @Published var minute: Int
    @Published var second: Int
    @Published var temp = 0
    
    
    
    
    init () {
        sea = Sea()
        (hour, minute,second) = sea.getTime()
        timer2 = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [self] _ in
            self.self.setTime()
            
        }
       
       
    }
    
    
    
    
    
    func setTime() {
        (hour, minute,second) = sea.getTime()
        
        
    }
    
    
    
    
    
    
    
   
    
}



