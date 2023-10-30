//
//  ListView.swift
//  ToDoList
//
//  Created by Denis DRAGAN on 29.10.2023.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        List {
            // Iterate through the items in the listViewModel and display each item using ListRowView.
            ForEach(listViewModel.items) { item in
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear(duration: 0.15)) {
                            listViewModel.updateItem(item: item)
                        }
                    }
            }
            // Enable item deletion by swiping and performing the deleteItem function from listViewModel.
            .onDelete(perform: listViewModel.deleteItem)
            // Enable item reordering by long-pressing and moving the item with the moveItem function from listViewModel.
            .onMove(perform: listViewModel.moveItem)
        }
        .listStyle(.plain)
        .navigationTitle("ToDo List 📝")
        .toolbar {
            // Add an Edit button to the top bar for enabling item deletion and reordering.
            ToolbarItem(placement: .topBarLeading) {
                EditButton()
                    .foregroundStyle(.red)
            }
            // Add a NavigationLink to the top bar's trailing side for navigating to the AddView.
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink("Add") {
                    AddView()
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
    // We wrote it to avoid crashing on preview, because we created .environmentObject on @main and it crashes on preview.
    .environmentObject(ListViewModel())
}
