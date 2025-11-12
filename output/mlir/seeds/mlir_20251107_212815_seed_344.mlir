"builtin.module"() ({
  "func.func"() <{function_type = (i32, f64) -> (i32, f64), sym_name = "nested_return"}> ({
  ^bb0(%arg0: i32, %arg1: f64):
    %0 = "llvm.mlir.constant"() <{value = #llvm_integer_attr, constant_type = i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = #llvm_float_attr, constant_type = f64}> : () -> f64
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.fadd"(%arg1, %1) : (f64, f64) -> f64
    ^bb1(%arg2: i32, %arg3: f64):
      "llvm.return"(%arg2, %arg3) : (i32, f64) -> ()
    "scf.if"(%2) ({
    ^bb2(%arg4: i32):
      "scf.yield"(%arg4) : (i32) -> ()
    ^bb3(%arg5: i32):
      %6 = "arith.addi"(%arg5, %0) : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }) : (i32) -> (i32)
    "scf.if"(%3) ({
    ^bb4(%arg6: f64):
      "scf.yield"(%arg6) : (f64) -> ()
    ^bb5(%arg7: f64):
      %8 = "arith.fadd"(%arg7, %1) : (f64, f64) -> f64
      "scf.yield"(%8) : (f64) -> ()
    }) : (f64) -> (f64)
    "llvm.return"(%2, %3) : (i32, f64) -> ()
  }) : () -> ()
}) : () -> ()