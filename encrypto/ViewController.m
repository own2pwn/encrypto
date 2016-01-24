//
//  ViewController.m
//  encrypto
//
//  Created by master on 2016/1/23.
//  Copyright © 2016年 master. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSVisualEffectView *view = (NSVisualEffectView*)self.view;
    view.state = NSVisualEffectStateActive;
    
#pragma mark - 改變 addBtn 顏色
    CALayer *layer = [CALayer layer];
    layer.backgroundColor = [NSColor colorWithRed:254/255. green:202/255. blue:60/255. alpha:1.0].CGColor;
    _addBtn.wantsLayer = YES;
    _addBtn.layer = layer;
 
#pragma mark - addBtn 動畫
    NSTrackingArea* trackingArea = [[NSTrackingArea alloc]
                                    initWithRect:[_addBtn bounds]
                                    options:NSTrackingMouseEnteredAndExited | NSTrackingActiveAlways
                                    owner:_addBtn userInfo:nil];
    [_addBtn addTrackingArea:trackingArea];
    
    
    // 加上加號
//    _addBtn.bounds = NSMakeRect(0, -20, 300, 100);
    CALayer *plus1 = [CALayer layer];
    plus1.backgroundColor = [NSColor blackColor].CGColor;
    plus1.frame = NSMakeRect(150, 20, 1.8, 60);
    [_addBtn.layer addSublayer:plus1];
    
    CALayer *plus2 = [CALayer layer];
    plus2.backgroundColor = [NSColor blackColor].CGColor;
    plus2.frame = NSMakeRect(125, 70, 30, 1.8);
    [_addBtn.layer addSublayer:plus2];
    plus2.transform = CATransform3DMakeRotation(45 / 180.0 * M_PI, 0.0, 0.0, 1.0);

    
    CALayer *plus3 = [CALayer layer];
    plus3.backgroundColor = [NSColor blackColor].CGColor;
    plus3.frame = NSMakeRect(145+1.4, 70, 30, 1.8);
    [_addBtn.layer addSublayer:plus3];
    plus3.transform = CATransform3DMakeRotation(135 / 180.0 * M_PI, 0.0, 0.0, 1.0);

    
    
    
    
    
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
    

    // Update the view, if already loaded.
}


- (void)mouseEntered:(NSEvent *)theEvent{
    NSLog(@"entered");
    
    
}

- (IBAction)clickAddBtn:(id)sender {
    NSOpenPanel *panel = [NSOpenPanel openPanel];
    [panel setCanChooseFiles:YES];
    [panel setCanChooseDirectories:NO];
    [panel setAllowsMultipleSelection:NO];
    panel.animationBehavior = NSWindowAnimationBehaviorDocumentWindow;
    [panel setAllowedFileTypes:[NSArray arrayWithObject:@"txt"]];
    [panel beginSheetModalForWindow: [[NSApplication sharedApplication] mainWindow] completionHandler:^(NSInteger result){
        if (result == NSFileHandlingPanelOKButton) {
            for (NSURL *fileURL in [panel URLs]) {
                // Do what you want with fileURL
                // ...
            }
        }
        
    }];}

@end
