"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (f32, i32), sym_name = "mixed_type_operations"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
    %1 = "arith.cmpi"(%arg1, %arg1, "eq") : (i32, i32) -> i1
    %2 = "arith.cmpf"(%0, %0, "oeq") : (f32, f32) -> i1
    %3 = "scf.if"(%1) <{sym_name = "if_branch"}> ({
    ^bb1(%ifcond: i1):
      "scf.yield"() : () -> ()
    }) : () -> ()
    %4 = "scf.if"(%2) <{sym_name = "if_branch_f"}> ({
    ^bb2(%ifcond: i1):
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%0, %arg1) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()