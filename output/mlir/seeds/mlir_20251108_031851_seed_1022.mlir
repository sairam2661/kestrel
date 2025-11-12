"builtin.module"() ({
  "func.func"() <{function_type = (i64, tensor<i32>, memref<1x4xf32>) -> (i64, tensor<i32>, memref<1x4xf32>), sym_name = "mixed_dialects_stress_test"}> ({
  ^bb0(%arg0: i64, %arg1: tensor<i32>, %arg2: memref<1x4xf32>):
    %0 = "arith.addi"(%arg0, %arg0) : (i64, i64) -> i64
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %1) : (i64, i32) -> i64
    %3 = "arith.cmpi"(%arg0, %2, "slt") : (i64, i64) -> i1
    "scf.if"(%3) ({
      ^bb1(%arg3: i1):
        %4 = "arith.constant"() <{value = 2 : i32}> : () -> i32
        %5 = "arith.addi"(%arg0, %4) : (i64, i32) -> i64
        "arith.constant"() <{value = 0.5 : f32}> : () -> f32
        "arith.constant"() <{value = 0.75 : f32}> : () -> f32
        "arith.constant"() <{value = 1 : index}> : () -> index
        "arith.constant"() <{value = 2 : index}> : () -> index
    }) : () -> ()
    "func.return"(%0, %arg1, %arg2) : (i64, tensor<i32>, memref<1x4xf32>) -> ()
  }) : () -> ()
}) : () -> ()