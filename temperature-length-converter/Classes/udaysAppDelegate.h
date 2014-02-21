

#import <UIKit/UIKit.h>

@class udaysViewController;

@interface udaysAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UITabBarController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *viewController;

@end

