//
//  YRViewController.m
//  StoryboardDemo
//
//  Created by YANGRui on 14-7-23.
//  Copyright (c) 2014年 YANGReal. All rights reserved.
//

#import "YRViewController.h"
#import "YRSecondViewController.h"
@interface YRViewController ()<YRSecondViewControllerDelegate>
@property (weak , nonatomic) IBOutlet UITableView *tableView;

- (IBAction)goNextScene:(id)sender;

@end

@implementation YRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Root";
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)goNextScene:(id)sender
{
//    UIStoryboardSegue *segue = [UIStoryboardSegue segueWithIdentifier:@"second" source:self destination:[[YRSecondViewController alloc] init] performHandler:^{
//        
//        
//    }];
//    [segue perform];
//    YRSecondViewController *secVC = [[YRSecondViewController alloc] initWithNibName:@"YRSecondViewController" bundle:nil];
//    secVC.text = @"hehe";
//    secVC.delegate = self;
//    [self.navigationController pushViewController:secVC animated:YES];
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    YRSecondViewController *secondVC = [sb instantiateViewControllerWithIdentifier:@"Second"];
    secondVC.delegate = self;
    secondVC.text = @"test";
    [self.navigationController pushViewController:secondVC animated:YES];

    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"sender = %@",sender);
    NSLog(@"identifier = %@",segue.identifier);
    NSLog(@"sourceViewController = %@",segue.sourceViewController);
    NSLog(@"destinationViewController = %@",segue.destinationViewController);
    YRSecondViewController *vc = segue.destinationViewController;
    vc.text = @"hello world";
    vc.delegate = self;
   

}

- (void)backFromYRSecondViewController:(YRSecondViewController *)vc
{
    self.title = vc.text;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
