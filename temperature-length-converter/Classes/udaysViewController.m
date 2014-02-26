

#import "udaysViewController.h"
#define SET	@"0123456789"
#define NEWSET	@"-0123456789."

@implementation udaysViewController

@synthesize text,label,mylabel,mytext,picker, pickerInput;

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
    self.picker=nil;
	self.pickerInput=nil;
    self.mylabel = nil;
	self.mytext = nil;
}

- (void)dealloc {
	[text release];
	[label release];
    [picker release];
	[pickerInput release];
    [mytext release];
	[mylabel release];
	[super dealloc];
}

- (void)show {
	NSInteger field = [picker selectedRowInComponent:0];
	double meter = [mytext.text doubleValue];
	NSString *result;
	NSString *result2;
	NSString *result3;
	NSString *result4;
	switch(field)
	{
		case 0:{
            double feets= 3.28 * meter;
            result=[[NSString alloc] initWithFormat:@"%f",feets];
            mylabel.text=result;
            [result release];
			break;
	    }
		case 1:{
            double inches= 39.3701 * meter;
            result2=[[NSString alloc] initWithFormat:@"%f",inches];
            mylabel.text=result2;
            [result2 release];
			break;
		}
		case 2:{
            double yards= 1.093 * meter;
            result3=[[NSString alloc] initWithFormat:@"%f",yards];
            mylabel.text=result3;
            [result3 release];
			break;
		}
            
		case 3:{
            double miles=0.000621 * meter;
            result4=[[NSString alloc] initWithFormat:@"%f",miles];
            mylabel.text=result4;
            [result4 release];
		}
	}
}

- (void)viewWillAppear:(BOOL)animated {
	
    NSUserDefaults *pickerSelect = [NSUserDefaults standardUserDefaults];
    [picker selectRow:[pickerSelect integerForKey:@"pickerList"] inComponent:0 animated:YES];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
	NSUserDefaults *pickerSelect = [NSUserDefaults standardUserDefaults];
	switch(row)
	{
		case 0: [pickerSelect setObject:@"feets" forKey:@"pickerList"];break;
		case 1: [pickerSelect setObject:@"inches" forKey:@"pickerList"];break;
		case 2: [pickerSelect setObject:@"yards" forKey:@"pickerList"];break;
		case 3: [pickerSelect setObject:@"miles" forKey:@"pickerList"];break;
	}
    [pickerSelect synchronize];
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
	[textField resignFirstResponder];
	return YES;
}



- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    
	
    if ([mytext.text rangeOfString:@"."].location == NSNotFound || [mytext.text rangeOfString:@"-"].location == NSNotFound)
    {
        NSCharacterSet *characterSet = [[NSCharacterSet characterSetWithCharactersInString:NEWSET] invertedSet];
        NSString *stringJoin = [[string componentsSeparatedByCharactersInSet:characterSet] componentsJoinedByString:@""];
        return [string isEqualToString:stringJoin];
    }
	
    NSCharacterSet *characterSet2 = [[NSCharacterSet characterSetWithCharactersInString:SET] invertedSet];
    NSString *stringJoin2 = [[string componentsSeparatedByCharactersInSet:characterSet2] componentsJoinedByString:@""];
    return [string isEqualToString:stringJoin2];
}
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.

- (void)viewDidLoad {
	NSArray *listArray=[[NSArray alloc] initWithObjects:@"Feets",@"Inches",@"Yards",@"Miles",nil];
	self.pickerInput=listArray;
	[listArray release];
    //[super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


#pragma mark -
#pragma mark Picker Data Source Methods
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component{
    
    return [pickerInput count];
}
#pragma mark Picker Delegate Methods
-(NSString *)pickerView:(UIPickerView *)pickerView
            titleForRow:(NSInteger)row
           forComponent:(NSInteger)component{
    return [pickerInput objectAtIndex:row];
}


@end
