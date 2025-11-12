"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> i32, sym_name = "xor_reduce"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
    %c0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %c4 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %c5 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %c6 = "arith.constant"() <{value = 6 : i32}> : () -> i32
    %c7 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %c8 = "arith.constant"() <{value = 8 : i32}> : () -> i32
    %c9 = "arith.constant"() <{value = 9 : i32}> : () -> i32
    %c10 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %c11 = "arith.constant"() <{value = 11 : i32}> : () -> i32
    %c12 = "arith.constant"() <{value = 12 : i32}> : () -> i32
    %c13 = "arith.constant"() <{value = 13 : i32}> : () -> i32
    %c14 = "arith.constant"() <{value = 14 : i32}> : () -> i32
    %c15 = "arith.constant"() <{value = 15 : i32}> : () -> i32
    %t0 = "tensor.extract"(%arg0, %c0) : (tensor<4xi8>, i32) -> i8
    %t1 = "tensor.extract"(%arg1, %c0) : (tensor<4xi8>, i32) -> i8
    %t2 = "arith.trunci"(%t0) : (i8) -> i32
    %t3 = "arith.trunci"(%t1) : (i8) -> i32
    %t4 = "arith.xori"(%t2, %t3) : (i32, i32) -> i32
    %t5 = "tensor.extract"(%arg0, %c1) : (tensor<4xi8>, i32) -> i8
    %t6 = "tensor.extract"(%arg1, %c1) : (tensor<4xi8>, i32) -> i8
    %t7 = "arith.trunci"(%t5) : (i8) -> i32
    %t8 = "arith.trunci"(%t6) : (i8) -> i32
    %t9 = "arith.xori"(%t7, %t8) : (i32, i32) -> i32
    %t10 = "arith.addi"(%t4, %t9) : (i32, i32) -> i32
    %t11 = "tensor.extract"(%arg0, %c2) : (tensor<4xi8>, i32) -> i8
    %t12 = "tensor.extract"(%arg1, %c2) : (tensor<4xi8>, i32) -> i8
    %t13 = "arith.trunci"(%t11) : (i8) -> i32
    %t14 = "arith.trunci"(%t12) : (i8) -> i32
    %t15 = "arith.xori"(%t13, %t14) : (i32, i32) -> i32
    %t16 = "arith.addi"(%t10, %t15) : (i32, i32) -> i32
    %t17 = "tensor.extract"(%arg0, %c3) : (tensor<4xi8>, i32) -> i8
    %t18 = "tensor.extract"(%arg1, %c3) : (tensor<4xi8>, i32) -> i8
    %t19 = "arith.trunci"(%t17) : (i8) -> i32
    %t20 = "arith.trunci"(%t18) : (i8) -> i32
    %t21 = "arith.xori"(%t19, %t20) : (i32, i32) -> i32
    %t22 = "arith.addi"(%t16, %t21) : (i32, i32) -> i32
    "func.return"(%t22) : (i32) -> ()
  }) : () -> ()
}) : () -> ()