//
//  EntryListView.swift
//  DreamJournal
//
//  Created by antikiller on 06.07.2022.
//

import SwiftUI

struct EntryListView: View {
    var entries = [Entry(title: "This is a test", body: "Details"),Entry(title: "This is a test", body: "Details"),Entry(title: "This is a test", body: "Details")]
    
    @State var viewModel = EntryListViewModel()
    var body: some View {
        NavigationView {
            
            List {
                Section("My entries"){
                    ForEach(viewModel.entries){entry in
                        NavigationLink {
                            DetailView(entry: entry)
                        } label: {
                        
                            VStack(alignment: .leading, spacing: 8){
                                Text(entry.title)
                                    .fontWeight(.bold)
                                    .font(.headline)
                                Text(entry.body)
                                    .font(.system(size: 14))
                            }.padding()
                        }
                        
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Dream Journal")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    NavigationLink {
                        DetailView()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            //            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct EntryListView_Previews: PreviewProvider {
    static var previews: some View {
        EntryListView()
    }
}
