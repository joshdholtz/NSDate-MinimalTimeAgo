# NSDateMinimalTimeAgo
NSDate category for very minimal style time ago.

- Time Ago Output
    - Seconds - 45s
    - Minutes - 45m
    - Hours - 12h
    - Days - 5d
    - Weeks - 3w
    - Months - 10mo
    - Years - 2y

## Examples

````objc

#import <NSDateMinimalTimeAgo/NSDate+MinimalTimeAgo.h> // If using CocoaPods
#import "NSDate+MinimalTimeAgo.h" // If dropped files from Classes directory in project directly

NSDate *somePastDate = [self somePastDate];
NSString *timeAgo = [somePastDate timeAgo];

````

## Installation

### Drop-in Classes
Clone the repository and drop in the .h and .m files from the "Classes" directory into your project.

### CocoaPods

JSONAPI is available through [CocoaPods](http://cocoapods.org), to install
it simply add the following line to your Podfile:

    pod 'NSDateMinimalTimeAgo', :git => 'git@github.com:RokkinCat/wantable-ios.git'

## Author

Josh Holtz, josh@rokkincat.com, [@joshdholtz](https://twitter.com/joshdholtz)

## License

NSDateMinimalTimeAgo is available under the MIT license. See the LICENSE file for more info.

