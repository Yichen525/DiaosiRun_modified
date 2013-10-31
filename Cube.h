//
//  Cube.h
//  DiaosiRun
//
//  Created by Yu Yichen on 5/28/13.
//  Copyright (c) 2013 Yu Yichen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <OpenGLES/ES1/gl.h>

/*******************************************************************************
 * @class          Cube
 * @abstract        draw the cube with the specified size and color
 * @description     draw the cube with the specified size and color
 ******************************************************************************/

@interface Cube : NSObject
{
    @private
    GLfloat   *vertexArray;
    GLubyte   *colorArray;
    GLubyte   *fanArray1;
    GLubyte   *fanArray2;
    
   
}


-(bool) execute;
-(id) init:(GLfloat) x y:(GLfloat) y z:(GLfloat) z red:(GLubyte)red green:(GLubyte)green blue:(GLubyte)blue alpha:(GLubyte)alpha;
@end
