//
//  Ball.m
//  DiaosiRun
//
//  Created by Yu Yichen on 5/28/13.
//  Copyright (c) 2013 Yu Yichen. All rights reserved.
//

#import "Ball.h"

@implementation Ball


-(id)init:(GLint)stacks slices:(GLint)slices radius:(GLfloat)radius squash:(GLfloat)squash red:(GLubyte)red green:(GLubyte)green blue:(GLubyte)blue alpha:(GLubyte)alpha
{
    
    
    m_Scale=radius;
    m_Squash=squash;
    

    
    if (self=[super init])
    {
        m_Stacks=stacks;
        m_Slices=slices;
        m_VertexData=nil;
        
        GLfloat *vPtr=m_VertexData=(GLfloat*)malloc(sizeof(GLfloat)*3*((m_Slices*2)*(m_Stacks)));
        
        GLubyte *cPtr=m_ColorData=(GLubyte*)malloc(sizeof(GLubyte)*4*((m_Slices*2)*(m_Stacks)));
        
        unsigned int phiIdx, thetaIdx;
        
        for(phiIdx=0; phiIdx<m_Stacks;phiIdx++)
        {
            
            float phi0=M_PI*((float)(phiIdx+0)*(1.0/(float)(m_Stacks))-0.5);
            
            float phi1=M_PI*((float)(phiIdx+1)*(1.0/(float)(m_Stacks))-0.5);
            
            float cosPhi0=cos(phi0);
            float sinPhi0=sin(phi0);
            float cosPhi1=cos(phi1);
            float sinPhi1=sin(phi1);
            
            float cosTheta, sinTheta;
            
            for(thetaIdx=0;thetaIdx<m_Slices;thetaIdx++)
            {
                
                float theta=2.0*M_PI*((float)thetaIdx)*(1.0/(float)(m_Slices-1));
                
                cosTheta=cos(theta);
                sinTheta=sin(theta);
                
                vPtr[0]=m_Scale*cosPhi0*cosTheta;
                vPtr[1]=m_Scale*sinPhi0*m_Squash;
                vPtr[2]=m_Scale*cosPhi0*sinTheta;
                
                vPtr[3]=m_Scale*cosPhi1*cosTheta;
                vPtr[4]=m_Scale*sinPhi1*m_Squash;
                vPtr[5]=m_Scale*cosPhi1*sinTheta;
                
                cPtr[0]=red;
                cPtr[1]=green;
                cPtr[2]=blue;
                cPtr[3]=alpha;
                cPtr[4]=red;
                cPtr[5]=green;
                cPtr[6]=blue;
                cPtr[7]=alpha;
                
                cPtr+=2*4;
                vPtr+=2*3;
            }

            
        }
    }
    
    
    return self;
}


-(bool)execute
{
    glMatrixMode(GL_MODELVIEW);
    glEnable(GL_CULL_FACE);
    glCullFace(GL_BACK);
    
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_COLOR_ARRAY);
    
    glVertexPointer(3, GL_FLOAT, 0, m_VertexData);
    
    glColorPointer(4, GL_UNSIGNED_BYTE, 0, m_ColorData);
    
    glDrawArrays(GL_TRIANGLE_STRIP, 0, (m_Slices)*2*(m_Stacks));
    
    return true;
}


@end
