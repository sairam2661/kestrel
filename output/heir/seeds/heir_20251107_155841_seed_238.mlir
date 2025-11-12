"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, i32) -> i32, sym_name = "complex_tensor_and_scalar_operations"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: i32):
    %c0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %c1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %c2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %c3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %c4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %c5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %c6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %c7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %c8 = "arith.constant"() <{value = 10 : i32}> : () -> i32

    %0 = "tensor.extract"(%arg0, %c0) : (tensor<8xi32>, index) -> i32
    %1 = "tensor.extract"(%arg0, %c1) : (tensor<8xi32>, index) -> i32
    %2 = "tensor.extract"(%arg0, %c2) : (tensor<8xi32>, index) -> i32
    %3 = "tensor.extract"(%arg0, %c3) : (tensor<8xi32>, index) -> i32
    %4 = "tensor.extract"(%arg0, %c4) : (tensor<8xi32>, index) -> i32
    %5 = "tensor.extract"(%arg0, %c5) : (tensor<8xi32>, index) -> i32
    %6 = "tensor.extract"(%arg0, %c6) : (tensor<8xi32>, index) -> i32
    %7 = "tensor.extract"(%arg0, %c7) : (tensor<8xi32>, index) -> i32

    %8 = "arith.addf"(%0, %1) : (i32, i32) -> f32
    %9 = "arith.addf"(%2, %3) : (i32, i32) -> f32
    %10 = "arith.addf"(%4, %5) : (i32, i32) -> f32
    %11 = "arith.addf"(%6, %7) : (i32, i32) -> f32

    %12 = "arith.select"(%arg1, %10, %11) : (i32, f32, f32) -> f32
    %13 = "arith.addf"(%8, %9) : (f32, f32) -> f32
    %14 = "arith.addf"(%12, %13) : (f32, f32) -> f32

    %15 = "arith.cmpi"(%c8, %arg1, "sge") : (i32, i32, i32) -> i1
    %16 = "arith.select"(%15, %14, %c0) : (i1, f32, index) -> f32

    "func.return"(%16) : (f32) -> ()
  }) : () -> ()
}) : () -> ()