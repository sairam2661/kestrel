"builtin.module"() ({
  "func.func"() <{function_type = (tensor<32x32xf32>, i32) -> tensor<32x32xf32>, sym_name = "fuzz_test"}> ({
  ^bb0(%arg0: tensor<32x32xf32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %1 = "arith.cmpi"(%arg1, %arg1) <{predicate = "eq"}> : (i32, i32) -> i1
    %2 = "arith.select"(%1, %0, %0) : (i1, f32, f32) -> f32
    %3 = "arith.addf"(%arg0, %2) : (tensor<32x32xf32>, f32) -> tensor<32x32xf32>
    "func.return"(%3) : (tensor<32x32xf32>) -> ()
  }) : () -> ()
}) : () -> ()