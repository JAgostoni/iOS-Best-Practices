//
//  ViewController.m
//  BigBallOfMud
//
//  Created by Jason Agostoni on 1/22/12.
//

#import "ViewController.h"
#import "AppDelegate.h"         // Required for "old way"
#import "SingletonSample.h"     // Required for "singleton way"

@implementation ViewController
@synthesize oldWayLabel;
@synthesize singletonLabel;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Just set some sample data ...
    [SingletonSample setSomeData:@"Good Way!"];
    AppDelegate *app = [[UIApplication sharedApplication] delegate];
    app.someData = @"Bad Way :(";
}

- (void)viewDidUnload
{
    [self setOldWayLabel:nil];
    [self setSingletonLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark Button Actions
- (IBAction)oldWayTouched:(id)sender {
    // Need to get to the app delegate (which is a singleton, by the way)
    AppDelegate *app = [[UIApplication sharedApplication] delegate];
    self.oldWayLabel.text = app.someData;
}

- (IBAction)singletonTouched:(id)sender {
    // Using the convenience method simplifies the code even more
    self.singletonLabel.text = [SingletonSample getSomeData];
}
@end
