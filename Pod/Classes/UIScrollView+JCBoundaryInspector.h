//
//  UIScrollView+JCBoundaryInspector.h
//  Pods
//
//  Created by Cerko on 15/10/20.
//
//

#import <UIKit/UIKit.h>

@interface UIScrollView (JCBoundaryInspector)

#pragma mark - justice the edges
@property (nonatomic, readonly, getter=isAtTop) BOOL atTop;
@property (nonatomic, readonly, getter=isAtBottom) BOOL atBottom;
@property (nonatomic, readonly, getter=isAtLeft) BOOL atLeft;
@property (nonatomic, readonly, getter=isAtRight) BOOL atRight;

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

#pragma mark - offsets
@property (nonatomic, readonly) CGFloat topContentOffset;
@property (nonatomic, readonly) CGFloat bottomContentOffset;
@property (nonatomic, readonly) CGFloat leftContentOffset;
@property (nonatomic, readonly) CGFloat rightContentOffset;

@end
