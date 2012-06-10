//
//  DashViewController.h
//  UglyApp
//
//  Created by Jason Agostoni on 5/26/12.
//
//

#import <UIKit/UIKit.h>

@interface DashViewController : UIViewController

@property(weak, nonatomic) IBOutlet UILabel *countLabel;

-(void) dataChanged:(NSNotification *)notification;
@end
