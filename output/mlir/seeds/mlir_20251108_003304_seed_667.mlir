"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32, i32), sym_name = "complex_arithmetic_and_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    "scf.if"(%1) ({
      ^bb1(%arg2: i1):
        %2 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
        "scf.yield"(%2) : (i32) -> i32
    }) {
      "scf.yield" = 0 : i32
    } : (i1) -> i32
    %3 = "arith.addf"(%0, %0) : (i32, i32) -> f32
    %4 = "arith.constant"() <{value = 123.456 : f32}> : () -> f32
    %5 = "arith.addf"(%3, %4) : (f32, f32) -> f32
    "func.return"(%0, %3, %5) : (i32, f32, f32) -> ()
  }) : () -> ()
}) : () -> ()