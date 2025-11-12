"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_types_example"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.cmpi"(%arg0, %arg0, "eq") : (i32, i32) -> i1
    %1 = "arith.cmpf"(%arg1, %arg1, "eq") : (f32, f32) -> i1
    %2 = "scf.if"(%0) ({
    ^bb1(%arg2: i1):
      %3 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      scf.yield %3 : i32
    }) {
    } : (i1) -> (i32)
    %4 = "scf.if"(%1) ({
    ^bb2(%arg3: i1):
      %5 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
      scf.yield %5 : f32
    }) {
    } : (i1) -> (f32)
    "func.return"(%2, %4) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()