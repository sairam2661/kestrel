"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "test_mixed_int_add"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 123 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 456 : i64}> : () -> i64
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.addf"(%arg1, %1) : (i64, i64) -> i64
    "func.return"(%2, %3) : (i32, i64) -> ()
  }) : () -> ()
  "scf.for"(%c0_i64, %c10_i64, %c1_i64, %c1_i64) <{indvars = ["%iv"]}>({^bb1(%iv: i64) : i64
    .region0:                      		(                             ) -> ()
    ^bb2():
      %4 = "arith.addi"(%iv, %c1_i64) : (i64, i64) -> i64
      "scf.yield"() : () -> ()
  }) : (i64, i64, i64, i64) -> ()
  "func.func"() <{function_type = (tensor<2x2xf32>) -> tensor<2x2xf32>, sym_name = "test_tensor_abs"}> ({
  ^bb0(%arg2: tensor<2x2xf32>):
    %5 = "tosa.abs"(%arg2) : (tensor<2x2xf32>) -> tensor<2x2xf32>
    "func.return"(%5) : (tensor<2x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()