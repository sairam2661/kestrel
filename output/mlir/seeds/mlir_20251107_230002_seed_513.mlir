"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<1x2x3xf32>, memref<4x5xf64>) -> (i32, tensor<1x2x3xf32>, memref<4x5xf64>), sym_name = "mixed_dialect_test"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<1x2x3xf32>, %arg2: memref<4x5xf64>):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "tosa.relu"(%arg1) : (tensor<1x2x3xf32>) -> tensor<1x2x3xf32>
    %3 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %4 = "arith.select"(%arg0, %1, %3) : (i32, i32, i32) -> i32
    %5 = "memref.load"(%arg2, 0, 0) : (memref<4x5xf64>, index, index) -> f64
    %6 = "arith.constant"() <{value = 30.0 : f64}> : () -> f64
    %7 = "arith.addf"(%5, %6) : (f64, f64) -> f64
    %8 = "memref.store"(%7, %arg2, 0, 0) : (f64, memref<4x5xf64>, index, index) -> ()
    "func.return"(%4, %2, %arg2) : (i32, tensor<1x2x3xf32>, memref<4x5xf64>) -> ()
  }) : () -> ()
}) : () -> ()