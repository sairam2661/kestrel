"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "tensor_operations"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.constant"() <{value = dense<[1, 2, 3, 4]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %2 = "arith.muli"(%1, %arg1) <{overflowFlags = #arith_overflow}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %3 = "arith.subi"(%2, %0) <{overflowFlags = #arith_overflow}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%3) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "arith_operations"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %0) : (i32, i32) -> i32
    %3 = "arith.subi"(%2, %arg0) : (i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "main"}> ({
  ^bb0():
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %2 = "func.call"(%0, %1) <{callee = @arith_operations}> : (i32, i32) -> i32
    %3 = "arith.constant"() <{value = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %4 = "arith.constant"() <{value = dense<[[5, 6], [7, 8]]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %5 = "func.call"(%3, %4) <{callee = @tensor_operations}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()