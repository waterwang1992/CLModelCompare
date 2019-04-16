# <center>TypeEncodings And Declared Properties</center>

## Objective-C type encodings

为了协助运行时系统，编译器会对每个方法的参数及返回值类型进行编码 并对对应方法的 ```method selector```进行关联,。它使用的编码方案在其他上下文中也很有用，并且可以使用@encode()编译器指令公开。当给定类型声明时，@encode()返回编码该类型的字符串。类型可以是基本类型，例如int，指针，结构体，或类名等

![Objective-C type encodings 1](source/Objective-C_type_encodings_1.png)
![Objective-C type encodings 2](source/Objective-C_type_encodings_2.png)

## Objective-C method encodings
![Objective-C method encodings](source/Objective-C_method_encodings.png)

## Declared Properties



### Declared property type encodings
![Declared property type encodings 1](source/Declared_property_type_encodings.png)

### Property Attribute Description Examples
```
The string starts with a T followed by the @encode type and a comma, and
finishes with a V followed by the name of the backing instance variable.
Between these, the attributes are specified by the following descriptors,
separated by commas:

```
![Property Attribute Description Examples 1](source/Property_Attribute_Description_Examples_1.png)
![Property Attribute Description Examples 2](source/Property_Attribute_Description_Examples_2.png)





- [参考文档 - Type Encodings](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ObjCRuntimeGuide/Articles/ocrtTypeEncodings.html#//apple_ref/doc/uid/TP40008048-CH100-SW1)
- [参考文档 - Declared Properties](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ObjCRuntimeGuide/Articles/ocrtPropertyIntrospection.html#//apple_ref/doc/uid/TP40008048-CH101-SW1)