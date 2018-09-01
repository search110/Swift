//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/*
 方法
 */
//实例方法和类型方法
//方法是与某些特定类型相关联的特定函数 类、结构体、枚举都可以定义实例方法 实例方法为给定的类型的实例封装了具体任务功能 类、结构体、枚举也可以定义类型方法 类型方法与类型本身相关联 类型方法与OC中的类方法类似
//实例方法: “实例方法是属于某个特定类、结构体、枚举类型实例的方法” 实例方法提供访问和修改实例属性的方法或者提供与实例目的相关的功能 语法与函数一致
//特点:1 实例方法需要写在它所属的类型的前后大括号中 2 实例方法可以隐式的访问该类型内部的所有实例方法和属性 3 实例方法只能被它所属的类的某个特定实例调用 4 实例不能脱离现存的实例而被调用

class Counter {
    
    var count = 0
    
    func increment(){
        count += 1
    }
    
    func increment(by amount: Int){
        
        count += amount
    }
    
    func reset(){
        
        count = 0
    }
}

let counter = Counter()
// 初始计数值是0
 counter.increment()
// 计数值现在是1
counter.increment(by: 5)
// 计数值现在是6
counter.reset()
// 计数值现在是0

//1.1 self属性:类型都存在一个隐含的属性self self完全等同实例本身 你可以在实例的实例方法中使用self来引用当前实例

class Counter1 {
    
    var count = 0
    
    func increment(){
       self.count += 1
    }
}

//使用self的时候主要是为了却别当实例方法带的参数和实例内部的属性重名时候需要区别 如果不适用self 则swift认为两次都是使用了参数x
struct Point {
    
    var x = 0.0, y = 0.0
    
    func isToTheRightOfX(x: Double) -> Bool {
        
        return self.x > x
    }
}

//结构体和枚举都是值的类型  如果声明为常量 则不能修改结构体或者枚举内部的属性(不管是否为常量还是变量)
let point = Point(x: 2.0, y: 3.0)
if point.isToTheRightOfX(x: 1.0) {
    print("is true")
}

//1.2 在实例方法中修改类型:结构体和枚举都是值类型 不能在实例方法中修改属性值 类里面则可以修改
class MyClass1{
    
    var myclassProperty = 1

    func myclass1() -> (){
        
        myclassProperty += 1
    }
}

struct MyClass2{
    
    var myclassProperty = 1
    
    mutating func myclass2() -> (){
        //在结构体或者枚举中的实例方法中修改属性值会报错 因为枚举和结构体都是值类型 因为不能在实例方法中修改属性值 但是可以在某系实例方法的前面添mutating 为方法添加可变行为
        myclassProperty += 1
    }
}

//可变方法能够赋给隐含属性self一个全新的实例
struct Myclass3{
    
    var myclassProperty3 = 1
    
    mutating func myclass3() -> (){
        
        self = Myclass3(myclassProperty3: 3)
    }
}


//2 类型方法:可以定义在类型本身上调用的方法，这种方法就叫做类型方法 在方法的func关键字之前加上关键字static来指定类型方法。类还可以用关键字class来允许子类重写父类的方法实现

//定义了一个SomeClass类型实例 里面定义了改类型实例的类型方法someTypeMethod 在类型方法中self指向类本身也就是 SomeClass 而不是指向类型实例 你可以用self来消除类型属性和类型方法参数之间的歧义
class SomeClass {
    class func someTypeMethod() {
        
    }
}

//改方法也是直接作用于类型本身上
SomeClass.someTypeMethod()

//类型方法中:本类型的方法可以调用该类型中的其他的方法和属性 可以直接通过类型方法的名称调用本类中的其它类型方法，而无需在方法名称前面加上类型名称 可以直接在结构体或者枚举直接通过类型属性的名称访问本类中的类型属性，而不需要前面加上类型名称
//类型方法内部可以修改改变类型属性
class SomeClass1 {
    //类型属性:可以直接在类型方法中修改类型属性 不需要将类型方法改变成可变方法 但是一般的属性在类型方法中会报错
   static var some = 1
    static func someTypeMethod() {
        
        var someTypeValue = 2
        //类型方法可以直接调用其他的类型方法和使用类型定义的属性不需要带类型名称
        if someType() {
            some = someTypeValue
        }
    }
    static func someType() -> Bool {
        
        return true
    }
}

//在枚举和结构体中调用方法和属性可以直接省略实例名称调用
struct SomeClass2 {
    //类型属性:在类型方法中可以直接使用类型属性 不要添加类型名称
    static var some = 1
    static func someTypeMethod() {
        
        var someTypeValue = 2
        //类型方法同样直接使用 可以不添加类型名称 在实例方法中需要将方法改成可变才可以修改属性
        if someType() {
            some = someTypeValue
        }
    }
    
    static func someType() -> Bool {
        
        return true
    }
}





