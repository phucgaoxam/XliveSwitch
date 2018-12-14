#import "XliveSwitchPlugin.h"
#import <xlive_switch/xlive_switch-Swift.h>

@implementation XliveSwitchPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftXliveSwitchPlugin registerWithRegistrar:registrar];
}
@end
