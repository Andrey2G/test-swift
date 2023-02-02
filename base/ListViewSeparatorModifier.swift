import SwiftUI
struct ListRowSeperatorModifier: ViewModifier {
    func body(content: Content) -> some View {
        if #available(iOS 15.0, *) {
            content.listRowSeparator(.hidden)
        } else {
            content.onAppear {
                UITableView.appearance().separatorStyle = .none
            }
            .onDisappear {
                UITableView.appearance().separatorStyle = .singleLine
            }
        }
    }
}


extension View {
    func hideListRowSeparator() -> some View  {
        return  self.modifier(ListRowSeperatorModifier())
    }
}
