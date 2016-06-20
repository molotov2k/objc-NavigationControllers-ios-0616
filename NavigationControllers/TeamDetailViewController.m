//
//  TeamDetailViewController.m
//  NavigationControllers
//
//  Created by Max Tkach on 6/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "TeamDetailViewController.h"

@interface TeamDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *photo;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *phoneNumber;
@property (weak, nonatomic) IBOutlet UILabel *birthPlace;
@property (weak, nonatomic) IBOutlet UILabel *favoriteBand;

@end

@implementation TeamDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initTeamDirectory];
    [self updateLabels];
}

- (void) initTeamDirectory {
    TeamMember *joe = [[TeamMember alloc] initWithName:@"Joe"
                                           phoneNumber:@"8885552345"
                                             birthCity:@"Someplace"
                                            birthState:@"SS"
                                          favoriteBand:@"Someband"
                                                 photo:[UIImage imageNamed:@"joe"]];
    
    TeamMember *al = [[TeamMember alloc] initWithName:@"Al"
                                           phoneNumber:@"5551212"
                                             birthCity:@"Detroit"
                                            birthState:@"Michigan"
                                          favoriteBand:@"The Beatles"
                                                 photo:[UIImage imageNamed:@"al"]];
    
    TeamMember *chris = [[TeamMember alloc] initWithName:@"Chris"
                                           phoneNumber:@"0764539765"
                                             birthCity:@"WeirdCity"
                                            birthState:@"WS"
                                          favoriteBand:@"Weirdband"
                                                 photo:[UIImage imageNamed:@"chris"]];
    
    TeamMember *avi = [[TeamMember alloc] initWithName:@"Avi"
                                           phoneNumber:@"4567891234"
                                             birthCity:@"IDK"
                                            birthState:@"DK"
                                          favoriteBand:@"IDKFA"
                                                 photo:[UIImage imageNamed:@"avi"]];
    
    self.teamDirectory = [[NSMutableDictionary alloc] init];
    self.teamDirectory[@"joe"] = joe;
    self.teamDirectory[@"al"] = al;
    self.teamDirectory[@"chris"] = chris;
    self.teamDirectory[@"avi"] = avi;
}

- (void)updateLabels {
    self.teamMember = self.teamDirectory[self.passedTeamMemberName];
    self.name.text = self.teamMember.name;
    self.phoneNumber.text = self.teamMember.phoneNumber;
    self.birthPlace.text = [self generateBirthPlaceForPassedName:self.passedTeamMemberName];
    self.favoriteBand.text = self.teamMember.favoriteBand;
    self.photo.image = self.teamMember.photo;
}

- (NSString *)generateBirthPlaceForPassedName:(NSString *)passedName {
    return [NSString stringWithFormat:@"%@, %@", [self.teamDirectory[passedName] birthCity], [self.teamDirectory[passedName] birthState]];
}


@end
