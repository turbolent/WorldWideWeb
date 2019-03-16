//	Text Management Module					TextToy.m
//	----------------------

//	This file allows one to create links between Hypertexts. It selects the
//	current HyperText and then passes the buck to the HyperText class.

#import "TextToy.h"
#import <AppKit/AppKit.h>
#import "Anchor.h"
#import "HyperText.h"
#import <objc/List.h>

#import "HTUtils.h"

@implementation TextToy

#define THIS_TEXT  (HyperText *)[[[NSApp mainWindow] contentView] documentView]

    Anchor *	Mark;		/* A marked Anchor */
    

- setSearchWindow:anObject
{
    SearchWindow = anObject;
    return self;
}

/*	Action Methods
**	==============
*/

/*	Set up the start and end of a link
*/
- linkToMark:sender
{
    return [THIS_TEXT linkSelTo:Mark];
}

- linkToNew:sender
{
    return nil;
}

- unlink:sender;
{
    return [THIS_TEXT unlinkSelection];
}

- markSelected:sender
{
    Mark = [THIS_TEXT referenceSelected];
    return Mark;
}
- markAll:sender
{
    Mark = [THIS_TEXT referenceAll];
    return Mark;
}

- followLink:sender
{
    return [THIS_TEXT followLink];	// never mind whether there is a link
}

- dump : sender
{
    return [THIS_TEXT dump:sender];
}

//		Window Delegate Functions
//		-------------------------

#warning NotificationConversion: windowDidBecomeKey:(NSNotification *)notification is an NSWindow notification method (used to be a delegate method); delegates of NSWindow are automatically set to observe this notification; subclasses of NSWindow do not automatically receive this notification
- (void)windowDidBecomeKey:(NSNotification *)notification
{
    NSWindow *theWindow = [notification object];
}

//	When a document is selected, turn the index search on or off as
//	appropriate

#warning NotificationConversion: windowDidBecomeMain:(NSNotification *)notification is an NSWindow notification method (used to be a delegate method); delegates of NSWindow are automatically set to observe this notification; subclasses of NSWindow do not automatically receive this notification
- (void)windowDidBecomeMain:(NSNotification *)notification
{
    NSWindow *theWindow = [notification object];
    HyperText * HT =  [[theWindow  contentView] documentView];
    if (!HT) return;
    
    if ([HT isIndex]) {
	[SearchWindow makeKeyAndOrderFront:self];
    } else {
	[SearchWindow orderOut:self];
    }
}


//			Access Management functions
//			===========================

- registerAccess:(HyperAccess *)access
{
    if (!accesses) accesses=[List new];
    return [accesses addObject:access];
}


@end
