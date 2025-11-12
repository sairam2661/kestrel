"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (), sym_name = "mixedDialectsTest"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
      %2 = "arith.cmpi"("gt", %0, %arg0) : (i32, i32) -> i1
      %3 = "arith.cmpf"("oeq", %1, %arg1) : (f32, f32) -> i1
      "scf.if"(%2) ({
        ^bb1(%arg2: i1):
          "scf.if"(%3) ({
            ^bb2(%arg3: i1):
              "func.return"() : () -> ()
          }) : () -> ()
            "func.return"() : () -> ()
      }) : () -> ()
    }) : () -> ()
}) : () -> ()