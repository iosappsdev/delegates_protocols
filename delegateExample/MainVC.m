//
//  MainVC.m
//  delegateExample
//
//  Created by Ricardo Ruiz on 3/30/14.
//  Copyright (c) 2014 iOS Apps Development. All rights reserved.
//

#import "MainVC.h"

@interface MainVC ()<EditVCDelegate>

@property (strong, nonatomic) IBOutlet UILabel *lb_name;
@property (strong, nonatomic) IBOutlet UILabel *lb_email;
@property (strong, nonatomic) IBOutlet UILabel *lb_phone;

- (IBAction)edit:(id)sender;

@end

@implementation MainVC
@synthesize lb_name, lb_email, lb_phone, edit_VC;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Delegate Sample";
    lb_name.text = @"";
    lb_email.text = @"";
    lb_phone.text = @"";
}

-(void)setName:(NSString *)name setEmail:(NSString *)email setPhone:(NSString *)phone {
    
    lb_name.text = name;
    lb_email.text = email;
    lb_phone.text = phone;
    
}

- (IBAction)edit:(id)sender {
    
    if(self.edit_VC == nil)
	{
		EditVC *viewTwo = [self.storyboard instantiateViewControllerWithIdentifier:@"EditVC"];
        
		self.edit_VC = viewTwo;
	}
    
    edit_VC.nameString = lb_name.text;
    edit_VC.emailString = lb_email.text;
    edit_VC.phoneString = lb_phone.text;
    [edit_VC setDelegate:self];
    

    [self.navigationController pushViewController:self.edit_VC animated:YES];
}
@end
