
/* Generated by Interface Builder */

#import "HyperAccess.h"

@interface FileAccess:HyperAccess
{
}
+ initialize;

- saveAs: sender;
- saveAsRichText: sender;
- saveAsPlainText: sender;
- makeNew:sender;
- linkToNew:sender;
- linkToFile:sender;
- openMy:(const char *)filename diagnostic:(int)diagnostic;
- goHome:sender;
@end