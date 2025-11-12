"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (f32, i32), sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.constant"() <{value = 42.0 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "arith.addf"(%arg0, %0) <{fastmath = #arith_fastmathattrs}> : (f32, f32) -> f32
    %3 = "arith.cmpi"(%arg1, %1) <{predicate = "sgt"}> : (i32, i32) -> i1
    "scf.if"(%3) ({
    ^bb1(%arg2: i1):
      %4 = "arith.addi"(%arg1, %1) : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> i32
    }) {
    } : (i1) -> (i32)
    "func.return"(%2, %3) : (f32, i1) -> ()
  }) : () -> ()
}) : () -> ()