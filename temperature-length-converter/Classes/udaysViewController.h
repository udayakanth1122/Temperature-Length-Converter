

#import <UIKit/UIKit.h>

@interface udaysViewController : UIViewController 

@property (nonatomic, retain) IBOutlet UITextField *text;
@property (nonatomic, retain) IBOutlet UILabel *label;



@property (nonatomic, retain)IBOutlet UIPickerView *picker;
@property (nonatomic, retain)NSArray *pickerInput;
@property (nonatomic, retain) IBOutlet UITextField *mytext;
@property (nonatomic, retain) IBOutlet UILabel *mylabel;


-(void)hideKeyboard;
-(IBAction)backgroundTapped;
- (IBAction)show;
-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;
-(BOOL)textFieldShouldReturn:(UITextField *)textField;

-(IBAction)cToF: (id)display;
-(void)hideKeyboard;
-(IBAction)backgroundTapped;
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;

@end
