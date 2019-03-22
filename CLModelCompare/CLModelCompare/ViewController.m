//
//  ViewController.m
//  CLModelCompare
//
//  Created by 周冯婷 on 2019/3/21.
//  Copyright © 2019年 周冯婷. All rights reserved.
//

#import "ViewController.h"
#import "CLInteractor.h"
#import "MJExtension.h"

@interface ViewController ()
@property (nonatomic, strong) CLInteractor *interactor;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   _interactor =  [CLInteractor new];
    [_interactor startTest];
    
    // Do any additional setup after loading the view, typically from a nib.
}


@end
