//
//  TeamDetailViewController.h
//  NavigationControllers
//
//  Created by Max Tkach on 6/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TeamMember.h"

@interface TeamDetailViewController : UIViewController

@property (strong, nonatomic) NSString *passedTeamMemberName;

@property (strong, nonatomic) NSMutableDictionary *teamDirectory;

@property (strong, nonatomic) TeamMember *teamMember;




@end
