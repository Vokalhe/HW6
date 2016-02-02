//
//  VCViewController.m
//  Homework6
//
//  Created by Admin on 02.02.16.
//  Copyright © 2016 Ehlakov Victor. All rights reserved.
//

#import "VCViewController.h"
#import "UIColor+RandomColor.h"
@interface VCViewController ()

@end

@implementation VCViewController

-(void) newColor{
    [self.view setBackgroundColor:[UIColor_RandomColor newRandomColor]];
}

-(void) dropToRoot{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

-(void) newView{
    //Create new VC
    VCViewController *newView = [VCViewController new];
    newView.view = [[UIView alloc]initWithFrame:self.view.frame];
    [newView.view setBackgroundColor:[UIColor_RandomColor newRandomColor]];
    newView.title = [[NSString alloc] initWithFormat: @"View %lu", self.navigationController.viewControllers.count];
    
    UIBarButtonItem *rightNewView = [[UIBarButtonItem alloc] initWithTitle:@"RightNewView"
    style:UIBarButtonItemStylePlain target:self action:@selector(newView)];
    
    newView.navigationItem.rightBarButtonItem = rightNewView;
    
    UIBarButtonItem *newColor = [[UIBarButtonItem alloc] initWithTitle:@"NewColor" style:UIBarButtonItemStyleDone
    target:newView action:@selector(newColor)];
    
    UIBarButtonItem *drop = [[UIBarButtonItem alloc] initWithTitle:@"Drop" style:UIBarButtonItemStylePlain
    target:newView action:@selector(dropToRoot)];
    
    [newView setToolbarItems:@[drop, newColor] animated:YES];
    
    
    [self.navigationController pushViewController:newView animated:YES];
}
- (void) willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}
- (void) didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void) willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
