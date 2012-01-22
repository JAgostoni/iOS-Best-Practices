//
//  ViewController.h
//  BigBallOfMud
//
//  Created by Jason Agostoni on 1/22/12.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)oldWayTouched:(id)sender;
- (IBAction)singletonTouched:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *oldWayLabel;
@property (weak, nonatomic) IBOutlet UILabel *singletonLabel;

@end
