# QuickResponse

[![Build Status](https://travis-ci.org/tnantoka/QuickResponse.svg?branch=master)](https://travis-ci.org/tnantoka/QuickResponse)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![codecov.io](https://codecov.io/github/tnantoka/QuickResponse/coverage.svg?branch=master)](https://codecov.io/github/tnantoka/QuickResponse?branch=master)

## Installation

### Carthage

```swift
// Cartfile
github "tnantoka/QuickResponse"
```

### CocoaPods

```ruby
# Podfile
pod 'QuickResponse'
```

## Usage

```swift
import QuickResponse

QuickResponse.code("http://example.com/") // UIImage
QuickResponse(message: "http://example.com/").scaled(2.0).leveled(.H).code // UIImage
```

## Author

[@tnantoka](https://twitter.com/tnantoka)

