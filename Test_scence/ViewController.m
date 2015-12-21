//
//  ViewController.m
//  Test_scence
//
//  Created by luofei on 12/21/15.
//  Copyright © 2015 luofei. All rights reserved.
//

#import "ViewController.h"
#import <SceneKit/SceneKit.h>
@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)initData {
    // An empty scene
//    SCNScene *scene = [SCNScene scene];
//    self.scene = scene;
    NSString *path = [[NSBundle mainBundle] pathForResource:@"model" ofType:@"obj"];
    SCNView *myview = (SCNView *)self.view;
    myview.scene = [SCNScene sceneNamed:@"model.obj"];
    myview.allowsCameraControl = YES;
    
    myview.autoenablesDefaultLighting = YES;
    myview.backgroundColor = [UIColor lightGrayColor];
    
}
@end
