cat > Tweak.xm << 'EOF'
#import <UIKit/UIKit.h>

%hook UIDevice
- (NSString *)identifierForVendor {
    return @"ESGIN-VANTROX-BYPASSED";
}
- (NSString *)name { return @"iPhone14,5"; }
%end

%hook NSString
- (BOOL)isEqualToString:(NSString *)other {
    if ([other containsString:@"VANTROX"] || 
        [other containsString:@"I6WPE9VKCUZAMG85"] ||
        [other containsString:@"license"]) {
        return YES;
    }
    return %orig;
}
%end

%hook UIAlertController
+ (instancetype)alertControllerWithTitle:(NSString *)title 
                                 message:(NSString *)message 
                          preferredStyle:(UIAlertControllerStyle)style {
    if ([[title lowercaseString] containsString:@"vantrox"] ||
        [[title lowercaseString] containsString:@"key"]) {
        return nil;
    }
    return %orig;
}
%end

%ctor {
    NSLog(@"🔥 ESign DYLIB → VANTROX BYPASS ACTIVE!");
}
EOF
