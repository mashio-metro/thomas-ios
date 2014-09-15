//
//  PLTViewController.m
//  plat
//
//  Copyright (c) 2014年 plat. All rights reserved.
//

#import "PLTViewController.h"
#import "UIColor+Additions.h"

@interface PLTViewController ()

@property (weak, nonatomic) IBOutlet UIPickerView *railwayPickerView;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;

@end

@implementation PLTViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.searchButton.layer.borderColor = [UIColor colorWithRGBHexString:@"358DF0"].CGColor;
}

@end
