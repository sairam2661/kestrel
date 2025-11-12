"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 20.0 : f32}> : () -> f32
    %4 = "arith.cmpf"("oeq", %1, %3) : (f32, f32) -> i1
    %5 = "scf.if"(%4) ({
      ^bb1(%arg2: i1):
        %6 = "arith.addi"(%0, %2) : (i32, i32) -> i32
        "scf.yield"(%6) : (i32) -> i32
    }) : (i32)
    "func.return"(%5, %1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()