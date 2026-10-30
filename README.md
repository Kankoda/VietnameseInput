<p align="center">
    <img src="Resources/Icon.png" alt="Project Icon" width="250" />
</p>

<p align="center">
    <img src="https://img.shields.io/github/v/release/Kankoda/VietnameseInput?color=forestgreen&sort=semver" alt="Version" />
    <img src="https://img.shields.io/badge/swift-6.2-orange.svg" alt="Swift 6.2" />
    <a href="https://kankoda.github.io/VietnameseInput"><img src="https://img.shields.io/badge/documentation-read-blue.svg" alt="Documentation" /></a>
    <a href="https://kankoda.com/vietnameseinput"><img src="https://img.shields.io/badge/license-commercial-red.svg" alt="Commercially Licensed" /></a>
</p>


# Vietnamese Input

VietnameseInput is a Swift SDK that can be used to add Vietnamese TELEX, VNI, and VIQR input support to your apps on major Apple platforms (iOS, macOS, tvOS, watchOS & visionOS).

VietnameseInput lets you type in TELEX, VNI, and VIQR, without having to switch to a Vietnamese keyboard. This can be useful in many different kind of applications, like games, educational apps, keyboard extensions, etc.



## Installation

VietnameseInput can be installed with the Swift Package Manager:

```
https://github.com/Kankoda/VietnameseInput.git
```

This package requires a license to be used. You can sign up for a free or paid license from the [website][Website], then register it as described in the [getting-started guide][Getting-Started].



## Getting Started

You must first use your license to unlock the SDK:

```swift
try await VietnameseInputLicense.register(.gumroad(licenseKey: "your-license-key"))
```

You can also use the `.vietnameseInputLicense(...)` modifier on your app's root view, to automatically register your license on app launch:

```swift
@main
struct MyApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
                .vietnameseInputLicense(.gumroad(licenseKey: "...")) { result in
                    // Optional result handler
                }
        }
    }
}
```

You can now start creating and presenting onboarding experiences in your app. See the [getting-started guide][Getting-Started] for more information.


### Vietnamese Input

Once you have a license, you can create a ``VietnameseInputEngine``, which can be used for Vietnamese input:

```swift
let engine = try VietnameseInputEngine()  // Fails if no license is registered

// TELEX
engine.input("uow", into: "", with: .telex)     // -> "ươ"
engine.input("ow", into: "u", with: .telex)     // -> "ươ"
engine.input("Duowng", into: "", with: .telex)  // -> "Dương"

// VIQR
engine.input("uo*",in to: "", with: .viqr)      // -> "ươ"
engine.input("o*",in to: "u", with: .viqr)      // -> "ươ"
engine.input("Duo*ng"in, to: "", with: .viqr)   // -> "Dương"

// VNI
engine.input("uo7", into: "", with: .vni)       // -> "ươ"
engine.input("o7", into: "u", with: .vni)       // -> "ươ"
engine.input("Duo7ng", into: "", with: .vni)    // -> "Dương"
```

You can also use the input engine to check if an input character should be replaced with a diacritic, and if so how.

See the [getting-started guide][Getting-Started] for more information.




## Documentation

The [online documentation][Documentation] has a thorough getting-started guide, detailed articles, code samples, etc.



## Contact

This package is developed by [Kankoda][Website] in Stockholm, Sweden. Feel free to [reach out][email] if you have any questions or feedback, or if you need support integrating this package into your app.



## Commercial License

This package requires a license to be used. You can sign up on the [product website][Website] or the [online license store][LicenseStore].



[Email]: mailto:info@kankoda.com
[Website]: https://kankoda.com
[Product]: https://kankoda.com/vietnameseinput

[Documentation]: https://kankoda.github.io/VietnameseInput/
[License]: https://github.com/Kankoda/VietnameseInput/blob/master/LICENSE
[LicenseStore]: https://kankoda.gumroad.com

[Getting-Started]: https://kankoda.github.io/VietnameseInput/documentation/vietnameseinput/getting-started-article
