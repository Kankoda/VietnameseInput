//
//  ContentView.swift
//  Demo
//
//  Created by Daniel Saidi on 2025-06-08.
//

import StandardButtons
import SwiftUI
import VietnameseInput

struct ContentView: View {

    @State var inputMethod = Vietnamese.InputMethod.telex
    @State var inputText = ""
    @State var text = ""

    let inputEngine = try? VietnameseInputEngine()

    var body: some View {
        NavigationStack {
            VStack {
                Image(.icon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)

                Image.vietnameseInputLogo

                TextEditor(text: $text)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(.quaternary, lineWidth: 1)
                    )

                Picker("Input Method", selection: $inputMethod) {
                    Text("TELEX").tag(Vietnamese.InputMethod.telex)
                    Text("VIQR").tag(Vietnamese.InputMethod.viqr)
                    Text("VNI").tag(Vietnamese.InputMethod.vni)
                }
                .pickerStyle(.segmented)

                HStack {
                    TextField("Type In Vietnamese Here...", text: $inputText)
                        .autocorrectionDisabled()
                        .textFieldStyle(.roundedBorder)
                        .submitLabel(.done)
                        .onSubmit(performTextInput)

                    Button(.apply, action: performTextInput)
                        .labelStyle(.titleOnly)
                        .buttonStyle(.borderedProminent)
                }
            }
            .padding()
            .navigationTitle("Vietnamese Input Demo")
            #if os(iOS)
            .navigationBarTitleDisplayMode(.inline)
            #endif
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Menu {
                        Button(.reset, action: reset)
                        if let url = URL(string: "https://vntyping.com") {
                            Link(destination: url) {
                                "Learn About VN Typing...".label("lightbulb")
                            }
                        }
                    } label: {
                        Label(.settings)
                    }
                }
            }
        }
    }
}

private extension ContentView {

    func performTextInput() {
        if !text.hasSuffix(" ") {
            text.append(" ")
        }
        let processed = inputEngine?.input(inputText, into: "", with: inputMethod) ?? inputText
        self.text.append(processed)
        inputText = ""
    }

    func reset() {
        text = ""
        inputText = ""
    }
}

private extension String {

    func label(_ systemImage: String) -> some View {
        Label(self, systemImage: systemImage)
    }
}

#Preview {
    ContentView()
}
