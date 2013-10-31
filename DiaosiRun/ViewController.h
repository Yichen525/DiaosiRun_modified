//
//  ViewController.h
//  DiaosiRun
//
//  Created by Yu Yichen on 5/28/13.
//  Copyright (c) 2013 Yu Yichen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GLKit/GLKit.h>
#import <CoreMotion/CoreMotion.h>

//constants to be used in the .m file 
static const GLfloat BLOCK_SIZE=60;
static const GLfloat BLOCK_WIDTH=8;
static const GLfloat BLOCK_HEIGHT=2;
static const GLint ARRAY_LENGTH=(GLint)BLOCK_SIZE;
static const GLint ANGER_MAX=300;
static const GLint LIVE_MAX=5;
static const GLfloat OFFSET=20;
static const GLfloat HALF_LENGTH=(BLOCK_SIZE+BLOCK_WIDTH)/2;
static const GLfloat HALF_OFFSET=HALF_LENGTH/2-(BLOCK_SIZE/2-OFFSET);
static const GLfloat Y_OFFSET=-8;
static const GLfloat HORI_OFFSET=(HALF_LENGTH-BLOCK_WIDTH)/2;  //the horizontal part


@interface ViewController : GLKViewController

@property CMMotionManager *motionManager;
@property CMAttitude *attitude;
- (IBAction)restart:(UIButton *)sender;
- (IBAction)pause:(UIButton *)sender;
- (IBAction)swipe:(UISwipeGestureRecognizer *)sender;
- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *liveLabel;
@property (weak, nonatomic) IBOutlet UILabel *angerLabel;



@end
