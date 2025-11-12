"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "mixed_arith_scf"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%0, %arg1, "slt") : (i32, i32) -> i1
    "scf.if"(%1) ({
      ^bb1(%arg2: i1):
        %3 = "arith.addi"(%0, %0) : (i32, i32) -> i32
        "scf.yield"(%3) : (i32) -> ()
    }, {
      ^bb2(%arg2: i1):
        %3 = "arith.cmpi"(%0, %arg1, "sgt") : (i32, i32) -> i1
        "scf.if"(%3) ({
          ^bb3(%arg4: i1):
            %5 = "arith.addf"(%0, %0) : (i32, i32) -> f32
            "scf.yield"(%5) : (f32) -> ()
        }, {
          ^bb4(%arg4: i1):
            %5 = "arith.constant"() <{value = 42 : i32}> : () -> i32
            "scf.yield"(%5) : (i32) -> ()
        }) : (i1) -> (f32, i32)
        "scf.yield"(%3) : (f32, i32) -> ()
    }) : (i1) -> (i32, f32)
    "func.return"(%0) : (i32) -> ()
  }) : () -> (i32)
}) : () -> ()