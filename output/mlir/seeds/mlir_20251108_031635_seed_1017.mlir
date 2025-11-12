"builtin.module"() ({
  "func.func"() <{function_type = (i16, i8) -> (i32, f32), sym_name = "mixed_add_cmp"}> ({
  ^bb0(%arg0: i16, %arg1: i8):
    %0 = "arith.addi"(%arg0, %arg1) : (i16, i8) -> i16
    %1 = "arith.constant"() <{value = 123 : i16}> : i16
    %2 = "arith.cmpi"("slt", %0, %1) : (i16, i16) -> i1
    %3 = "arith.constant"() <{value = 42.0 : f32}> : f32
    %4 = "arith.addf"(%3, %3) : (f32, f32) -> f32
    %5 = "arith.cmpf"("oeq", %4, %4) : (f32, f32) -> i1
    "scf.if"(%2) ({
      ^bb1:
        "scf.if"(%5) ({
          ^bb2:
            "func.return"(%0, %4) : (i16, f32) -> ()
        }, {
          ^bb3:
            "func.return"(%0, %3) : (i16, f32) -> ()
        }) : (i1) -> ()
    }, {
      ^bb4:
        "func.return"(%1, %4) : (i16, f32) -> ()
    }) : (i1) -> ()
  }) : () -> ()
}) : () -> ()