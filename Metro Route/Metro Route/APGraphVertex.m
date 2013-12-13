//
//  APGraphVertex.m
//
// Created by Alberto Pasca on 08/11/13.
// Copyright (c) 2013 albertopasca.it
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//


#import "APGraphVertex.h"
#import "APGraphPoint.h"
#import "APGraphPointGeo.h"
#import "APGraphPointPixel.h"


@implementation APGraphVertex


// +---------------------------------------------------------------------------+
#pragma mark - Initialization
// +---------------------------------------------------------------------------+


- (id)init
{
	self = [super init];
	if (self) {
		_point = [[APGraphPoint alloc] init];
	}
	return self;
}


// +---------------------------------------------------------------------------+
#pragma mark - Class methods
// +---------------------------------------------------------------------------+


+ (APGraphVertex *)vertexWithIdentifier:(NSString *)anIdentifier
{
	APGraphVertex *vertex	= [[APGraphVertex alloc] init];
	vertex.point.identifier = anIdentifier;
	
	return vertex;
}

+ (APGraphVertex *)vertexWithIdentifier:(NSString *)anIdentifier title:(NSString*)title
{
	APGraphVertex *vertex		 = [[APGraphVertex alloc] init];
	vertex.point.identifier = anIdentifier;
	vertex.point.title      = title;
	
	return vertex;
}

+ (APGraphVertex *)vertexWithPoint:(APGraphPoint*)point
{
	APGraphVertex *vertex = [[APGraphVertex alloc] init];
	vertex.point = point;
	
	return vertex;
}


@end

