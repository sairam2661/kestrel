"builtin.module"() ({
  "func.func"() <{function_type = (i32, memref<4xi8>, tensor<2x3xf32>) -> (i32, memref<4xi8>, tensor<2x3xf32>), sym_name = "mixed_types_example"}> ({
  ^bb0(%arg0: i32, %arg1: memref<4xi8>, %arg2: tensor<2x3xf32>):
    %0 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 128 : i8}> : () -> i8
    %2 = "arith.extui"(%1) : (i8) -> i32
    %3 = "arith.addi"(%arg0, %2) : (i32, i32) -> i32
    %4 = "memref.store"(%3, %arg1, 0) : (i32, memref<4xi8>, index) -> ()
    %5:2 = "scf.for"(%3) <{lower_bound = 0 : index, upper_bound = 2 : index, step = 1 : index}> ({
      ^bb1(%iv: index):
        %6 = "tensor.extract"(%arg2, %iv, 0) : (tensor<2x3xf32>, index, index) -> f32
        %7 = "arith.muli"(%6, 2.000000e+00) : (f32, f32) -> f32
        %8 = "tensor.insert"(%7, %arg2, %iv, 0) : (f32, tensor<2x3xf32>, index, index) -> tensor<2x3xf32>
        "scf.yield"(%8) : (tensor<2x3xf32>) -> tensor<2x3xf32>
    }) : (tensor<2x3xf32>) -> tensor<2x3xf32>
    "func.return"(%3, %arg1, %5#0) : (i32, memref<4xi8>, tensor<2x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()