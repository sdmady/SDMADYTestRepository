
#import "myTest.h"

@implementation myTest

+ (NSString *) projectTag{
    
    NSString * path = [[NSBundle mainBundle] pathForResource:@"module_config.plist" ofType:nil];
    NSDictionary * info = [NSDictionary dictionaryWithContentsOfFile:path];
    return info[@"ProjectName"];
    
}

+ (NSString *)stripImageSuffix:(NSString *)imageName
{
    if ([imageName hasSuffix:@".png"] ) {
        imageName = [imageName stringByReplacingOccurrencesOfString:@".png" withString:@""];
    }else if ([imageName hasSuffix:@".jpg"]) {
        imageName = [imageName stringByReplacingOccurrencesOfString:@".jpg" withString:@""];
    }
    return imageName;
}

+(BOOL)isNil:(NSString*)string{
    if(string && string.length >0 ){
        return NO;
    }else{
        return YES;
    }
}

+(NSString*)trimString:(NSString*)string{
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return string;
}
