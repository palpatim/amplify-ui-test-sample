//
//  ContentView.swift
//  amplify-ui-test-sample
//
//  Created by Schmelter, Tim on 9/9/20.
//  Copyright © 2020 Amazon Web Services. All rights reserved.
//

import Amplify
import SwiftUI

struct ContentView: View {
    @State var status: String = "(not started)"
    var body: some View {
        VStack {
            Text(status)
            Button("Fetch session") {
                self.fetchSessionAndUpdateStatus()
            }
            .accessibility(identifier: "fetchSessionButton")
        }
    }

    func fetchSessionAndUpdateStatus() {
        Amplify.Auth.fetchAuthSession() { result in
            switch result {
            case .failure(let authError):
                self.status = authError.errorDescription
            case .success(let session):
                self.status = session.isSignedIn ? "Signed in" : "Signed out"
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
