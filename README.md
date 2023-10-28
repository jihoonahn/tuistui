# TuistUI

<p>
  <img src="https://img.shields.io/badge/Swift-5.9-f05318.svg" />
  <img src="https://img.shields.io/badge/tuist-plugin-blue.svg" />
  <img alt="GitHub" src="https://img.shields.io/github/license/Jihoonahn/tuistui">
</p>

TuistUI is Style Plugin for cooler use of Tuist.

## Installation

In order to tell Tuist you'd like to use TuistUI plugin in your project follow the instructions that are described in [Tuist documentation.](https://docs.tuist.io/plugins/using-plugins)

## Using

Then import the `TuistUI` from thr location you want to use.

```swift
import TuistUI
```

#### Creating Project with TuistUI

```swift
@Project
struct BaseFeature: Module {
    var body: some Module {
        Project {
            /// Target Code
        }
        .organizationName("")
        .package {
            /// Package Code
        }
    }    
}
```

#### Creating Workspace with TuistUI

```swift
@Workspace
struct TuistApp: Module {
    var body: some Module {
        Workspace {
            Path.relativeToRoot("Projects/App")
        }
        .scheme {
            /// Scheme Code
        }
    }
}
```


## License
**tuistui** is under MIT license. See the [LICENSE](https://github.com/Jihoonahn/tuistui/blob/main/LICENSE) file for more info.

