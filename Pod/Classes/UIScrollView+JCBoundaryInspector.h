//
//  UIScrollView+JCBoundaryInspector.h
//  Pods
//
//  Created by Cerko on 15/10/20.
//
//

#import <UIKit/UIKit.h>

@interface UIScrollView (JCBoundaryInspector)

/**
 *  ScrollView is at top
 *
 *  @return YES if the scrollview is at top
 */
- (BOOL)isAtTop;

/**
 *  ScrollView is at bottom
 *
 *  @return YES if the scrollView is at bototom
 */
- (BOOL)isAtBottom;
/**
 *  ScrollView is at left
 *
 *  @return YES if the scrollView is at left
 */
- (BOOL)isAtLeft;
/**
 *  ScrollView is at right
 *
 *  @return YES if the scrollview is at right
 */
- (BOOL)isAtRight;


/**
 *  ScrollView is at top offset by offset
 *
 *  @param offset the offset between top
 *
 *  @return YES if the scrollview is at the position offset to top
 */
- (BOOL)isAtTopWithOffset:(CGFloat)offset;

/**
 *  ScrollView is at bottom offset by offset
 *
 *  @param offset the offset between bottom
 *
 *  @return YES if the scrollview is at the position offset to bottom
 */
- (BOOL)isAtBottomWithOffset:(CGFloat)offset;

/**
 *  ScrollView is at left offset by left
 *
 *  @param offset the offset between left
 *
 *  @return YES if the scrollview is at the position offset to left
 */
- (BOOL)isAtLeftWithOffset:(CGFloat)offset;

/**
 *  ScrollView is at right offset by right
 *
 *  @param offset the offset between right
 *
 *  @return YES if the scrollview is at the position offset to right
 */
- (BOOL)isAtRightWithOffset:(CGFloat)offset;

@end
