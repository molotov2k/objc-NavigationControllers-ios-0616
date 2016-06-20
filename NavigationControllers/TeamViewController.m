//
//  TeamViewController.m
//  NavigationControllers
//
//  Created by Max Tkach on 6/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "TeamViewController.h"
#import "TeamDetailViewController.h"

@interface TeamViewController ()

@end

@implementation TeamViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    TeamDetailViewController *destinationViewController = segue.destinationViewController;
    destinationViewController.passedTeamMemberName = segue.identifier;
}



@end
