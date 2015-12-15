#!/usr/bin/env xcrun swift

import Foundation

// Input and Output
var inputPath: String?
var outputPath: String?

// Process the arguments
print("Process.arguments gave args:")
guard Process.arguments.count == 3 else {
	fatalError("We should have 3 arguments into the script")
}
//for arg in Process.arguments {
//	print("Arg: \(arg)")
//}
//print("Arg count is \(Process.arguments.count) ")

inputPath = Process.arguments[1]
outputPath = Process.arguments[2]

// Read the strings file
var stringsDict: [NSObject: AnyObject]?
guard let localizedInputPath = inputPath else{
	fatalError("We should have the input path of the Localizable.strings")
}
if let localizedData = NSData(contentsOfFile: localizedInputPath),
	let localizedString = NSString(data:localizedData, encoding:NSUTF8StringEncoding) as String?
{
	stringsDict = localizedString.propertyListFromStringsFileFormat()
}

// We now have all the strings in stringsDict
guard let stringsDict = stringsDict else {
	fatalError("We should have a dictionary of strings")
}


