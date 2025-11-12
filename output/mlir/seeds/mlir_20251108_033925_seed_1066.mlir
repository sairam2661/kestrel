"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "complex_op_combo"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.cmpi"(%arg0, %arg0) <{predicate = 1}> : (i32, i32) -> i1
    %1 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %2 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %3 = "arith.cmpf"(%2, %2) <{predicate = 1}> : (f32, f32) -> i1
    %4 = "scf.if"(%0) <{}> ({
    ^bb1:
      %5 = "arith.addi"(%1, %1) : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i32) -> (i32)
    %6 = "scf.if"(%3) <{}> ({
    ^bb2:
      %7 = "arith.addf"(%2, %2) : (f32, f32) -> f32
      "scf.yield"(%7) : (f32) -> ()
    }) : (f32) -> (f32)
    "func.return"(%4, %6) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()