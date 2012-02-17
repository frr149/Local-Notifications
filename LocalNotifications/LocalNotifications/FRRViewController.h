//
//  FRRViewController.h
//  LocalNotifications
//
//  Created by Fernando Rodríguez Romero on 2/17/12.
//  Copyright (c) 2012 AGBO Business Architecture, SL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FRRViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
- (IBAction)onSet:(id)sender;
- (IBAction)onCancelAll:(id)sender;

@end
