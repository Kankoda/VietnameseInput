<p align="center">
    <img src="Resources/Icon.png" alt="Project Icon" width="250" />
</p>

<p align="center">
    <img src="https://img.shields.io/github/v/release/Kankoda/VietnameseInput?color=forestgreen&sort=semver" alt="Version" />
    <img src="https://img.shields.io/badge/swift-6.0-orange.svg" alt="Swift 6.0" />
    <a href="https://keyboardkit.github.io/VietnameseInput"><img src="https://img.shields.io/badge/documentation-read-blue.svg" alt="Documentation" /></a>
    <img src="https://img.shields.io/badge/license-commercial-yellow.svg" alt="Commercially Licensed" />
</p>


# Vietnamese Input

VietnameseInput is a Swift SDK that can be used to add Vietnamese TELEX, VNI, and VIQR input support to your apps on major Apple platforms (iOS, macOS, tvOS, watchOS & visionOS).

VietnameseInput lets you type in TELEX, VNI, and VIQR, without having to switch to a Vietnamese keyboard. This can be useful in many different kind of applications, like games, educational apps, keyboard extensions, etc.



## Pricing

This package requires a commercial license to be used. You can sign up for a license from the [product website][Website] or the [online license store][LicenseStore].

You can also use the "FREE" license key, as described in [getting-started guide][Getting-Started]. This gives you access to a capped version of the library, that can make at most 50 requests before it stops working.



## Installation

VietnameseInput can be installed with the Swift Package Manager:

```
https://github.com/Kankoda/VietnameseInput.git
```

This is a binary package, and must therefore only be linked to the main app target. All oher targets can still import and use it. A closed-source package can depend on this package as described [in this post](https://danielsaidi.com/blog/2025/05/02/adding-dependencies-to-binary-swift-packages). 



## Getting Started

After [signing up for a VietnameseInput license](#pricing), you must use your license to unlock the SDK:

```swift
// If you have a license key
let license = try await VietnameseInputLicense.register(withLicenseKey: "your-license-key")

// If you have a license file
let license = try await VietnameseInputLicense.register(withLicenseFileIn: .module)
```

To register a license in a SwiftUI app, the ``VietnameseInputLicenseView`` can be used to register a license before rendering a custom content view. This is more convenient and handles the try await for you.

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



## Demo App

The `Demo` folder has a demo app that shows you how to use the library.

The demo app uses the "FREE", limited license key, which can perform a few operations before it stops working.



## Contact

VietnameseInput is developed by [Kankoda][Website] in Stockholm, Sweden.

* Website: [kankoda.com][Website]
* E-mail: [info@kankoda.com][Email]
* Bluesky: [@kankoda.bsky.social][Bluesky]
* Mastodon: [@kankoda@techhub.social][Mastodon]

Feel free to reach out if you have any questions or feedback, or if you need support.



## Commercial License

This package requires a license to be used. You can sign up on the [product website][Website] or the [online license store][LicenseStore].



[Email]: mailto:info@kankoda.com
[Website]: https://kankoda.com
[Bluesky]: https://bsky.app/profile/kankoda.bsky.social
[Mastodon]: https://techhub.social/@kankoda
[Sponsors]: https://github.com/sponsors/danielsaidi

[Documentation]: https://kankoda.github.io/VietnameseInput/
[License]: https://github.com/Kankoda/VietnameseInput/blob/master/LICENSE
[LicenseStore]: https://kankoda.gumroad.com

[Getting-Started]: https://kankoda.github.io/VietnameseInput/documentation/vietnameseinput/getting-started-article
