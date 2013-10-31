//
//  Ball.h
//  DiaosiRun
//
//  Created by Yu Yichen on 5/28/13.
//  Copyright (c) 2013 Yu Yichen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <OpenGLES/ES1/gl.h>

/*******************************************************************************
 * @class          Ball
 * @abstract        draw the sphere with the specified size and color
 * @description     draw the sphere with the specified size and color
 ******************************************************************************/


@interface Ball : NSObject

{
@private
    GLfloat   *m_VertexData;
    GLubyte   *m_ColorData;
    
    GLint   m_Stacks,m_Slices;
    GLfloat  m_Scale;
    GLfloat   m_Squash;
}


-(bool) execute;
-(id) init:(GLint) stacks slices:(GLint) slices radius:(GLfloat) radius squash:(GLfloat) squash red:(GLubyte)red green:(GLubyte)green blue:(GLubyte)blue alpha:(GLubyte)alpha;

@end
