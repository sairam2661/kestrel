"builtin.module"() ({
  "func.func"() <{arg_attrs = [{}, {}], function_type = (i32, index) -> (f32, i64), sym_name = "complex_inter_dialect_op"}> ({
  ^bb0(%arg0: i32, %arg1: index):
    %0 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %3 = "tosa.const"() <{values = dense<10> : tensor<1xi32>}> : () -> tensor<1xi32>
    %4 = "scf.for"(%arg1, %0, %3) ({
    ^bb1(%iv: index, %acc: i32):
      %5 = "arith.addi"(%acc, %iv) : (i32, index) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (index, i32) -> (i32)
    %6 = "arith.exti"(%4) : (i32) -> i64
    %7 = "arith.mulf"(%2, %6) : (f32, i64) -> f32
    "func.return"(%7, %6) : (f32, i64) -> ()
  }) : () -> ()
}) : () -> ()