"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_type_operations"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      %1 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
      %2 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
      %3 = "arith.cmpi"(%arg0, %0, "eq") : (i32, i32) -> i1
      %4 = "arith.cmpf"(%arg1, %2, "oeq") : (f32, f32) -> i1
      %5 = "scf.if"(%3) <{resultTypes = [i32, f32]}> ({
        ^bb1(%arg2: i1):
          %6 = "arith.constant"() <{value = 42 : i32}> : () -> i32
          %7 = "arith.constant"() <{value = 3.140000e+00 : f32}> : () -> f32
          "scf.yield"(%6, %7) : (i32, f32) -> (i32, f32)
      }) : (i32, f32) -> (i32, f32)
      %8 = "scf.if"(%4) <{resultTypes = [i32, f32]}> ({
        ^bb2(%arg3: i1):
          %9 = "arith.constant"() <{value = 99 : i32}> : () -> i32
          %10 = "arith.constant"() <{value = 2.718000e+00 : f32}> : () -> f32
          "scf.yield"(%9, %10) : (i32, f32) -> (i32, f32)
      }) : (i32, f32) -> (i32, f32)
      "func.return"(%5#0, %5#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()