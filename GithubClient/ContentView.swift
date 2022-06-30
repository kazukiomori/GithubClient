//
//  ContentView.swift
//  alermApp
//
//  Created by Kazuki Omori on 2022/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        private let mockRepos = [
                Repo(name: "Test Repo1", owner: User(name: "Test User1")),
                Repo(name: "Test Repo2", owner: User(name: "Test User2")),
                Repo(name: "Test Repo3", owner: User(name: "Test User3")),
                Repo(name: "Test Repo4", owner: User(name: "Test User4")),
                Repo(name: "Test Repo5", owner: User(name: "Test User5"))
            ]
        List(mockRepos) { item in
            HStack{
                Image("GitHubMark")
                    .resizable()
                    .frame(width: 44.0, height: 44.0)
                VStack(alignment: .leading) {
                    Text("Owner Name")
                        .font(.caption)
                    Text("Repository Name")
                        .font(.body)
                        .fontWeight(.semibold)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
