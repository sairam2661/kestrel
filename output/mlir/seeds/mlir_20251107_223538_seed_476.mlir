"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (i32, f32), sym_name = "complex_cross_dialect_interaction"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "scf.if"(%1) <{result = i32, result = f32}> ({
      ^bb1(%arg1: i32):
        %3 = "arith.cmpi"("slt", %arg1, %0) : (i32, i32) -> i1
        scf.yield %3, 3.14 : i1, f32
    }) : (i32, i32) -> (i1, f32)
    %4 = "arith.addf"(%2#1, %2#1) : (f32, f32) -> f32
    "func.return"(%1, %4) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()