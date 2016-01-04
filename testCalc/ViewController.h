//
//  ViewController.h
//  testCalc
//
//  Created by Yuan-Pu Hsu on 12/27/15.
//  Copyright © 2015 Yuan-Pu Hsu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Core.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *mainDisplay;
@property (strong, nonatomic) IBOutlet UILabel * opDispaly;

- (IBAction)numberButton:(id)sender;
- (IBAction)operatorButton:(id)sender;
- (IBAction)equalTo:(id)sender;

@end

