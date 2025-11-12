"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "arith.cmpi"(%0, 10) <{predicate = "slt"}> : (i32, i32) -> i1
    %3 = "arith.cmpf"(%1, 5.0) <{predicate = "slt"}> : (f32, f32) -> i1
    %4 = "scf.if"(%2) ({
      ^bb1(%arg2: i1):
        %5 = "arith.addi"(%0, 1) : (i32, i32) -> i32
        %6 = "arith.addf"(%1, 1.0) : (f32, f32) -> f32
        "scf.yield"(%5, %6) : (i32, f32) -> ()
    }) : (i32, f32) -> (i32, f32)
    "func.return"(%4#0, %4#1) : (i32, f32) -> ()
  }) : (i32, f32) -> (i32, f32)
}) : () -> ()