//
//  SecondPageView.swift
//  MyResume
//
//  Created by zwj on 2024/10/22.
//

import SwiftUI

struct SecondView: View {
    
    @State private var trigger = false
    @State private var image: UIImage?
    
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                HStack {
                    Text("Projects")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundStyle(LinearGradient.cusGradient)
                    
                    Spacer()
                }
                .frame(height: 44)
                .padding(.top, 30)
               
                Rectangle()
                    .frame(height: 1)
                    .padding(.bottom, 20)
                
                ProjectCell(index: 1,
                               name: "电子宠物PetPock、换脸相机、Standby 17、简易小组件",
                               skill: "SwiftUI、Widgetkit、SpriteKit、iWatch",
                               desc: """
                               主要负责各种App的日常开发工作，也做一些环境搭建和mac工具。
                               搭建内网git环境，做持续集成，私有pod库。开发mac小工具，验证与修改项目配置，加密解密资源、一键本地化等。
                               开发的App较多，主要包含以下方面：
                               1. 各类小组件App
                               2. AI绘画、AI聊天等套壳App
                               3. 健康类、专注类App
                               4. 其它小工具：如灵动岛，足球类、SpriteKit小游戏
                               """)
                
                ProjectCell(index: 2,
                               name: "扫描王全能宝、视频剪辑、录音大师、解压缩zip",
                               skill: "Objective-C、Masonry、GpuImage、OpenCV、AudioToolbox",
                               desc: """
                               主要开发的功能包括：
                               1. 图片滤镜处理，文字扫描识别，证件照，PDF处理等
                               2. 音频裁剪，音效处理，录音混音，格式转换
                               3. 文件解压缩、iCloud支持
                               4. APP内购，Mac端软件开发
                               5. 埋点分析，价格及功能AB测试
                               """)
                
                ProjectCell(index: 3,
                               name: "来艾、艾艾贴商场",
                               skill: "MVVM，RxSwift，RxCocoa，PromiseKit、Moya",
                               desc: """
                               来艾： 集即时通讯、商城交易、生活分享、社群互动、健康百科等功能于一体的在线社交软件
                               艾艾贴商场： 一款零成本开店的社交电商APP，健康领域垂直创业平台
                               
                               主要工作：
                               1. 设计项目Model层架构，网络接口转为Rx或者Promise。开发Moya插件：接口状态检测、接口日志、接口jwt校验、网络缓存，错误处理、自动重试
                               2. 数据持久化，结合业务对不同数据归解档，模型Codable自定义解析，对接不同数据库，Realm、WCDB、FMDB
                               3. 业务模型、第三方服务RX化改造。如友盟、上下拉刷新、阿里云OSS、键盘、自定义Scrollview
                               4. 自定义转场动画，关键帧动画
                               5. 自定义组件封装，广告页、图片浏览器、播放器
                               6. 性能检测工具，崩溃堆栈信息自定义捕获
                               """)
                
                ProjectCell(index: 4,
                               name: "MoveTime、TCL Connect",
                               skill: "Swift3、Objective-C、BLE（蓝牙）、Realm",
                               desc: """
                               主要开发的功能包括：
                               1. 设计并实现蓝牙通讯协议，定义字节数据含义
                               2. 数据CRC校验
                               3. 利用状态机管理设备链接通讯
                               4. ReSwift单向数据流，管理业务
                               """)
                
                Spacer()
            }
            .padding(.horizontal, 20)
            .font(.system(size: 15))
            .frame(width: Paper_Size.width, height: Paper_Size.height)
            .background {
                Color(uiColor: .systemBackground)
            }
            .overlay(alignment: .topLeading) {
                Color.blue.opacity(0.1)
                    .blur(radius: 200)
                    .frame(width: 500, height: 500)
                    .offset(x: 100, y: -100)
            }
            .overlay(alignment: .bottomTrailing) {
                Color.pink.opacity(0.15)
                    .blur(radius: 100)
                    .frame(width: 300, height: 300)
                    .offset(x: 0, y: 100)
            }
            .clipped()
            .snapshot(trigger: trigger) { img in
                image = img
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    trigger.toggle()
                } label: {
                    Text("截图")
                }
            }
        }
        .overlay {
            if let image {
                Color.black
                    .ignoresSafeArea()
                    .overlay {
                        Image(uiImage: image)
                            .contextMenu {
                                Button {
                                    UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
                                    print("图片保存到相册成功")
                                } label: {
                                    Text("保存到相册")
                                }
                            }
                    }
            }
        }
    }
}

#Preview {
    SecondView()
}


struct ProjectCell: View {
    
    var index: Int
    var name: String
    var skill: String
    var desc: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(name)
                .font(.system(size: 20, weight: .medium))
            
            HStack {
                Image(systemName: "macbook")
                    .font(.system(size: 24))
                Text("技术栈:  " + skill)
                    .font(.system(size: 18, weight: .medium))
            }
            
            Text(desc)
                .foregroundStyle(Color(uiColor: .secondaryLabel))
                .padding(.bottom, 30)
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
