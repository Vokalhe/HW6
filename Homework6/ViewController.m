//
//  ViewController.m
//  Homework6
//
//  Created by Admin on 02.02.16.
//  Copyright © 2016 Ehlakov Victor. All rights reserved.
//

#import "ViewController.h"
#import "VCViewController.h"
@interface ViewController ()

@end

@implementation ViewController
-(void)viewDidAppear:(BOOL)animated{
    //Create first VC
    VCViewController *first = [VCViewController new];
    first.view = [[UIView alloc]initWithFrame:self.view.frame];
    [first.view setBackgroundColor:[UIColor grayColor]];
    first.title = @"First";
    
    UIBarButtonItem *rightFirst = [[UIBarButtonItem alloc] initWithTitle:@"RightFirst" style:UIBarButtonItemStylePlain
    target:first action:@selector(newView)];
    first.navigationItem.rightBarButtonItem = rightFirst;
   
    //Create UINavigationController with root vc
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:first];
    
    //Create present UINavigationController
    [self presentViewController:nav animated:YES completion:nil];
    
    [nav setToolbarHidden:NO animated:YES];
    //Create first push second controller
    
    UIBarButtonItem *newColor = [[UIBarButtonItem alloc] initWithTitle:@"NewColor"
    style: UIBarButtonItemStylePlain target:first action:@selector(newColor)];
    
    UIBarButtonItem *drop = [[UIBarButtonItem alloc] initWithTitle:@"Drop"
    style: UIBarButtonItemStylePlain target:first action:@selector(dropToRoot)];
    
    [first setToolbarItems:@[drop, newColor] animated:YES];
        
    //Create log controllers array
    NSLog(@"%@", nav.viewControllers);
}
- (void)viewDidLoad {
   [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
