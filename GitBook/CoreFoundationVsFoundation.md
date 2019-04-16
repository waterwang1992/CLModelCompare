# <center>CoreFoundation and Foundation</center>

## 简单介绍

### CoreFoundation

```Core Foundation``` 框架 (CoreFoundation.framework) 是一组```C```语言接口，它们为iOS应用程序提供```基本数据管理和服务功能```.
下面列举该框架支持进行管理的数据以及可提供的服务：
- 群体数据类型 (数组、集合等)
- 程序包
- 字符串管理
- 日期和时间管理
- 原始数据块管理
- 偏好管理
- URL及数据流操作
- 线程和RunLoop
- 端口和soket通讯

```
Core Foundation is a framework that provides fundamental software services useful to application services,
application environments, and to applications themselves. 
Core Foundation also provides abstractions for common data types,
facilitates internationalization with Unicode string storage,
and offers a suite of utilities such as plug-in support,
XML property lists, URL resource access, and preferences.
```


### Foundation

```Core Foundation``` 框架和```Foundation```框架紧密相关，它们为相同功能提供接口，但```Foundation```框架提供```Objective-C```接口, 无时无刻不在使用,这里不做过多介绍。

如果您将```Foundation```对象和```Core Foundation```类型掺杂使用，则可利用两个框架之间的 ```toll-free bridging```。

```
所谓的Toll-free bridging是说
可以在某个框架的方法或函数同时使用Core Foundatio和Foundation 框架中的某些类型。
很多数据类型支持这一特性，其中包括群体和字符串数据类型。
每个框架的类和类型描述都会对某个对象是否为 toll-free bridged，应和什么对象桥接进行说明。
```

- [参考文档 - Core Foundation](https://developer.apple.com/documentation/corefoundation?language=objc)
- [参考文档 - Foundation](https://developer.apple.com/documentation/foundation?language=objc)

***

## Objective-C指针与CoreFoundation指针之间的转换 (主要ARC情况)

### 几个关键字

- ```__bridge```
- ```__bridge_retained```
- ```__bridge_transfer```

 ```ARC```仅管理```Objective-C```指针（```retain```、```release```、```autorelease```），不管理```CoreFoundation```指针，CF指针由人工管理，手动的```CFRetain```和```CFRelease```来管理.

```注: CF中没有autorelease。```

### 使用注意要点总结

 1. 明确被转换类型是否是 ARC 管理的对象
 2. ```Core Foundation``` 对象类型不在 ARC 管理范畴内
 3. Foundation 对象类型（即一般使用到的Objectie-C对象类型）在 ARC 的管理范畴内
 4. 如果不在 ```ARC``` 管理范畴内的对象，那么要清楚 ```release``` 的责任应该是谁
各种对象的生命周期是怎样的
 5. 声明 ```id obj``` 的时候，其实是缺省的申明了一个 ```__strong``` 修饰的变量，所以编译器自动地加入了 ```retain``` 的处理，所以说 ```__bridge_transfer``` 关键字只为我们做了 ```release``` 处理。


 ```CocoaFoundation```指针与```CoreFoundation```指针转换，需要考虑的是所指向对象所有权的归属。```ARC```提供了3个修饰符来管理:

 
  1.  __bridge，什么也不做，仅仅是转换。此种情况下：

   (1). 从```Cocoa```转换到```Core```，需要人工```CFRetain```，否则，```Cocoa```指针释放后， 传出去的指针则无效。

   (2). 从```Core```转换到```Cocoa```，需要人工```CFRelease```，否则，```Cocoa```指针释放后，对象引用计数仍为1，不会被销毁。

  2. ```__bridge_retained```，转换后自动调用```CFRetain```，即帮助自动解决上述(1)的情形。
  3. ```__bridge_transfer```，转换后自动调用```CFRelease```，即帮助自动解决上述(2)的情形.


- [参考文档- RN-TransitioningToARC](https://developer.apple.com/library/archive/releasenotes/ObjectiveC/RN-TransitioningToARC/Introduction/Introduction.html)

