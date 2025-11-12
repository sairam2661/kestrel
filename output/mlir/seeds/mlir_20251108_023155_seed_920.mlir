"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32, i1), sym_name = "fuzz_test"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %1 = "arith.cmpi"("eq", %arg0, %arg0) : (i32, i32) -> i1
    %2 = "scf.if"(%1) ({
    ^bb1(%arg2: i1):
      %3 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
      "scf.yield"(%3) : (i32) -> ()
    }, {
    ^bb2(%arg3: i1):
      %4 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) : (i32) -> (i32)
    "func.return"(%0, %2, %2) : (f32, i1, i1) -> ()
  }) : () -> ()
}) : () -> ()