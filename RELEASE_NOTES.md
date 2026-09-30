# Release notes

VietnameseInput will honor semantic versioning after 1.0.

Before 1.0, breaking changes can occur in minor versions.


## 0.3

This version replaces most explicit diacritic replacements with combining mark logic.

### 📦 Package

* `VietnameseInput` now ships as a multi-platform package.
* `VietnameseInput` now targets iOS 16, .macOS 14, .tvOS 16, and .watchOS 10.

### ✨ Features

* `Vietnamese.Diacritic` has new `combiningMark` and `combiningMarkChars` properties.
* `Vietnamese.Diacritic.CombiningMark` is a new type that describes a Unicode combining mark.
* `VietnameseInputEngine` can now apply tones to full words, e.g. `Tuân` + `s` => `Tuấn` and `moi` + `j` => `mọi`.

### 💡 Behavior changes

* `mũ`, `móc` and `trăng` can now be applied to vowels with tones, e.g. `á` + `a` => `ấ`.
* `mũ` and `móc` can now replace each other, e.g. `ô` + `w` => `ơ`, just like `mũ` and `trăng` already did.

### 💥 Breaking changes

* `Vietnamese.allDiacriticVariantsFor*` and `Vietnamese.allDiacriticVowelVariants` have been removed.



## 0.2

This version adjusts the dependency management and adds a vectorized logo. 



## 0.1

This the first beta version of VietnameseInputKit. 

This version supports the FREE license key and encrypted license files.

## ✨ Features

* `Vietnamese` is a namespace with language features.
* `VietnameseInputEngine` can be used to manage Vietnamese input.
* `VietnameseInputLicense` can be used for library license registration.
* `VietnameseInputLicenseView` can be used for library license registration.
