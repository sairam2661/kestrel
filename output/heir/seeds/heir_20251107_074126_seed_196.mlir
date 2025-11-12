"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "tensor_rotation_and_addition"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<8xi32>, index) -> tensor<8xi32>
    %2 = "tensor_ext.rotate"(%arg1, %0) : (tensor<8xi32>, index) -> tensor<8xi32>
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %4 = "scf.for"() <{lb = 0 : index, ub = 8 : index, step = 1 : index}> ({
    ^bb1(%arg2: index):
      %5 = "tensor.extract"(%1, %arg2) : (tensor<8xi32>, index) -> i32
      %6 = "tensor.extract"(%2, %arg2) : (tensor<8xi32>, index) -> i32
      %7 = "arith.addi"(%5, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : () -> ()
    %8 = "tensor_ext.rotate"(%3, %0) : (tensor<8xi32>, index) -> tensor<8xi32>
    "func.return"(%8) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()