//
//  YRSecondViewController.m
//  StoryboardDemo
//
//  Created by YANGRui on 14-7-23.
//  Copyright (c) 2014年 YANGReal. All rights reserved.
//

#import "YRSecondViewController.h"

@interface YRSecondViewController ()

@property (weak , nonatomic) IBOutlet UITextField *textField;

- (IBAction)back:(id)sender;

@end

@implementation YRSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
     self.title = @"Second";
    // Do any additional setup after loading the view.
    self.textField.text = _text;
}



- (IBAction)back:(id)sender
{
    self.text = self.textField.text;
    [self.delegate backFromYRSecondViewController:self];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [_textField resignFirstResponder];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
