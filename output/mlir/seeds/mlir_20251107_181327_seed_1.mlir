"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32, index) -> (f32, i32), sym_name = "mixed_dialect_example"}> ({
  ^bb0(%arg0: f32, %arg1: i32, %arg2: index):
    %0 = "arith.constant"() <{value = 2.5 : f32}> : () -> f32
    %1 = "arith.addf"(%arg0, %0) : (f32, f32) -> f32
    %2 = "arith.cmpi"(%arg1, %arg2, "slt") : (i32, index) -> i1
    %3 = "scf.if"(%2) ({
    ^bb1:
      %4 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) {
    } : (i1) -> (i32)
    %5 = "arith.addi"(%arg1, %3) : (i32, i32) -> i32
    "func.return"(%1, %5) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()