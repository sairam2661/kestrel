"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "mixed_operations"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %5 = "arith.muli"(%4, %4) : (i32, i32) -> i32
    %6 = "tensor.insert"(%5, %arg1, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %7 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %8 = "arith.mulf"(%7, %7) : (i32, i32) -> f32
    %9 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %10 = "arith.mulf"(%8, %9) : (f32, f32) -> f32
    %11 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %12 = "arith.addf"(%10, %11) : (f32, f32) -> f32
    %13 = "arith.constant"() <{value = 0 : index}> : () -> index
    %14 = "arith.constant"() <{value = 0 : index}> : () -> index
    %15 = "tensor.insert"(%12, %arg0, %13) : (f32, tensor<4xi32>, index) -> tensor<4xi32>
    %16 = "tensor.extract"(%15, %14) : (tensor<4xi32>, index) -> i32
    "func.return"(%15) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()