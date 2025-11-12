"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "tensor_interaction"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %3) : (tensor<2x2xi32>, index) -> i32
    %5 = "arith.mulf"(%4, %4) : (i32, i32) -> f32
    %6 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %7 = "arith.mulf"(%5, %6) : (f32, f32) -> f32
    %8 = "arith.constant"() <{value = 1 : index}> : () -> index
    %9 = "tensor.extract"(%arg1, %8) : (tensor<2x2xi32>, index) -> i32
    %10 = "arith.muli"(%9, %9) : (i32, i32) -> i32
    %11 = "tensor.insert"(%10, %arg0, %0) : (i32, tensor<2x2xi32>, index) -> tensor<2x2xi32>
    %12 = "tensor.insert"(%7, %arg1, %1) : (f32, tensor<2x2xi32>, index) -> tensor<2x2xi32>
    %13 = "tensor.extract"(%arg0, %2) : (tensor<2x2xi32>, index) -> i32
    %14 = "arith.select"(%13, %12, %11) : (i32, tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%14) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()