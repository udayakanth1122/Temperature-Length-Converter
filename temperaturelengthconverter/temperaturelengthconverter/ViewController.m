//
//  ViewController.m
//  temperaturelengthconverter
//
//  Created by Udayakanth Sripada on 2/27/14.
//  Copyright (c) 2014 Udayakanth Sripada. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize slider,myTextField1, myTextField2, meters, feets,miles,yards,inches;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) sliderChanged:(id)sender {
    UISlider *slide = (UISlider *)sender;
    myTextField1.text = [NSString stringWithFormat:@"%f C",slide.value];
    double c = [myTextField1.text doubleValue];
    double f = ((c*1.8)+32);
    NSString * entry1 = [[NSString alloc] initWithFormat: @"%f F", f];
    myTextField2.text = entry1;
}

- (IBAction) converLengthInto:(id)sender {
    double meter = [meters.text doubleValue];
    meters.text = [[NSString alloc] initWithFormat: @"%f mts", meter];
    double feet= 3.28 * meter;
    feets.text = [[NSString alloc] initWithFormat: @"%f ft", feet];
    double inch = 39.3701 * meter;
    inches.text = [[NSString alloc] initWithFormat: @"%f in", inch];
    double yard = 1.093 * meter;
    yards.text = [[NSString alloc] initWithFormat: @"%f yrds", yard];
    double mile =0.000621 * meter;
    miles.text = [[NSString alloc] initWithFormat: @"%f mls", mile];
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
	[textField resignFirstResponder];
	return YES;
}

- (void)hideKeyboard{
	[meters resignFirstResponder];
    [feets resignFirstResponder];
    [inches resignFirstResponder];
    [yards resignFirstResponder];
    [miles resignFirstResponder];
}

-(IBAction)backgroundTapped{
	[self hideKeyboard];
}

@end
