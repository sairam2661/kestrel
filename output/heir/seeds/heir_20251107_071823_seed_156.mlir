"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xf32>, i32) -> tensor<2x2xf32>, sym_name = "tensor_mutation"}> ({
  ^bb0(%arg0: tensor<2x2xf32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4.0 : f32}> : () -> f32
    %5 = "tensor.extract"(%arg0, %0, %0) : (tensor<2x2xf32>, index, index) -> f32
    %6 = "arith.addf"(%5, %4) : (f32, f32) -> f32
    %7 = "tensor.insert"(%6, %arg0, %0, %0) : (f32, tensor<2x2xf32>, index, index) -> tensor<2x2xf32>
    %8 = "tensor.extract"(%arg0, %1, %1) : (tensor<2x2xf32>, index, index) -> f32
    %9 = "arith.mulf"(%8, %4) : (f32, f32) -> f32
    %10 = "tensor.insert"(%9, %7, %1, %1) : (f32, tensor<2x2xf32>, index, index) -> tensor<2x2xf32>
    %11 = "tensor.extract"(%arg0, %0, %1) : (tensor<2x2xf32>, index, index) -> f32
    %12 = "arith.muli"(%11, %arg1) : (i32, i32) -> i32
    %13 = "arith.constant"() <{value = 2.0 : f32}> : () -> f32
    %14 = "arith.addf"(%13, %13) : (f32, f32) -> f32
    %15 = "arith.select"(%12, %14, %13) : (i32, f32, f32) -> f32
    %16 = "tensor.insert"(%15, %10, %0, %1) : (f32, tensor<2x2xf32>, index, index) -> tensor<2x2xf32>
    "func.return"(%16) : (tensor<2x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()