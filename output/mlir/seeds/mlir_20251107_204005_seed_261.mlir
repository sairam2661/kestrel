"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_type_operations"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "scf.if"(%arg0) ({
    ^bb1(%arg2: i32):
      %3 = "arith.cmpi"("slt", %arg2, %0) : (i32, i32) -> i1
      "scf.yield"(%3) : (i1) -> ()
    }, {
    ^bb2:
      %4 = "scf.yield"() : () -> ()
    }) : (i1) -> ()
    %5 = "scf.if"(%2) ({
    ^bb3(%arg3: i1):
      %6 = "arith.cmpi"("slt", %arg1, %1) : (f32, f32) -> i1
      "scf.yield"(%6) : (i1) -> ()
    }, {
    ^bb4:
      %7 = "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "func.return"(%0, %1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()