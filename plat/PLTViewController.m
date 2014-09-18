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
@property (weak, nonatomic) IBOutlet UITextField *railwaySearchField;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;

@property (weak, nonatomic) IBOutlet UIView *pickerAreaView;

@property CGPoint defaultPickerAreaOrigin;

@end

@implementation PLTViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    self.searchButton.layer.borderColor = [UIColor colorWithRGBHexString:@"358DF0"].CGColor;
    
    self.railwaySearchField.delegate = self;
    
    CGRect pickerFrame = self.pickerAreaView.frame;
    self.defaultPickerAreaOrigin = pickerFrame.origin;
    
    [self hidePicker];
}

#pragma mark - Private
- (void)showPicker {
    [UIView animateWithDuration:0.3 animations:^{
        CGRect newFrame = self.pickerAreaView.frame;
        newFrame.origin = self.defaultPickerAreaOrigin;
        self.pickerAreaView.frame = newFrame;
    }];
}

- (void)hidePicker {
    [UIView animateWithDuration:0.3 animations:^{
        CGRect newFrame = self.pickerAreaView.frame;
        newFrame.origin = CGPointMake(0, [[UIScreen mainScreen] bounds].size.height);
        self.pickerAreaView.frame = newFrame;
    }];
}

#pragma mark - UIResponder
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    if (![event touchesForView:self.railwaySearchField]) {
        [self hidePicker];
    }
}

#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    // Show UIPickerView
    [self showPicker];
    return NO;
}

//- (void)textFieldDidEndEditing:(UITextField *)textField {
//    NSLog(@"");
//}

@end
