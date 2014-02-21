

#import <UIKit/UIKit.h>


@interface lengthconvert : UIViewController {
	
}
@property (nonatomic, retain)IBOutlet UIPickerView *picker;
@property (nonatomic, retain)NSArray *pickerInput;
@property (nonatomic, retain) IBOutlet UITextField *text;
@property (nonatomic, retain) IBOutlet UILabel *label;



-(void)hideKeyboard;
-(IBAction)backgroundTapped;
- (IBAction)show;
-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;
-(BOOL)textFieldShouldReturn:(UITextField *)textField;

@end
