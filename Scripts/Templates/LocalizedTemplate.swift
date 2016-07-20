/* Generated by 'Generate-Swift-L18N-Constants.swift' DO NOT CHANGE */

import Foundation

/**
Usage:

Localized.LoadError
Localized.WelcomeMessage.with("Dan")
*/

enum Localized: CustomStringConvertible
{
	// %CASE_DECLARATIONS%
	var key : String
	{
		switch self
		{
			// %CASE_DESCRIPTIONS%
		}
	}
	
	var description : String
	{
		return NSLocalizedString(self.key, comment: self.key)
	}
	
	func with(args: CVarArg...) -> String
	{
		let format = NSLocalizedString(self.key, comment: self.key)
		return String(format: format, arguments: args)
	}
}
