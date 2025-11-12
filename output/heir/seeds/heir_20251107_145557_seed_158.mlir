"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<4xi32>) -> (i32, tensor<4xi32>), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.cmpi"(%2, %arg0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %4 = "tensor.extract"(%arg1, %0) : (tensor<4xi32>, index) -> i32
    %5 = "arith.addi"(%4, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "tensor.insert"(%5, %arg1, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%2, %6) : (i32, tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()