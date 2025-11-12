"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "arith.cmpi"(%0, %arg0, "gt") : (i32, i32) -> i1
    %3 = "arith.cmpf"(%1, %arg1, "gt") : (f32, f32) -> i1
    %4 = "scf.if"(%2) ({
      "scf.if"(%3) ({
        %5 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
        %6 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
        "scf.yield"(%5, %6) : (i32, f32) -> ()
      }, {
        "scf.yield"(%arg0, %arg1) : (i32, f32) -> ()
      }) : (i1) -> (i32, f32)
    }, {
      "scf.yield"(%arg0, %arg1) : (i32, f32) -> ()
    }) : (i1) -> (i32, f32)
    "func.return"(%4) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()