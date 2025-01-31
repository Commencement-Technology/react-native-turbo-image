#import <React/RCTViewManager.h>

@interface RCT_EXTERN_MODULE(TurboImageViewManager, RCTViewManager)

#pragma mark - properties

RCT_EXPORT_VIEW_PROPERTY(src, NSString)

RCT_EXPORT_VIEW_PROPERTY(cachePolicy, NSString)

RCT_EXPORT_VIEW_PROPERTY(resizeMode, NSString)

RCT_EXPORT_VIEW_PROPERTY(indicator, NSDictionary)

RCT_EXPORT_VIEW_PROPERTY(placeholder, NSDictionary)

RCT_EXPORT_VIEW_PROPERTY(showPlaceholderOnFailure, BOOL)

RCT_EXPORT_VIEW_PROPERTY(fadeDuration, NSNumber)

RCT_EXPORT_VIEW_PROPERTY(borderRadius, NSNumber)

RCT_EXPORT_VIEW_PROPERTY(rounded, BOOL)

RCT_EXPORT_VIEW_PROPERTY(blur, NSNumber)

RCT_EXPORT_VIEW_PROPERTY(monochrome, UIColor *)

RCT_EXPORT_VIEW_PROPERTY(resize, NSNumber)

RCT_EXPORT_VIEW_PROPERTY(tint, UIColor *)

RCT_EXPORT_VIEW_PROPERTY(isSVG, BOOL)

RCT_EXPORT_VIEW_PROPERTY(isGif, BOOL)

RCT_EXPORT_VIEW_PROPERTY(onStart, RCTDirectEventBlock)

RCT_EXPORT_VIEW_PROPERTY(onSuccess, RCTDirectEventBlock)

RCT_EXPORT_VIEW_PROPERTY(onFailure, RCTDirectEventBlock)

RCT_EXPORT_VIEW_PROPERTY(onCompletion, RCTDirectEventBlock)

#pragma mark - methods

RCT_EXTERN_METHOD(prefetch:(NSArray *)sources
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)

RCT_EXTERN_METHOD(clearMemoryCache:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)

RCT_EXTERN_METHOD(clearDiskCache:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)

@end

