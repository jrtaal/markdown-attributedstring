
A Markdown NSAttributedString Parser
====================================

This is a Markdown => NSAttributedString parser built on top of a flex parser. It takes an NSString
and returns an NSAttributedString with markdown tags replaced by CoreText formatting attributes.

[![CI Status](http://img.shields.io/travis/Jacco Taal/MarkdownAttributedString.svg?style=flat)](https://travis-ci.org/Jacco Taal/MarkdownAttributedString)
[![Version](https://img.shields.io/cocoapods/v/MarkdownAttributedString.svg?style=flat)](http://cocoapods.org/pods/MarkdownAttributedString)
[![License](https://img.shields.io/cocoapods/l/MarkdownAttributedString.svg?style=flat)](http://cocoapods.org/pods/MarkdownAttributedString)
[![Platform](https://img.shields.io/cocoapods/p/MarkdownAttributedString.svg?style=flat)](http://cocoapods.org/pods/MarkdownAttributedString)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

Adding it to your Project
-------------------------

1. Drag all of the files from the src/ directory into your project.
2. Import NSAttributedStringMarkdownParser.h in your project.
3. Create an instance of the parser object and pass it the string you wish to parse.
4. Plug the resulting NSAttributedString into your favorite NSAttributedString label implementation.

NSAttributedString Labels
-------------------------

Nimbus: https://github.com/jverkoey/nimbus
TTTAttributedLabel: https://github.com/mattt/TTTAttributedLabel

Supported Features
------------------

*italics*
**bold**
***bold italic***
~~strikethrough~~

# Header 1
## Header 2
### Header 3
#### Header 4
##### Header 5
###### Header 6

Header 1
========

Header 2
--------

http://google.com urls
[Text] (http://google.com "alt text") urls

Example
-------

NSAttributedStringMarkdownParser* parser = [[NSAttributedStringMarkdownParser alloc] init];
NSAttributedString* string = [parser attributedStringFromMarkdownString:
@"This is __rad__.""];

See the Catalog application included with the project for more examples.



## Requirements

## Installation

MarkdownAttributedString is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "MarkdownAttributedString"
```


## Author

Jacco Taal, jacco@bitnomica.com

## License

MarkdownAttributedString is All rights reserved. See the LICENSE file for more info.
