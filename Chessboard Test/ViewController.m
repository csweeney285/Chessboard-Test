//
//  ViewController.m
//  Chessboard Test
//
//  Created by Conor Sweeney on 11/28/15.
//  Copyright © 2015 Conor Sweeney. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)clearChessboard{
    for (UIView *subview in [self.view subviews])
    {
        if([self.view isKindOfClass:[UIView class]])
            
        {
            
            if (subview.tag == 100)
            {
                [subview removeFromSuperview];
            }
        }
        
    }
}


-(void)buildChessboard{
    for (int i = 0; i <rows; i++) {
        for (int x = 0; x <columns; x++) {
            myBox  = [[UIView alloc] initWithFrame:CGRectMake(0+(25*i), 200 + (25*x), 25, 25)];
            if ((i%2)==0 && (x%2)==0) {
                myBox.backgroundColor = [UIColor redColor];
            }
            else if((i%2)!= 0 && (x%2)!=0){
                myBox.backgroundColor = [UIColor redColor];
            }
            else if((i%2)== 0 && (x%2)!=0)
            {
                myBox.backgroundColor = [UIColor blackColor];
            }
            else if((i%2)!= 0 && (x%2)==0)
            {
                myBox.backgroundColor = [UIColor blackColor];
            }
            [myBox setTag:100];
            [self.view addSubview:myBox];
        }
    }
}


- (IBAction)createChessboard:(id)sender {
    [self clearChessboard];
    NSString *rowString = self.rowTextField.text;
    NSString *columnString = self.columnTextField.text;
    rows = [rowString longLongValue];
    columns = [columnString longLongValue];
    if (rows > 0 || columns > 0) {
        [self buildChessboard];
    }        
}

- (IBAction)resetChessBoard:(id)sender {
    [self clearChessboard];
}
@end
