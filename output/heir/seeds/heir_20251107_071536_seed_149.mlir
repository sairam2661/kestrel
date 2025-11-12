"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, index) -> i32, sym_name = "tensor_extract_and_rotate"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %2 = "tensor_ext.rotate"(%arg0, %0, %0) : (tensor<4xi32>, index, index) -> tensor<4xi32>
    %3 = "tensor.extract"(%2, %0) : (tensor<4xi32>, index) -> i32
    %4 = "arith.addi"(%1, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()