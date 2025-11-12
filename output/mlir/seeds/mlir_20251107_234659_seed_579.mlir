"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (f32, i32), sym_name = "unusual_combination"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.cmpf"(%arg0, %arg0, "eq") : (f32, f32) -> i1
    %1 = "arith.cmpi"(%arg1, %arg1, "ne") : (i32, i32) -> i1
    %2 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
    %3 = "scf.if"(%0) ({
    ^bb1(%arg2: i1):
      %4 = "arith.addf"(%2, %2) : (f32, f32) -> f32
      "scf.yield"(%4) : (f32) -> f32
    }) : (f32) -> f32
    %5 = "scf.if"(%1) ({
    ^bb2(%arg3: i1):
      %6 = "arith.addi"(%arg1, %arg1) : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> i32
    }) : (i32) -> i32
    "func.return"(%3, %5) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()