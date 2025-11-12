"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xi32>, tensor<10x10xi32>) -> tensor<10x10xi32>, sym_name = "test_mixed_operations"}> ({
  ^bb0(%arg0: tensor<10x10xi32>, %arg1: tensor<10x10xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 6 : i32}> : () -> i32
    %6 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %7 = "arith.constant"() <{value = 8 : i32}> : () -> i32
    %8 = "arith.constant"() <{value = 9 : i32}> : () -> i32
    %9 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %10 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<10x10xi32>, tensor<10x10xi32>) -> tensor<10x10xi32>
    %11 = "arith.muli"(%10, %0) <{overflowFlags = #arith_overflownone}> : (tensor<10x10xi32>, i32) -> tensor<10x10xi32>
    %12 = "arith.subi"(%11, %1) <{overflowFlags = #arith_overflownone}> : (tensor<10x10xi32>, i32) -> tensor<10x10xi32>
    %13 = "arith.addi"(%12, %2) <{overflowFlags = #arith_overflownone}> : (tensor<10x10xi32>, i32) -> tensor<10x10xi32>
    %14 = "arith.muli"(%13, %3) <{overflowFlags = #arith_overflownone}> : (tensor<10x10xi32>, i32) -> tensor<10x10xi32>
    %15 = "arith.subi"(%14, %4) <{overflowFlags = #arith_overflownone}> : (tensor<10x10xi32>, i32) -> tensor<10x10xi32>
    %16 = "arith.addi"(%15, %5) <{overflowFlags = #arith_overflownone}> : (tensor<10x10xi32>, i32) -> tensor<10x10xi32>
    %17 = "arith.muli"(%16, %6) <{overflowFlags = #arith_overflownone}> : (tensor<10x10xi32>, i32) -> tensor<10x10xi32>
    %18 = "arith.subi"(%17, %7) <{overflowFlags = #arith_overflownone}> : (tensor<10x10xi32>, i32) -> tensor<10x10xi32>
    %19 = "arith.addi"(%18, %8) <{overflowFlags = #arith_overflownone}> : (tensor<10x10xi32>, i32) -> tensor<10x10xi32>
    %20 = "arith.muli"(%19, %9) <{overflowFlags = #arith_overflownone}> : (tensor<10x10xi32>, i32) -> tensor<10x10xi32>
    %21 = "arith.subi"(%20, %0) <{overflowFlags = #arith_overflownone}> : (tensor<10x10xi32>, i32) -> tensor<10x10xi32>
    "func.return"(%21) : (tensor<10x10xi32>) -> ()
  }) : () -> ()
}) : () -> ()