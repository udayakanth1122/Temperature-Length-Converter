//
//  ViewController.h
//  temperaturelengthconverter
//
//  Created by Udayakanth Sripada on 2/27/14.
//  Copyright (c) 2014 Udayakanth Sripada. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UISlider *slider;
    IBOutlet UITextField *myTextField1;
    IBOutlet UITextField *myTextField2;
}
/* temperature */
@property (nonatomic,retain)IBOutlet UISlider *slider;
@property (nonatomic,retain)IBOutlet UITextField *myTextField1;
@property (nonatomic,retain)IBOutlet UITextField *myTextField2;
- (IBAction) sliderChanged:(id)sender;

/*length */
@property (nonatomic,retain)IBOutlet UITextField *meters;
@property (nonatomic,retain)IBOutlet UITextField *feets;
@property (nonatomic,retain)IBOutlet UITextField *inches;
@property (nonatomic,retain)IBOutlet UITextField *yards;
@property (nonatomic,retain)IBOutlet UITextField *miles;

- (IBAction) converLengthInto:(id)sender;

-(BOOL)textFieldShouldReturn:(UITextField *)textField;
-(void)hideKeyboard;
-(IBAction)backgroundTapped;

@end
