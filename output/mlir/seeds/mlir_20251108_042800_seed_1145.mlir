"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0:2 = "scf.if"(%arg0) ({
      %1:2 = "scf.if"(%arg1) ({
        %2 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
        %3 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
        "scf.yield"(%2, %3) : (i32, i32) -> ()
      }, {
        %4 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
        %5 = "arith.divsi"(%arg0, %arg1) <{overflow = #arith_overflow_modesat}> : (i32, i32) -> i32
        "scf.yield"(%4, %5) : (i32, i32) -> ()
      }) : (i1) -> (i32, i32)
      "scf.yield"(%0#1, %0#0) : (i32, i32) -> ()
    }, {
      "scf.yield"(%arg0, %arg1) : (i32, i32) -> ()
    }) : (i1) -> (i32, i32)
    "func.return"(%0#0, %0#1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()