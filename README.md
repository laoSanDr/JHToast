# JHToast
简洁轻便提示工具,一行代码既可完成提示信息显示 - 支持自定义显示位置及停留时间

## 使用方法如下

*
### 1.普通调用

 ```
 /*
 您只需要调用一行代码,既可完成提示信息显示
 */
 
/*
 中间显示
 */
 [JHToast showCenterWithText:@"您要显示的提示信息"];
 
 /*
 上方显示
 */
 [JHToast showTopWithText:@"您要显示的提示信息"];
 
 /*
 下方显示
 */
 [JHToast showBottomWithText:@"您要显示的提示信息"];

```

### 2.自定义Toast停留时间+到屏幕上端/下端距离(见如下方法)
***

```
#pragma mark-中间显示

/**
*  中间显示+自定义停留时间
*
*  @param text     内容
*  @param duration 停留时间
*/
+ (void)showCenterWithText:(NSString *)text duration:(CGFloat)duration;

#pragma mark-上方显示

/**
*  上方显示+自定义停留时间
*
*  @param text     内容
*  @param duration 停留时间
*/
+ (void)showTopWithText:(NSString *)text duration:(CGFloat)duration;

/**
*  上方显示+自定义距顶端距离
*
*  @param text      内容
*  @param topOffset 到顶端距离
*/
+ (void)showTopWithText:(NSString *)text topOffset:(CGFloat)topOffset;

/**
*  上方显示+自定义距顶端距离+自定义停留时间
*
*  @param text      内容
*  @param topOffset 到顶端距离
*  @param duration  停留时间
*/
+ (void)showTopWithText:(NSString *)text topOffset:(CGFloat)topOffset duration:(CGFloat)duration;

#pragma mark-下方显示

/**
*  下方显示+自定义停留时间
*
*  @param text     内容
*  @param duration 停留时间
*/
+ (void)showBottomWithText:(NSString *)text duration:(CGFloat)duration;

/**
*  下方显示+自定义距底端距离
*
*  @param text         内容
*  @param bottomOffset 距底端距离
*/
+ (void)showBottomWithText:(NSString *)text bottomOffset:(CGFloat)bottomOffset;

/**
*  下方显示+自定义距底端距离+自定义停留时间
*
*  @param text         内容
*  @param bottomOffset 距底端距离
*  @param duration     停留时间
*/
+ (void)showBottomWithText:(NSString *)text bottomOffset:(CGFloat)bottomOffset duration:(CGFloat)duration;

```
