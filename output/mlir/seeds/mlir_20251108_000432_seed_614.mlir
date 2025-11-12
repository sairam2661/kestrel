"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "fuzz_scf_nested_loop"}> ({
  ^bb0():
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    "scf.for"(%0) <{lower_bound = 0 : i32, upper_bound = 10 : i32, step = 1 : i32}> ({
    ^bb1(%i: i32):
      "scf.for"(%i) <{lower_bound = 0 : i32, upper_bound = 5 : i32, step = 1 : i32}> ({
      ^bb2(%j: i32):
        %1 = "arith.cmpi"(%i, %j, "slt") : (i32, i32) -> i1
        "scf.if"(%1) ({
        ^bb3():
          %2 = "arith.addf"(%i, %j) : (i32, i32) -> f32
          "scf.yield"() : () -> ()
        }) : () -> ()
        "scf.yield"() : () -> ()
      }) : () -> ()
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()