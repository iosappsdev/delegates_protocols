//
//  EditVC.m
//  delegateExample
//
//  Created by Ricardo Ruiz on 3/30/14.
//  Copyright (c) 2014 iOS Apps Development. All rights reserved.
//

#import "EditVC.h"

@interface EditVC ()
@property (strong, nonatomic) IBOutlet UITextField *tf_name;
@property (strong, nonatomic) IBOutlet UITextField *tf_email;
@property (strong, nonatomic) IBOutlet UITextField *tf_phone;

- (IBAction)apply:(id)sender;

@end

@implementation EditVC
@synthesize delegate, tf_phone, tf_email, tf_name, nameString, emailString, phoneString;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Edit Values";
}

- (IBAction)apply:(id)sender {
    
    [[self delegate] setName:tf_name.text setEmail:tf_email.text setPhone:tf_phone.text];
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
