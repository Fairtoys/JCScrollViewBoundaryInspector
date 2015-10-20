//
//  UIScrollView+JCBoundaryInspector.m
//  Pods
//
//  Created by Cerko on 15/10/20.
//
//

#import "UIScrollView+JCBoundaryInspector.h"

@implementation UIScrollView (JCBoundaryInspector)


- (BOOL)isAtTop;{
    return [self isAtTopWithOffset:0];
}
- (BOOL)isAtBottom;{
    return [self isAtBottomWithOffset:0];
}
- (BOOL)isAtLeft;{
    return [self isAtLeftWithOffset:0];
}
- (BOOL)isAtRight;{
    return [self isAtRightWithOffset:0];
}

- (BOOL)isAtTopWithOffset:(CGFloat)offset;{
    return self.contentOffset.y <= (- self.contentInset.top - offset);
}

- (BOOL)isAtBottomWithOffset:(CGFloat)offset;{
    return (self.contentOffset.y + self.frame.size.height) >= (self.contentSize.height + self.contentInset.bottom + offset);
}
- (BOOL)isAtLeftWithOffset:(CGFloat)offset;{
    return self.contentOffset.x <= (- self.contentInset.left - offset);
}
- (BOOL)isAtRightWithOffset:(CGFloat)offset;{
    return (self.contentOffset.x + self.frame.size.width) >= (self.contentSize.width + self.contentInset.right + offset);
    
}


@end
