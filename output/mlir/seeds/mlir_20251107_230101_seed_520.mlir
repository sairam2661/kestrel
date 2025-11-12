"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (f32, i32), sym_name = "mixedDialects"}> ({
    ^bb0(%arg0: f32, %arg1: i32):
      %0 = "arith.constant"() <{value = 42.0 : f32}> : () -> f32
      %1 = "arith.addf"(%arg0, %0) : (f32, f32) -> f32
      %2 = "arith.cmpf"(%arg0, %0) <{predicate = "oeq"}> : (f32, f32) -> i1
      %3 = "scf.if"(%2) <{results = i32}> ({
        ^bb1(%rcond: i1):
          %4 = "arith.addi"(%arg1, 1) : (i32, i32) -> i32
          "scf.yield"(%4) : (i32) -> i32
      }) : (i32)
      "func.return"(%1, %3) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()