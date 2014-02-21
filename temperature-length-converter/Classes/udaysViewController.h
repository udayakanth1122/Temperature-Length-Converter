

#import <UIKit/UIKit.h>

@interface udaysViewController : UIViewController 

@property (nonatomic, retain) IBOutlet UITextField *text;
@property (nonatomic, retain) IBOutlet UILabel *label;

-(IBAction)cToF: (id)display;
-(void)hideKeyboard;
-(IBAction)backgroundTapped;
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;


@end
