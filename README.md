# telemachus
An NSImageView &amp; UIImageView Asynchronous Image Loading Category

### What is this?
In my project [Magpie](http://magpievideo.com), I had a need for an asynchronous image loading library that could replace `AFNetworking`'s UIImageView category.

Because Magpie is a Mac app as well, I wanted a single library that supported both platforms. Telemachus is a single class that serves both.

### What's included
Telemachus comes with a number of components:
* The master `Telemachus` class, which does all the actual networking and caching.
* A `UIImageView+Telemachus` category, which provides a super-simple method for your `UIImageView`. Use it like this:

    [myImageView loadImage:@"http://your.com/loadedimage.png" withPlaceholder:[UIImage imageNamed:@"placeholder"]

* A `NSImageView+Telemachus` category, which does the same thing for `NSImageView`. Like this:

    [myImageView loadImage:@"http://your.com/loadedimage.png" withPlaceholder:[NSImage imageNamed:@"placeholder"]

* An `XImage` class shim to allow Telemachus to support both UIImage and NSImage from one codebase. If you don't care about UIKit support, for example, you could rip that out and make a couple tweaks to Telemachus to use your platform's class directly.

* An NSImage category, `NSImage+ResizeToFill`, which automatically scales NSImages to fill the provided NSImageView on OS X. This is a feature I rely on with iOS and its `aspectFill` contentMode, and I am including it directly because I just always need it. You can of course remove it for your needs; I may provide a flag in the Telemachus class to opt it in.

* Demo projects for iOS and OS X.

### What's up with the name?
When I studied The Odyssey in university I was told that Telemachus meant "far-seeing". However, [Wikipedia observes](https://en.wikipedia.org/wiki/Telemachus) now that it means "far fighter". I like the name because it implies action over a distance, and how is that not related to seeing images flung from afar over a network? Pretty cool, right?

### Can I even use this thing?
Well, I can't speak to your technical abilities, but from a licensing perspective, it's wide open. MIT License, so have at it. I will almost certainly improve it over time, but pull requests are welcome.
