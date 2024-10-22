//
//  ContentView.swift
//  MyResume
//
//  Created by zwj on 2023/11/15.
//

import SwiftUI


let Paper_Size = CGSize(width: 210 * 4, height: 297 * 4)



struct ContentView: View {
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            
            VStack {
                HStack(spacing: 0) {
                    VStack(spacing: 10) {
                        Text("郑武举")
                            .font(.system(size: 50, weight: .medium))
                            .padding(.top, 50)
                        
                        Text("iOS工程师、独立开发者")
                            .foregroundStyle(Color(uiColor: .secondaryLabel))
                            .font(.system(size: 18))
                        
                        HStack(alignment: .firstTextBaseline) {
                            Text("Profile")
                                .font(.system(size: 30, weight: .medium))
                            
                            Rectangle()
                                .frame(height: 1)
                        }
                        .padding(.top, 50)
                        
                        
                        VStack(alignment: .leading, spacing: 10) {
                            HStack {
                                Image(systemName: "birthday.cake")
                                    .frame(width: 30)
                                
                                Text("34岁")
                            }
                            HStack {
                                Image(systemName: "figure.stand.dress.line.vertical.figure")
                                    .frame(width: 30)
                                
                                Text("男 已婚")
                            }
                            HStack {
                                Image(systemName: "iphone")
                                    .frame(width: 30)
                                
                                Text("17683880501")
                            }
                            HStack {
                                Image(systemName: "envelope")
                                    .frame(width: 30)
                                
                                Text("zwj_apple@aliyun.com")
                                    .tint(Color(uiColor: .label))
                            }
                            HStack {
                                Image(systemName: "mappin.and.ellipse")
                                    .frame(width: 30)
                                
                                Text("湖北 武汉")
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundStyle(Color(uiColor: .label))
                        .padding(.top, 10)
                        
                        HStack(alignment: .firstTextBaseline) {
                            Rectangle()
                                .frame(height: 1)
                            
                            Text("Skills")
                                .font(.system(size: 30, weight: .medium))
                        }
                        .padding(.top, 30)
                        
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Objective-C")
                                
                            GeometryReader { geo in
                                RoundedRectangle(cornerRadius: 3)
                                    .stroke(Color.blue, lineWidth: 1)
                                
                                LinearGradient(colors: [Color.blue.opacity(0.2), Color.blue], startPoint: .leading, endPoint: .trailing)
                                    .frame(width: geo.size.width * 0.9)
                            }
                            .frame(height: 15)
                            
                            Text("Swift")
                                
                            GeometryReader { geo in
                                RoundedRectangle(cornerRadius: 3)
                                    .stroke(Color.blue, lineWidth: 1)
                                
                                LinearGradient(colors: [Color.blue.opacity(0.2), Color.blue], startPoint: .leading, endPoint: .trailing)
                            }
                            .frame(height: 15)
                            
                            Text("Storyboard")
                                
                            GeometryReader { geo in
                                RoundedRectangle(cornerRadius: 3)
                                    .stroke(Color.blue, lineWidth: 1)
                                
                                LinearGradient(colors: [Color.blue.opacity(0.2), Color.blue], startPoint: .leading, endPoint: .trailing)
                            }
                            .frame(height: 15)
                            
                            Text("SwiftUI")
                                
                            GeometryReader { geo in
                                RoundedRectangle(cornerRadius: 3)
                                    .stroke(Color.blue, lineWidth: 1)
                                
                                LinearGradient(colors: [Color.blue.opacity(0.2), Color.blue], startPoint: .leading, endPoint: .trailing)
                                    .frame(width: geo.size.width * 0.9)
                            }
                            .frame(height: 15)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundStyle(Color(uiColor: .label))
                        .padding(.top, 10)
                        
                        HStack(alignment: .firstTextBaseline) {
                            Text("More")
                                .font(.system(size: 30, weight: .medium))
                            
                            Rectangle()
                                .frame(height: 1)
                        }
                        .padding(.top, 30)
                        
                        
                        VStack(alignment: .leading, spacing: 10) {
                            HStack {
                                Text("躺平")
                                    .padding(.horizontal, 15)
                                    .padding(.vertical, 5)
                                    .background {
                                        Color.blue
                                            .cornerRadius(15)
                                    }
                                    
                                Image("tangping")
                                    .resizable()
                            }
                            .frame(height: 100)
                            
                            HStack {
                                Text("AI 帮我写代码")
                                    .padding(.horizontal, 15)
                                    .padding(.vertical, 5)
                                    .background {
                                        Color.green.opacity(0.6)
                                            .cornerRadius(15)
                                    }
                                    .rotationEffect(.degrees(20), anchor: .bottomTrailing)
                                
                                Text("黑苹果")
                                    .padding(.horizontal, 15)
                                    .padding(.vertical, 5)
                                    .background {
                                        Color.black.opacity(0.6)
                                            .cornerRadius(15)
                                    }
                                    .rotationEffect(.degrees(-30), anchor: .bottomTrailing)
                                    .offset(x: -20, y: -10)
                            }
                            
                            HStack {
                                Text("Dota2")
                                    .padding(.horizontal, 15)
                                    .padding(.vertical, 5)
                                    .background {
                                        Color.pink.opacity(0.6)
                                            .cornerRadius(15)
                                    }
                                    .rotationEffect(.degrees(-10), anchor: .bottomTrailing)
                                    .offset(x: 20, y: -10)
                                
                                Text("逛街聚餐")
                                    .padding(.horizontal, 15)
                                    .padding(.vertical, 5)
                                    .background {
                                        Color.red.opacity(0.6)
                                            .cornerRadius(15)
                                    }
                                    .rotationEffect(.degrees(30), anchor: .bottomTrailing)
                                    .offset(x: -20, y: 50)
                            }
                            
                            Text("数码产品")
                                .padding(.horizontal, 15)
                                .padding(.vertical, 5)
                                .background {
                                    Color.teal.opacity(0.6)
                                        .cornerRadius(15)
                                }
                                .rotationEffect(.degrees(-40), anchor: .bottomTrailing)
                            
                            Text("有趣的App")
                                .padding(.horizontal, 15)
                                .padding(.vertical, 5)
                                .background {
                                    Color.purple.opacity(0.6)
                                        .cornerRadius(15)
                                }
                                .rotationEffect(.degrees(-15), anchor: .bottomTrailing)
                                .offset(x: 80, y: 10)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundStyle(Color.white)
                        
                        Spacer()
                    }
                    .padding(.horizontal, 20)
                    .frame(width: 280)
                    .frame(maxHeight: .infinity)
                    .background {
                        Color(uiColor: .systemGray5)
                    }
                    
                    VStack {
                        Circle()
                            .frame(width: 60, height: 60)
                            .overlay {
                                Image(systemName: "sunglasses")
                                    .foregroundStyle(Color(uiColor: .systemBackground))
                                    .font(.system(size: 24))
                            }
                            .padding(.top, 30)
                        
                        HStack {
                            Rectangle()
                                .frame(height: 1)
                            
                            Text("Create by SwiftUI")
                                .lineLimit(1)
                                .font(.system(size: 30, weight: .medium))
                                .padding(.horizontal)
                                .layoutPriority(2)
                            
                            Rectangle()
                                .frame(height: 1)
                        }
                        
                        Text("Sometimes needs something different")
                            .font(.system(size: 15))
                            .foregroundStyle(Color(uiColor: .secondaryLabel))
                        
                        Text("""
                        ● 熟练 OC、Swift、SwiftUI，并都使用多年，有多个完整项目经验
                        ● 主要开发的APP类型包括：社交社区IM、电商、蓝牙手环、图像识别（OCR）及滤镜处理（OpenCV、GPUImage、CoreImange）、音频剪辑处理、文件解压缩等
                        ● 熟悉iOS组件化开发、各种开发模式MVC、MVVM、RxSwift、MVP等
                        ● 熟练掌握各种多线程、网络通信、数据存储等技术
                        ● 具备较强的分析问题与解决问题能力，具备较强的适应能力和自学能力，对待工作认真负责，有团队协作精神。
                        """)
                        .font(.system(size: 15))
//                        .foregroundStyle(Color(uiColor: .secondaryLabel))
                        .padding(.vertical)
                        
                        Divider()
                        
                        Text("Experience")
                            .font(.system(size: 30, weight: .medium))
                            .padding(.bottom)
                        
                        ExperienceCell(index: 1,
                                       time: "2022—至今",
                                       name: "深圳魔力鹅科技有限公司（武汉）",
                                       product: "工具类APP、AI、ChatGpt、小组件",
                                       desc: "简介：一家小型工作室，专注于iOS的App开发，营收也是依赖内购与广告。主要是工具类的产品，但也做市场热点类的App。\n职责：负责公司 iOS、Watch、 Mac 平台下的软件开发工作 ，上线的产品比较多和杂，公司具有很多开发账号和马甲包")
                        
                        ExperienceCell(index: 2,
                                       time: "2021.02—2022.06",
                                       name: "武汉网幂科技有限公司",
                                       product: "扫描王全能宝、视频剪辑、录音大师、解压缩zip",
                                       desc: "简介：一家致力移动互联网软件开发的高新技术企业，产品在Android、iOS、macOS、Windows等多平台上都有不错的表现。")
                        
                        ExperienceCell(index: 3,
                                       time: "2017.10—2020.05",
                                       name: "深圳来艾健康科技有限公司",
                                       product: "大型电商、社交IM、健康新零售",
                                       desc: "简介：负责公司多款APP开发管理，iOS组成员协调，进度管理等日常。通常iOS组配置有5-6人，大概2-3人负责一个项目的开发工作")
                        
                        ExperienceCell(index: 4,
                                       time: "2016.11—2017.09",
                                       name: "TCL通讯（深圳）",
                                       product: "智能手表、智能手环",
                                       desc: "简介：TCL集团有限公司和素有“中国电话大王”之称的TCL通讯设备股份有限公司投资成立。面向欧美市场的电信运营商。开发有儿童手表MT30、面向商务人士的MoveTime、TCL Connect")
                        
                        ExperienceCell(index: 5,
                                       time: "2014.04—2016.10",
                                       name: "武汉兰芯数据定向传媒",
                                       product: "汽车后市场",
                                       desc: "简介：车主通App，武汉市交管局官方数据授权，IM及社交圈，违章查询，扣分缴款，签到积分，红包，汽车周边商城")
                        
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .font(.system(size: 15))
                    .padding(.horizontal, 30)
                }
            }
            .frame(width: Paper_Size.width, height: Paper_Size.height)
            .background {
                Color(uiColor: .systemBackground)
            }
        }
    }
}

#Preview {
    ContentView()
}


struct ExperienceCell: View {
    
    var index: Int
    var time: String
    var name: String
    var product: String
    var desc: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("\(time)    ")
                .font(.system(size: 20, weight: .medium))
            + Text(name)
                .font(.system(size: 18, weight: .medium))
            Divider()
            
            HStack {
                Image(systemName: "dollarsign.circle")
                    .font(.system(size: 24))
                Text(product)
                    .font(.system(size: 18, weight: .medium))
            }
            
            Text(desc)
                .foregroundStyle(Color(uiColor: .secondaryLabel))
                .padding(.bottom)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.leading, 50)
        .overlay(alignment: .leading) {
            VStack {
                Circle()
                    .frame(width: 24, height: 24)
                    .overlay {
                        Text("\(index)")
                            .foregroundStyle(Color(uiColor: .systemBackground))
                    }
                Rectangle()
                    .frame(width: 1)
            }
            .frame(width: 30)
        }
    }
}
