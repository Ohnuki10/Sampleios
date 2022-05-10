//
//  Data.swift
//  Seabed
//
//  Created by cmStudent on 2022/05/08.
/*
 https://api.msil.go.jp/maritime/seabed-obstruction/v1/query[?where][&bbox][&distance][&units][&time][&returnGeometry][&type]
 
 */

import Foundation




class Sea{
    
    
    
    let date: Date!
    
    let cal: Calendar!
    
    let comp: DateComponents!
    init() {
        date = Date() // May 4, 2020, 11:36 AM
        cal = Calendar.current
        comp = cal.dateComponents(
            [Calendar.Component.year, Calendar.Component.month, Calendar.Component.day,
             Calendar.Component.hour, Calendar.Component.minute, Calendar.Component.second],
            from: date)
        
        
        
        let formatter = DateFormatter()
        formatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "HHmm", options: 0, locale: Locale(identifier: "ja_JP"))
        //        let hoge = formatter.string(from: date) // 2020年5月4日
        //        print(hoge)
        
        
        
        
    }
    
    func getTime() -> (hour: Int, minute: Int,second:Int) {
        let time = Calendar.current.dateComponents([.hour, .minute,.second], from:  Date())
        
//        print(time.hour!)
//        print(time.minute!)
//        print(time.second!)
        
        let ho = time.hour!
//        print(ho)
        
        let ti = time.minute!
//        print(ti)
        
        let se = time.second!
//        print(se)
        
        return (ho, ti,se)
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}








