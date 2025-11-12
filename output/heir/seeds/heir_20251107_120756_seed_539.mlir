"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, i32) -> tensor<4xi8>, sym_name = "tensor_rotation_and_multiplication"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: i32):
    %0 = "tensor_ext.rotate"(%arg0, %arg1) <{axis = 1 : i64}> : (tensor<4xi8>, i32) -> tensor<4xi8>
    %1 = "arith.constant"() <{value = 2 : i8}> : () -> i8
    %2 = "tensor_ext.rotate"(%0, %1) <{axis = 0 : i64}> : (tensor<4xi8>, i32) -> tensor<4xi8>
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "tensor.extract"(%2, %3) : (tensor<4xi8>, index) -> i8
    %5 = "arith.muli"(%4, %4) <{overflowFlags = #arith_overflowatori8} > : (i8, i8) -> i8
    %6 = "tensor.insert"(%5, %0, %3) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    "func.return"(%6) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()