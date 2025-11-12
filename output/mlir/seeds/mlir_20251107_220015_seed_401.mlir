"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (f32, i32), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %4 = "arith.addi"(%arg0, %2) : (i32, i32) -> i32
    %5 = "arith.addf"(%arg1, %3) : (f32, f32) -> f32
    %6 = "arith.cmpi"(%arg0, %2, "eq") : (i32, i32) -> i1
    %7 = "arith.cmpf"(%arg1, %3, "lt") : (f32, f32) -> i1
    %8 = "scf.if"(%6) ({
      ^bb0:
        %9 = "arith.addi"(%4, %2) : (i32, i32) -> i32
        "scf.yield"(%9) : (i32) -> i32
    }, {
      ^bb1:
        %10 = "arith.subi"(%4, %2) : (i32, i32) -> i32
        "scf.yield"(%10) : (i32) -> i32
    }) : (i32)
    %11 = "scf.if"(%7) ({
      ^bb0:
        %12 = "arith.addf"(%5, %3) : (f32, f32) -> f32
        "scf.yield"(%12) : (f32) -> f32
    }, {
      ^bb1:
        %13 = "arith.subf"(%5, %3) : (f32, f32) -> f32
        "scf.yield"(%13) : (f32) -> f32
    }) : (f32)
    "func.return"(%11, %8) : (f32, i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "nested_loops"}> ({
  ^bb0(%arg2: i32):
    %0 = "scf.for"(%arg2 : i32) ({
      ^bb0(%i: i32):
        %1 = "arith.addi"(%i, %arg2) : (i32, i32) -> i32
        "arith.constant"() <{value = 1 : i32}> : () -> i32
        "scf.for"(%1 : i32) ({
          ^bb0(%j: i32):
            "arith.addi"(%j, %i) : (i32, i32) -> i32
            "scf.yield"() : () -> ()
        }) : () -> ()
        "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%arg2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()