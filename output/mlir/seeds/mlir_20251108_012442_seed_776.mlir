"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xi32>, i32) -> (tensor<3x3xi32>, i32), sym_name = "mixed_dialects"}> ({
  ^bb0(%arg0: tensor<3x3xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "scf.if"(%arg1) ({
      ^bb0(%arg2: i32):
        %2 = "arith.addi"(%arg2, %0) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
        "scf.yield"(%2) : (i32) -> ()
    }) : (i32) -> (i32)
    %3 = "arith.cmpi"(%arg1, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %4 = "scf.if"(%3) ({
      ^bb0(%arg4: i32):
        %5 = "arith.addf"(%arg4, %arg4) : (f32, f32) -> f32
        "scf.yield"(%5) : (f32) -> ()
    }) : (f32) -> (f32)
    %6 = "tosa.cast"(%arg0) <{targetType = "f32"}> : (tensor<3x3xi32>) -> tensor<3x3xf32>
    "func.return"(%6, %1) : (tensor<3x3xf32>, i32) -> ()
  }) : () -> ()
}) : () -> ()