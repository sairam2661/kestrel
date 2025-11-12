"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "complex_rotation"}> ({
  ^bb0(%arg0: tensor<4x4xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = -2 : i32}> : () -> i32
    %2 = "tensor_ext.rotate"(%arg0, %0) : (tensor<4x4xi32>, i32) -> tensor<4x4xi32>
    %3 = "tensor_ext.rotate"(%2, %1) : (tensor<4x4xi32>, i32) -> tensor<4x4xi32>
    %4 = "scf.for"(%0) <{lower_bound = 0 : index, upper_bound = 4 : index, step = 1 : index}> ({
    ^bb1(%arg1: index):
      %5 = "arith.constant"() <{value = 3 : i32}> : () -> i32
      %6 = "tensor_ext.rotate"(%3, %5) : (tensor<4x4xi32>, i32) -> tensor<4x4xi32>
      "scf.yield"() : () -> ()
    }) : (i32) -> ()
    "func.return"(%3) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()