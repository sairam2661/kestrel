"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, memref<2x2xi32>) -> tensor<2x2xi32>, sym_name = "mixed_types"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: memref<2x2xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (tensor<2x2xi32>, i32) -> tensor<2x2xi32>
    %2 = "memref.load"(%arg1, %0, %0) : (memref<2x2xi32>, i32, i32) -> i32
    %3 = "arith.addi"(%1, %2) : (tensor<2x2xi32>, i32) -> tensor<2x2xi32>
    "func.return"(%3) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()