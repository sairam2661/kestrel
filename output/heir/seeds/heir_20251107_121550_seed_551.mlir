"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "matrix_rotate_and_add"}> ({
  ^bb0(%arg0: tensor<2x2xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %0, %0) : (tensor<2x2xi32>, index, index) -> i32
    %3 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "tensor.insert"(%4, %arg0, %0, %0) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    %6 = "tensor_ext.rotate"(%5, %0, %0, %1, %1) : (tensor<2x2xi32>, index, index, index, index) -> tensor<2x2xi32>
    "func.return"(%6) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()