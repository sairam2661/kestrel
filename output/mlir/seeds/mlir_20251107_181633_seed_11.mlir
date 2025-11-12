"builtin.module"() ({
  "func.func"() <{function_type = (i32, memref<1x4xi8>, tensor<1x2xi32>) -> (i32, memref<1x4xi8>, tensor<1x2xi32>), sym_name = "complex_mix"}> ({
  ^bb0(%arg0: i32, %arg1: memref<1x4xi8>, %arg2: tensor<1x2xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{infinite = false}> : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "memref.load"(%arg1, %2) : (memref<1x4xi8>, index) -> i8
    %4 = "arith.extsi"(%3) : (i8) -> i32
    %5 = "arith.addi"(%1, %4) : (i32, i32) -> i32
    %6:2 = "tensor.extract_slice"(%arg2, %2, %2) : (tensor<1x2xi32>, index, index) -> tensor<1xi32>
    %7 = "tensor.extract"(%6#0, %2) : (tensor<1xi32>, index) -> i32
    %8 = "arith.addi"(%5, %7) : (i32, i32) -> i32
    "func.return"(%8, %arg1, %arg2) : (i32, memref<1x4xi8>, tensor<1x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()