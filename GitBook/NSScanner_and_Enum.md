# <center>NSScanner and Enum</center>

## NSScanner

### 属性

```
@property (readonly, copy) NSString *string;
@property NSUInteger scanLocation;
@property (nullable, copy) NSCharacterSet *charactersToBeSkipped;
@property BOOL caseSensitive;
@property (nullable, retain) id locale;
@property (getter=isAtEnd, readonly) BOOL atEnd;
```

- ```string```就是初始话时候输入的目标字符串，而且是只读的
- ```scanLocation```是scaner当前的扫描位置，初始化完成后默认是0，这个值会随着扫描方法的调用而变化（往前或不变）
- ```chatactersToBeSkipper```是想要跳过的字符串集合，当scanner扫描这个集合中的元素时候，它就会跳过去。例如有个字符串是@“111A2222”，如果要把这个字符串中的数字给扫描出来，那个把A作为chatactersToBeSkipper的集合，那么扫描会跳过A，最后会得出111和2222这两个数字
- ```caseSensitive``` 是否大小写敏感，YES的话scanner会区分大小写，NO是不区分，默认是NO
- ```locale``` 本地化，是用在小数点分隔符上。一般都不用指定
- ```atEnd``` YES代表整个字符串已经扫描完毕，NO则表示还没扫完。如果整个字符串都是由chatactersToBeSkipper的元素组成，则返回YES

### 部分方法

```
- (BOOL)scanString:(NSString *)string intoString:(NSString * _Nullable * _Nullable)result;
- (BOOL)scanCharactersFromSet:(NSCharacterSet *)set intoString:(NSString * _Nullable * _Nullable)result;

```

scan string or characterSet

```
- (BOOL)scanUpToString:(NSString *)string intoString:(NSString * _Nullable * _Nullable)result;
- (BOOL)scanUpToCharactersFromSet:(NSCharacterSet *)set intoString:(NSString * _Nullable * _Nullable)result;

```

scan until  encounter string or CharacterSet

***


## enum

### NS_ENUM

 ```NS_ENUM``` 通常用在单一、不可组合的状态，例如状态栏的样式

example:

```
typedef NS_ENUM(NSInteger, UIStatusBarStyle) {
    UIStatusBarStyleDefault                                     = 0, // Dark content, for use on light backgrounds
    UIStatusBarStyleLightContent     NS_ENUM_AVAILABLE_IOS(7_0) = 1, // Light content, for use on dark backgrounds
    
    UIStatusBarStyleBlackTranslucent NS_ENUM_DEPRECATED_IOS(2_0, 7_0, "Use UIStatusBarStyleLightContent") = 1,
    UIStatusBarStyleBlackOpaque      NS_ENUM_DEPRECATED_IOS(2_0, 7_0, "Use UIStatusBarStyleLightContent") = 2,
} __TVOS_PROHIBITED;

```


###   NS_OPTIONS

而 ```NS_OPTIONS``` 则用在非单一、可组合的状态，例如屏幕方向

example:



```
typedef NS_OPTIONS(NSUInteger, UISwipeGestureRecognizerDirection) {
    UISwipeGestureRecognizerDirectionNone = 0,  //值为0
    UISwipeGestureRecognizerDirectionRight = 1 << 0,  //值为2的0次方
    UISwipeGestureRecognizerDirectionLeft = 1 << 1,  //值为2的1次方
    UISwipeGestureRecognizerDirectionUp = 1 << 2,  //值为2的2次方
    UISwipeGestureRecognizerDirectionDown = 1 << 3  //值为2的3次方
};
```

### 宏定义

 ```
#if (__cplusplus)
#define CF_OPTIONS(_type, _name) _type _name; enum __CF_OPTIONS_ATTRIBUTES : _type
#else
#define CF_OPTIONS(_type, _name) enum __CF_OPTIONS_ATTRIBUTES _name : _type _name; enum _name : _type
#endif
#else
#define __CF_NAMED_ENUM(_type, _name) _type _name; enum
#define __CF_ANON_ENUM(_type) enum
#define CF_CLOSED_ENUM(_type, _name) _type _name; enum
#define CF_OPTIONS(_type, _name) _type _name; enum
#endif
 ```

当```CF_ENUM```只有一个入参的时候，等同于```__CF_ANON_ENUM(__VA_ARGS__)```.有两个入参的时候，则等同于```__CF_NAMED_ENUM(__VA_ARGS__)``` .

可以发现，```CF_OPTIONS```和```__CF_NAMED_ENUM```两者在```__cplusplus```为NO的时候定义是一样的，为YES，定义才不一样，原因是：

```
 在用或运算操作两个枚举值时，C++认为运算结果的数据类型应该是枚举的底层数据类型，也就是NSUInteger。
 而且C++不允许将这个底层类型“隐式转换”为枚举类型本身。
```     






