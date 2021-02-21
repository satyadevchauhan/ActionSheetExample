//
//  ContentView.swift
//  ActionSheetExample
//
//  Created by Satyadev Chauhan on 21/02/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isActionSheetShow = false
    
    var body: some View {
        Button("Show Action Sheet") {
            isActionSheetShow = true
        }.actionSheet(isPresented: $isActionSheetShow) { () -> ActionSheet in
            showActionSheet()
        }
    }
    
    private func showActionSheet() -> ActionSheet {
        return ActionSheet(title: Text("ActionSheet Title"),
                           message: Text("ActionSheet Message"),
                           buttons: [
                            .default(Text("Default"), action: {
                                print("Default tapped")
                            }),
                            .destructive(Text("Destructive"), action: {
                                print("Destructive tapped")
                            }),
                            .cancel(Text("Cancel"), action: {
                                print("Cancel tapped")
                            })
                           ])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
