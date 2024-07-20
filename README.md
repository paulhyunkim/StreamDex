# StreamDex

StreamDex is a Swift application designed to aggregate live streams from various streaming services and support multi-stream playback inside a single, unified interface.

## Technologies Used

- **SwiftUI**
- **SwiftData**: Data persistence
- **Streamlink**: A command-line utility used to extract m3u8 from broadcasts

## Architecture Overview

### Plugins

Plugins are designed as Swift packages, each responsible for handling a specific streaming service. This modular approach ensures that the core application remains lightweight and easy to maintain. Plugins communicate with the core application through protocols, ensuring loose coupling and high cohesion.

## Planned Improvements

1. **External Plugin Downloads**: Enable the application to download and integrate external plugins dynamically. This will allow users to easily extend the functionality of StreamDex without needing to update the core app.
2. **Testing**: Implement comprehensive testing using Apple's new testing framework, [Swift Testing](https://github.com/apple/swift-testing), to ensure robustness and reliability.

## Installation

To get started with StreamDex, clone the repository and open it in Xcode:

```bash
git clone https://github.com/paulhyunkim/StreamDex.git
cd StreamDex
open StreamDex.xcworkspace
```

## Usage

1. Build and run the project in Xcode.
2. Add credentials and configuration settings for plugins under the app's settings.
3. Add channels from supported streaming services that you want to follow.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request with your changes.

## License

StreamDex is licensed under the BSD 3-Clause License. See the LICENSE file for more information.
