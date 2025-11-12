"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "complex_operations"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "scf.if"(%0) ({
    ^if0:
      "func.return"(%0, %1) : (i32, f32) -> ()
    }) {
    } : i32 -> ()
    "func.return"(%0, %1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()