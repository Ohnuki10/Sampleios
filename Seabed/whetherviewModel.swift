//
//  whetherviewModel.swift
//  Seabed
//
//  Created by cmStudent on 2022/05/10.
//
//import SwiftUI
//import Foundation
//struct WeatherResponse: Decodable{
//
//    let list: [List]
//    struct List: Decodable {
//        let dt: Int
//        let main: Main
//        struct Main: Decodable {
//
//            let  temp: Double
//            let feels_like: Double
//            let temp_min: Double
//            let temp_max: Double
//            let pressure: Int
//            let sea_level: Int
//            let grnd_level: Int
//
//            let humidity: Int
//            let temp_kf: Double
//        }
//
//        let weather: [Weather]
//        struct Weather: Decodable {
//            let id: Int
//            let main: String //英語の天気
//            let description: String //日本語天気
//            let icon: String
//        }
//        let dt_txt: String //年月時間　2022-01-12 21:00
//    }//struct List: Decodable
//}//struct WeatherResponse

//class whetherviewModel: ObservableObject{
//
//    //二次元配列のための変数
//    @Published var dispDay = 0
//    @Published var dispTime = 1
//
//
//
//    //取得したデータを登録しておく情報
//    @Published var WeatherList = [(temp: "", humidity: 0, description: "",dt_txt: "", day: "", time: "")]
//
//
//
//    private init(){
//        getWatherdata(place: "ibaraki", cnt: 41)
//    }//init
//    static let ViewModel = whetherviewModel()
//
//    let appid = "33d33aedca6156a92d40c56e57c8d277"
//
//    func getWatherdata(place: String, cnt: Int) {
//
//        guard let req_url = URL(string: "https://api.openweathermap.org/data/2.5/forecast?q=\(place)&cnt=\(cnt)&appid=\(appid)&units=metric&lang=ja")
//        else {
//            return
//        }
//        print(req_url)
//
//
//        let req = URLRequest(url: req_url)
//        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
//        let task = session.dataTask(with: req, completionHandler: { [self]
//            (data, response , error) in
//
//            session.finishTasksAndInvalidate()
//
//            do{
//                let decoder = JSONDecoder()
//                //json格納
//                let json = try decoder.decode(WeatherResponse.self, from: data!)
//
//                print(json)
//
//
//                func getWether(){
//
//                    for num in 0...json.list.count-1{
//                        //let num = 0
//
//                        self.WeatherList.append((temp:String(json.list[num].main.temp), //Stringに
//                                                 humidity: json.list[num].main.humidity,
//                                                 description: json.list[num].weather[0].description,
//                                                 dt_txt: json.list[num].dt_txt,
//                                                 day: String(json.list[num].dt_txt.prefix(10)),
//                                                 time: String(json.list[num].dt_txt.suffix(8))))
//                    }
//                    print(self.WeatherList)
//
//                }//天気とる
//                //                self.WeatherList.remove(at: 0)
//
//
//
//            }catch {
//                print("エラーが出ました")
//            }
//        })
//        task.resume()
//
//    }
//
//
//}


