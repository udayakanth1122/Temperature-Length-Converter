

#import "udaysViewController.h"

@implementation udaysViewController

@synthesize text,label;

UITextField *text;
UILabel *label;

- (void)hideKeyboard{
	[text resignFirstResponder];
}

-(IBAction)backgroundTapped{
	[self hideKeyboard];
}

/* code to convert centigrate to fahrenheit */
-(IBAction)cToF:(id)display{
    double c = [text.text doubleValue];
    double f = ((c*1.8)+32);
    NSString * entry1 = [[NSString alloc] initWithFormat: @"Fahrenheit is %f", f];
	label.text= entry1;
	[text resignFirstResponder];
	[entry1 release];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

- (void)viewDidUnload {
    [super viewDidUnload];
	self.label = nil;
	self.text = nil;
}

- (void)dealloc {
	[text release];
	[label release];
	[super dealloc];
}

@end
