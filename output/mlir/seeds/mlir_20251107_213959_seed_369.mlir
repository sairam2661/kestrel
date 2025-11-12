"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.cmpi"("slt", %arg0, %arg1) : (i32, i32) -> i1
    "scf.if"(%0) ({
    ^bb1(%arg2: i1):
      %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : () -> ()
    %2 = "arith.cmpi"("slt", %arg1, %arg0) : (i32, i32) -> i1
    "scf.if"(%2) ({
    ^bb2(%arg3: i1):
      %3 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : () -> ()
    %4 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()