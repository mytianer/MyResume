//
//  Snapshot.swift
//  Demo
//
//  Created by Zhuanz on 2024/11/21.
//

import UIKit
import SwiftUI

extension View {
    
    @ViewBuilder
    func snapshot(trigger: Bool, complete: @escaping (UIImage) -> Void) -> some View {
        self.modifier(SnapshotModifier(trigger: trigger, complete: complete))
    }
    
}

private struct SnapshotModifier: ViewModifier {
    var trigger: Bool
    var complete: (UIImage) -> Void
    
    @State private var view = UIView(frame: .zero)
    
    func body(content: Content) -> some View {
        content
            .background {
                ViewExtractor(view: view)
            }
            .compositingGroup()
            .onChange(of: trigger) { oldValue, newValue in
                generateImage()
            }
    }
    
    private func generateImage() {
        if let supreView = view.superview?.superview {
            let render = UIGraphicsImageRenderer(size: supreView.bounds.size)
            let image = render.image { _ in
                supreView.drawHierarchy(in: supreView.bounds, afterScreenUpdates: true)
            }
            complete(image)
        }
    }
}

private struct ViewExtractor: UIViewRepresentable {
    var view: UIView
    
    func makeUIView(context: Context) -> UIView {
        view.backgroundColor = .clear
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
    
}

