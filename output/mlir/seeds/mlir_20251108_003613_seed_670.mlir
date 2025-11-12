"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "complex_operations"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %3 = "arith.constant"() <{value = 2.0 : f32}> : () -> f32
      %4 = "arith.addf"(%arg1, %3) : (f32, f32) -> f32
      %5 = "arith.cmpi"(%2, %1) <{predicate = "gt"}> : (i32, i32) -> i1
      %6 = "arith.cmpf"(%4, %3) <{predicate = "lt"}> : (f32, f32) -> i1
      %7:2 = "scf.if"(%5) ({
        "scf.yield"(%2, %4) : (i32, f32) -> ()
      }, {
        "scf.yield"(%1, %3) : (i32, f32) -> ()
      }) : (i1) -> (i32, f32)
      "func.return"(%7#0, %7#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()