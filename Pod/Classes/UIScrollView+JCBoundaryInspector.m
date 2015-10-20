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
    return self.contentOffset.y <= (self.topContentOffset - offset);
}

- (BOOL)isAtBottomWithOffset:(CGFloat)offset;{
    return self.contentOffset.y >= (self.bottomContentOffset + offset);
}

- (BOOL)isAtLeftWithOffset:(CGFloat)offset;{
    return self.contentOffset.x <= (self.leftContentOffset - offset);
}

- (BOOL)isAtRightWithOffset:(CGFloat)offset;{
    return self.contentOffset.x >= (self.rightContentOffset + offset);
}

- (CGFloat)topContentOffset;{
    return (- self.contentInset.top);
}

- (CGFloat)bottomContentOffset;{
    return self.contentSize.height + self.contentInset.bottom - self.frame.size.height;
}

- (CGFloat)leftContentOffset;{
    return (- self.contentInset.left);
}

- (CGFloat)rightContentOffset;{
    return self.contentSize.width + self.contentInset.right - self.frame.size.width;
}


@end
