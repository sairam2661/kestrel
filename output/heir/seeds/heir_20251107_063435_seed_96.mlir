"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi32>) -> i32, sym_name = "tensor_reduce"}> ({
  ^bb0(%arg0: tensor<10xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "arith.constant"() <{value = 8 : index}> : () -> index
    %9 = "arith.constant"() <{value = 9 : index}> : () -> index
    %10 = "tensor.extract"(%arg0, %1) : (tensor<10xi32>, index) -> i32
    %11 = "tensor.extract"(%arg0, %2) : (tensor<10xi32>, index) -> i32
    %12 = "tensor.extract"(%arg0, %3) : (tensor<10xi32>, index) -> i32
    %13 = "tensor.extract"(%arg0, %4) : (tensor<10xi32>, index) -> i32
    %14 = "tensor.extract"(%arg0, %5) : (tensor<10xi32>, index) -> i32
    %15 = "tensor.extract"(%arg0, %6) : (tensor<10xi32>, index) -> i32
    %16 = "tensor.extract"(%arg0, %7) : (tensor<10xi32>, index) -> i32
    %17 = "tensor.extract"(%arg0, %8) : (tensor<10xi32>, index) -> i32
    %18 = "tensor.extract"(%arg0, %9) : (tensor<10xi32>, index) -> i32
    %19 = "arith.addi"(%10, %11) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %20 = "arith.addi"(%19, %12) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %21 = "arith.addi"(%20, %13) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %22 = "arith.addi"(%21, %14) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %23 = "arith.addi"(%22, %15) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %24 = "arith.addi"(%23, %16) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %25 = "arith.addi"(%24, %17) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %26 = "arith.addi"(%25, %18) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    "func.return"(%26) : (i32) -> ()
  }) : () -> ()
}) : () -> ()