"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x4xi32>, tensor<2x4xi32>) -> tensor<2x4xi32>, sym_name = "tensor_op_func"}> ({
    ^bb0(%arg0: tensor<2x4xi32>, %arg1: tensor<2x4xi32>):
      %0 = "arith.constant"() <{value = dense<0> : tensor<2x4xi32>}> : () -> tensor<2x4xi32>
      %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<2x4xi32>, tensor<2x4xi32>) -> tensor<2x4xi32>
      %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<2x4xi32>, tensor<2x4xi32>) -> tensor<2x4xi32>
      %3 = "arith.subi"(%2, %1) <{overflowFlags = #arith_overflownone}> : (tensor<2x4xi32>, tensor<2x4xi32>) -> tensor<2x4xi32>
      "func.return"(%3) : (tensor<2x4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "int_op_func"}> ({
    ^bb0(%arg0: i32):
      %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %3 = "arith.subi"(%2, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "func.return"(%3) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i1) -> i1, sym_name = "bool_op_func"}> ({
    ^bb0(%arg0: i1):
      %0 = "arith.constant"() <{value = true}> : () -> i1
      %1 = "arith.andi"(%arg0, %0) : (i1, i1) -> i1
      %2 = "arith.ori"(%1, %arg0) : (i1, i1) -> i1
      "func.return"(%2) : (i1) -> ()
  }) : () -> ()
}) : () -> ()