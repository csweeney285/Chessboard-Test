//
//  ViewController.h
//  Chessboard Test
//
//  Created by Conor Sweeney on 11/28/15.
//  Copyright © 2015 Conor Sweeney. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    long rows;
    long columns;
    UIView *myBox;
}

@property (weak, nonatomic) IBOutlet UITextField *rowTextField;
@property (weak, nonatomic) IBOutlet UITextField *columnTextField;


-(void)buildChessboard;

- (IBAction)createChessboard:(id)sender;
- (IBAction)resetChessBoard:(id)sender;

@end

