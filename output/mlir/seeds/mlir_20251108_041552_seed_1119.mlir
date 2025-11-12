"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (f32, i32), sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %const1 = "tosa.const"() <{value = 42 : i32}> : () -> i32
    %cmp1 = "arith.cmpi"(%arg0, %const1, "eq") <{result_type = i1}> : (i32, i32) -> i1
    %branch1 = "scf.if"(%cmp1) ({
      ^bb1(%cond: i1):
        %addf1 = "arith.addf"(%arg1, 1.0) : (f32, f32) -> f32
        "scf.yield"(%addf1) : (f32) -> f32
    }) : (i1) -> (f32)
    %addi1 = "arith.addi"(%arg0, 1) : (i32, i32) -> i32
    "func.return"(%branch1, %addi1) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()