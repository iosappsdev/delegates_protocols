//
//  MainVC.h
//  delegateExample
//
//  Created by Ricardo Ruiz on 3/30/14.
//  Copyright (c) 2014 iOS Apps Development. All rights reserved.
//

#import <UIKit/UIKit.h>
//Import DetailVC
#import "EditVC.h"

@interface MainVC : UIViewController
@property (nonatomic,strong) EditVC *edit_VC;

@end
