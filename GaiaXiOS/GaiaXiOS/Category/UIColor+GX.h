//
//  UIColor+GX.h
//  GaiaXiOS
//
//  Copyright (c) 2021, Alibaba Group Holding Limited.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (GX)

//支持16进制，RGB/RGBA，DesignToken，Color
+ (UIColor *)gx_colorWithString:(NSString *)string;

// 通过16进制字符串生成颜色
+ (UIColor *)gx_colorWithHexString:(NSString *)hexString;

// 通过根据url生成颜色
+ (void)gx_colorFromUrl:(NSString *)url completion:(void(^)(UIColor *color))completion;

@end

NS_ASSUME_NONNULL_END
