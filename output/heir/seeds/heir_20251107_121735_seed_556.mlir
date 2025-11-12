"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi8>, tensor<2xi32>, tensor<2xf32>) -> tensor<2xi64>, sym_name = "complex_type_conversion"}> ({
  ^bb0(%arg0: tensor<2xi8>, %arg1: tensor<2xi32>, %arg2: tensor<2xf32>):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 30 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 40 : i32}> : () -> i32
    %4 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %5 = "arith.muli"(%2, %3) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %6 = "arith.extsi"(%4) : (i32) -> i64
    %7 = "arith.extsi"(%5) : (i32) -> i64
    %8 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflow_flags}> : (i64, i64) -> i64
    %9 = "arith.constant"() <{value = 50 : i64}> : () -> i64
    %10 = "arith.subi"(%8, %9) <{overflowFlags = #arith_overflow_flags}> : (i64, i64) -> i64
    "func.return"(%10) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2xi8>, tensor<2xi32>, tensor<2xf32>) -> tensor<2xi64>, sym_name = "nested_conversion"}> ({
  ^bb0(%arg0: tensor<2xi8>, %arg1: tensor<2xi32>, %arg2: tensor<2xf32>):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 30 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 40 : i32}> : () -> i32
    %4 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %5 = "arith.muli"(%2, %3) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %6 = "arith.extsi"(%4) : (i32) -> i64
    %7 = "arith.extsi"(%5) : (i32) -> i64
    %8 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflow_flags}> : (i64, i64) -> i64
    %9 = "arith.constant"() <{value = 50 : i64}> : () -> i64
    %10 = "arith.subi"(%8, %9) <{overflowFlags = #arith_overflow_flags}> : (i64, i64) -> i64
    "func.return"(%10) : (i64) -> ()
  }) : () -> ()
}) : () -> ()