"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>) -> tensor<2xi32>, sym_name = "test_tensor_operations"}> ({
  ^bb0(%arg0: tensor<2xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "tensor.insert"(%0, %arg0) <{position = [0]}> : (i32, tensor<2xi32>) -> tensor<2xi32>
    %2 = "tensor.extract"(%1) <{indices = [1]}> : (tensor<2xi32>) -> i32
    %3 = "arith.muli"(%2, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.addi"(%3, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "tensor.insert"(%4, %1) <{position = [1]}> : (i32, tensor<2xi32>) -> tensor<2xi32>
    %6 = "tensor_ext.rotate"(%5) <{offsets = [1], strides = [2]}> : (tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%6) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()