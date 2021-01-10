//
//  ScrollViewReaderView.swift
//  SwiftUICatalogs
//
//  Created by Sei Takayuki on 2021/01/10.
//

import SwiftUI

struct ScrollViewReaderView: View {
    @State var position = 0
    
    var body: some View {
        VStack {
            HStack {
                Button("一番上") { position = 0 }
                Button("一番下") { position = 1000 }
            }
            ScrollViewReader { proxy in
                List {
                    ForEach(0...1000, id: \.self) { index in
                        Text("Row \(index)")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                .onChange(of: position) { value in
                    withAnimation {
                        proxy.scrollTo(value, anchor: .center)
                    }
                }
            }
        }
    }
}

struct ScrollViewReaderView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReaderView()
    }
}
