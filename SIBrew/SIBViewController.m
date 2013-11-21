//
//  SIBViewController.m
//  SIBrew
//
//  Created by David Ohayon on 11/20/13.
//  Copyright (c) 2013 Startup Institute. All rights reserved.
//

#import "SIBViewController.h"
#import "SIBBeer.h"
#import "AFNetworking.h"

static NSString *BrewAPIKey = @"0534910ca4e5d83ead2ee8b22cd60916";
static NSString *BrewAPIBaseURL = @"http://api.brewerydb.com/v2/";

@interface SIBViewController () {
    SIBBeer *_beer;
}

@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UILabel *helloLabel;
- (IBAction)buttonTapped:(id)sender;

@end

@implementation SIBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.helloLabel.text = @"";
    [self.textField becomeFirstResponder];
    
    _beer = [[SIBBeer alloc] init];
    _beer.name = @"Some Beer";
    _beer.organic = YES;
    _beer.fullness = @"full";\
//    _beer.delegate = self;
    NSLog(@"\n%@", _beer);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTapped:(id)sender {
    [_beer takeNumberOfSips:self.textField.text.integerValue];
    self.helloLabel.text = _beer.fullness;
}

//- (void)beerFullnessDidChange {
//    self.helloLabel.text = _beer.fullness;
//}

@end
