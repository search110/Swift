//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//简单值
//用let定义常量 使用var定义变量
//常量的值在编译时候可以不需要明确的值 但是只可以给它赋值一次 一次赋值可以多个地方使用
//定义常量未赋值 声明类型
let mycustom_let:NSInteger
//声明变量
var mycustom_var:NSInteger

mycustom_let = 10
mycustom_var = 20
print(mycustom_let,mycustom_var)
//变量的值可以改变
mycustom_var = 20 + mycustom_let
print(mycustom_var)
//定义的常量值不能改变
//mycustom_let = mycustom_var + mycustom_let

//常量初始有值没有类型(系统会做类型推导)
//系统会根据你赋值的类型默认变量或者常量的类型 int类型 系统自动推断类型
let mycustom_let_new = 40
var mycustom_var_new = 50
print(mycustom_let_new,mycustom_var_new)
//变量赋值
mycustom_var_new = 50 + mycustom_let_new
print(mycustom_var_new)

//double 类型
let doubleType:Double = 70
//同一类型可以相加 不同类型不能相加
//let new_type = doubleType + mycustom_var_new
let new_double:Double = 80
//类型相同相加
let addtogether = new_double + doubleType

//初始赋值和类型统一确定
let mycustom_newsvalue:NSInteger = 60
var mycustom_newsvalues:NSInteger = 70

let string1:String = "123"
let string2:String = "456"
//相同类型可以相加
let newString:String = string1 + string2


//将常量类型转化为字符串类型
let values = 90
let str_value:String = "hello word swift..."
//类型的转化不会隐式的转化,如果需要将一个值转化其他类型，则显式的转化
let new_str = str_value + String(values)
print("新的值",new_str)

//还有一种将值转换为字符串 把值写在括号中 并在括号中添加反斜杠
let value_1 = 1
let value_2 = 2
let strValue:String = "swift is \(value_1 + value_2) big laguage"

//float类型 转化为字符串
let floatValue:Float = 3.14
var stringFloat = String(floatValue)
var string_f = "nihao \(floatValue)";

//创建空的数组
//Int类型的空数组
let emptyArray:Array<Int> = [Int]()
let emptyArray_1:Array<Int> = Array<Int>()
var emptyTypeArray:Array<String> = [String]()
emptyTypeArray = []
//如果知道数据类型 则可以直接使用[]来创建空的数组
let emptyArray_2:Array<String> = []


//strng 类型的空字典
let empayDict:Dictionary<String,String> = [String:String]()
let empayDict_1:Dictionary<String,String> = Dictionary<String,String>()
var emptyTypeDict:Dictionary<String,Int> = [String:Int]()
emptyTypeDict = [:]
//知道数据类型 创建空的字典
let emptyDict:Dictionary<String,Int> = [:]


//Swift的类数组和字典
// 数组和字典的创建使用[] 最后一个元素允许存在逗号
//常量 不可变数组 字典 swift的对象数组 字典
let array:Array<String> = ["one","two","three","four"]
let dict:Dictionary<String,String> = ["one":"oneKey","two":"twoKey"]
//lastObject 是OC的写法 会报错 下面的写法则为swift的写法
let arrayOneString:String? = array.last
let arrayTwoString:String? = array.first
let arrayThreeString:String = array[1]

let dictOneString:String? = dict["one"]
let dictTwoString:String? = dict["two"]

//定义为OC对象的类对象 数组和对象
//foundation 数组和字典初始化不能确定类型 框架下的不能带确定类型
let classArray:NSArray = ["one","two","three","four"]
let classDict:NSDictionary = ["one":"oneKey","two":"twoKey",]
//获取数组和字典使用下标和key来访问元素
// as! 转化类型 as?=as! 如果对于转化确定知道类型 使用as! 不知道类型使用as? 使用as?如果转化失败会返回nil
let classArrayOneString:String = classArray.lastObject as! String
let classArrayTwoString:String = classArray.firstObject as! String
let classArrayThreeString:String = classArray[1] as! String
//类型转化 as!
let classDictOneString:String = classDict["one"] as! String
//类型转化 as？ 需要解包
let classDictTwoString:String? = classDict["two"] as? String


//可变 不带数据类型
var mutableArray:Array<String> = ["mutableOne","mutableTwo","mutableThree",]
//可变字典 字典的key可以是字符串也可以是整型 没有限制
var mutableDict:Dictionary<String,String> = ["mutableOne":"mutableOneKey","mutableTwo":"mutableTwoKey",]
var otherTypeDict = ["one":1,2:"Two","three":"3",4:5,] as [AnyHashable : Any]

//as的使用 数据类型的转换
let intergerASValue = 45 as NSInteger
let doubleASValue = 45.0 as Double
let floatAsValue = 45 as Float
let intASValue = 45 as Int

//is类型的判断 is操作用来判断某个对象是否属于某个特定的类 返回一个bool值类型
let className: String = "1"
if className is String {
    print("string class")
}else{
    print("is not string class")
}

//可选类型的命名
let optionValue: String? = "optionValue"
let optionValue1: Optional<String> = "optionValue1"

//判断可选类型是否有值
if (optionValue != nil){
    
}

//as as! as? 类型转换  ! ?可选类型解包











































