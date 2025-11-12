"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "complex_mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    "scf.if"(%0) ({
    ^bb1:
      %2 = "arith.muli"(%0, %0) : (i32, i32) -> i32
      "scf.yield"(%2) : (i32) -> ()
    }, {
    ^bb2:
      %3 = "arith.cmpi"(%0, %1) : (i32, f32) -> i1
      "scf.yield"(%3) : (i1) -> ()
    }) : (i1) -> (i32, i1)
    "func.return"(%0, %1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()