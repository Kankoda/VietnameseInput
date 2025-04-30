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

VietnameseInput is a Swift SDK that lets you add Vietnamese TELEX, VNI, and VIQR input support to your apps.

With VietnameseInput, your app users don't have to switch to a Vietnamese keyboard to type in Vietnamese. This is useful in educational apps, games, as well as in custom iOS keyboard extensions.

VietnameseInput is currently in closed, internal beta, but you can [reach out][Email] if you want to become a beta tester.

<!--VietnameseInput requires a license to be used. You can sign up on the [KeyboardKit website][Website] or the [Gumroad store][Gumroad].-->



## Installation

VietnameseInput can be installed with the Swift Package Manager:

```
https://github.com/Kankoda/VietnameseInput.git
```

VietnameseInput is a closed-source package and must therefore only be linked to the main app target.



## Getting Started

After signing up for a VietnameseInput license, you must setup your license to be able to use the SDK:

```swift
try await VietnameseInputLicense.setupWithLicenseKey("abc-123")   // or:
try await VietnameseInputLicense.setupWithLicenseFile()
```

If this is successful, you can now create a ``VietnameseInputEngine``, which can be used to type in Vietnamese:

```swift
let engine = try VietnameseInputEngine()  // Fails if no license is registered

// TELEX
engine.appendCharacters(in: "uow", to: "", with: .telex)     // -> "ươ"
engine.appendCharacters(in: "ow", to: "u", with: .telex)     // -> "ươ"
engine.appendCharacters(in: "Thuowng", to: "", with: .telex) // -> "Thương"
engine.appendCharacters(in: "Duowng", to: "", with: .telex)  // -> "Dương"

// VIQR
engine.appendCharacters(in: "uo*", to: "", with: .viqr)      // -> "ươ"
engine.appendCharacters(in: "o*", to: "u", with: .viqr)      // -> "ươ"
engine.appendCharacters(in: "Thuo*ng", to: "", with: .viqr)  // -> "Thương"
engine.appendCharacters(in: "Duo*ng", to: "", with: .viqr)   // -> "Dương"

// VNI
engine.appendCharacters(in: "uo7", to: "", with: .vni)        // -> "ươ"
engine.appendCharacters(in: "o7", to: "u", with: .vni)        // -> "ươ"
engine.appendCharacters(in: "Thuo7ng", to: "", with: .vni)    // -> "Thương"
engine.appendCharacters(in: "Duo7ng", to: "", with: .vni)     // -> "Dương"
```

This engine can also calculate which diacritic to apply instead of a character, which insertion strategy to use, etc.

See the [getting-started guide][Getting-Started] for more information.




## Documentation

The [online documentation][Documentation] has a thorough getting-started guide, detailed articles, code samples, etc.



## Demo App

A demo app will be available once this package is ready for use.



## Contact

VietnameseInput is developed by [Kankoda][Kankoda] - a software company in Stockholm, Sweden.

* Website: [kankoda.com/VietnameseInput][Website]
* E-mail: [info@kankoda.com][Email]
* Bluesky: [@kankoda.bsky.social][Bluesky]
* Mastodon: [@kankoda@techhub.social][Mastodon]

Feel free to reach out if you have any questions or feedback, or if you need support.



## Commercial License

This package requires a license to be used. You can sign up on the [product website][Website] or the [Gumroad store][Gumroad].



[Email]: mailto:info@kankoda.com
[Kankoda]: https://kankoda.com
[Website]: https://kankoda.com/vietnameseinput
[Bluesky]: https://bsky.app/profile/kankoda.bsky.social
[Mastodon]: https://techhub.social/@kankoda
[Sponsors]: https://github.com/sponsors/danielsaidi

[Gumroad]: https://kankoda.gumroad.com
[Documentation]: https://kankoda.github.io/VietnameseInput/
[License]: https://github.com/Kankoda/VietnameseInput/blob/master/LICENSE

[Getting-Started]: https://kankoda.github.io/VietnameseInput/documentation/vietnameseinput/getting-started-article
