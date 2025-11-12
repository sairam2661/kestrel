"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "rotate_and_select"}> ({
    ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>, %arg2: i32):
      %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %1 = "tensor_ext.rotate"(%arg0, %0) <{axis = 0}> : (tensor<4xi32>, i32) -> tensor<4xi32>
      %2 = "tensor_ext.rotate"(%arg1, %0) <{axis = 0}> : (tensor<4xi32>, i32) -> tensor<4xi32>
      %3 = "arith.cmpi"(%arg2, %0, "eq") : (i32, i32) -> i1
      %4 = "arith.select"(%3, %1, %2) : (i1, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      %5 = "arith.addi"(%0, %arg2) <{overflowFlags = #arith_overflowunsigned}> : (i32, i32) -> i32
      %6 = "arith.cmpi"(%5, %0, "ne") : (i32, i32) -> i1
      %7 = "arith.select"(%6, %4, %0) : (i1, tensor<4xi32>, i32) -> tensor<4xi32>
      "func.return"(%7) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()