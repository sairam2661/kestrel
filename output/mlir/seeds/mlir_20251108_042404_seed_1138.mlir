"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "test_complex_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.cmpi"(%arg0, %arg0, "eq") : (i32, i32) -> i1
    %1 = "scf.if"(%0) ({
      %2 = "arith.cmpf"(%arg1, %arg1, "eq") : (f32, f32) -> i1
      %3 = "scf.if"(%2) ({
        %4 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
        %5 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
        "scf.yield"(%4, %5) : (i32, f32) -> ()
      }, {
        "scf.yield"(%arg0, %arg1) : (i32, f32) -> ()
      }) : (i1) -> (i32, f32)
      "scf.yield"(%3#0, %3#1) : (i32, f32) -> ()
    }, {
      "scf.yield"(%arg0, %arg1) : (i32, f32) -> ()
    }) : (i1) -> (i32, f32)
    "func.return"(%1#0, %1#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()