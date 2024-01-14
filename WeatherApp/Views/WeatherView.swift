import SwiftUI

struct WeatherView: View {
    
    var weather: ResponseBody
    
    var body: some View {
        ZStack(alignment: .leading) {
            VStack {
                VStack(alignment: .leading, spacing: 5) {
                    Image(systemName: "cloud")
                        .font(.system(size: 40))
                        .padding(.all)
                    }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    HStack {
                        VStack(spacing: 20) {
                           
                        }
                        .frame(width: 150, alignment: .leading)
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                        .padding(.all)
                        
                    }
                    
                    VStack {
                        Spacer()
                        VStack(alignment: .leading, spacing: 20) {
                            Text(weather.main.feelsLike.roundDouble() + "°")
                                .font(.title)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            Text(weather.name)
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.leading)
                                .padding(.all)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.0, brightness: 0.056)/*@END_MENU_TOKEN@*/)
                                .cornerRadius(20)
                            
                            Text("Today, \(Date().formatted(.dateTime.month().day().hour().minute()))")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.leading)
                                .padding(.all)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.0, brightness: 0.056)/*@END_MENU_TOKEN@*/)
                                .cornerRadius(20)
                            
                            Text("Weather now")
                                .font(.headline)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.leading)
                                .padding(.all)

                            
                            HStack {
                                WeatherRow(logo: "thermometer", name: "Min temp", value: (weather.main.tempMin.roundDouble() + ("°")))
                                Spacer()
                                WeatherRow(logo: "thermometer", name: "Max temp", value: (weather.main.tempMax.roundDouble() + "°"))
                            }
                            
                            HStack {
                                WeatherRow(logo: "wind", name: "Wind speed", value: (weather.wind.speed.roundDouble() + " m/s"))
                                Spacer()
                                WeatherRow(logo: "humidity", name: "Humidity", value: "\(weather.main.humidity.roundDouble())%")
                            }
                            
                            
                        }
                        .padding(.all)
                    }
                }
            }
        }
    }
}
