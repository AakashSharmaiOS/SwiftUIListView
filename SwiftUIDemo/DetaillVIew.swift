
import SwiftUI

struct DetaillVIew: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 10) {
               Image("Shubham")
                Text("Shubham")
            }
            .navigationBarTitle("Details")
        }
    }
}

struct DetaillVIew_Previews: PreviewProvider {
    static var previews: some View {
        DetaillVIew()
    }
}
