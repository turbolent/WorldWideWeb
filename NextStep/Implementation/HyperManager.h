//	HyperText Access method manager Object			HyperManager.h
//	--------------------------------------
//
//	It is the job of a hypermanager to keep track of all the HyperAccess modules
//	which exist, and to pass on to the right one a general request.
//
// History:
//	   Oct 90	Written TBL
//
#import "HyperAccess.h"
#import <objc/List.h>

@interface HyperManager : HyperAccess

{
	List * accesses;
}

- traceOn:sender;		// 	Diagnostics: Enable output to console
- traceOff:sender;		//	Disable output to console
- registerAccess:anObject;	//	Register a subclass of HyperAccess
- back:sender;			// 	Return whence we came
- next:sender;			//	Take link after link taken to get here
- previous:sender;		//	Take link before link taken to get here
- goHome:sender;		//	Load the home node
- goToBlank:sender;		//	Load the blank page
- help:sender;			//	Go to help page
- closeOthers:sender;		//	Close unedited windows
- save: sender;			//	Save main window's document
- inspectLink:sender;		//	Look at the selected link
- copyAddress:sender;		//	Pick up the URL of the current document
- linkToString: sender;		//	Make link to open string
- saveAll:sender;		//	Save back all modified windows
- (void)setTitle:(id)sender;		//	Set the main window's title
#warning PrintingConversion:  printPSCode: has been renamed to print:.  Rename this method?
- (void)print:(id)sender;			//	Print the main window
- runPagelayout:sender;		//	Run the page layout panel for the app.

#warning NotificationConversion: windowDidBecomeKey:(NSNotification *)notification is an NSWindow notification method (used to be a delegate method); delegates of NSWindow are automatically set to observe this notification; subclasses of NSWindow do not automatically receive this notification
- (void)windowDidBecomeKey:(NSNotification *)notification;	//	Window delegate method

@end
