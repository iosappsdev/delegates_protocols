//
//  EditVC.h
//  delegateExample
//
//  Created by Ricardo Ruiz on 3/30/14.
//  Copyright (c) 2014 iOS Apps Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol EditVCDelegate <NSObject>
@required
-(void)setName:(NSString *)name setEmail:(NSString *)email setPhone:(NSString *)phone;

@end

@interface EditVC : UIViewController

@property (nonatomic) id delegate;
@property (nonatomic,strong) NSString *nameString;
@property (nonatomic,strong) NSString *emailString;
@property (nonatomic,strong) NSString *phoneString;

@end
