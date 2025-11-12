"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0:2 = "arith.cmpi"(%arg0, %arg1) {"predicate" = "slt"} : (i32, i64) -> (i1, i1)
    %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 100 : i64}> : () -> i64
    %3:2 = "arith.cmpf"(%1, %2) {"predicate" = "oeq"} : (i32, i64) -> (i1, i1)
    %4:3 = "scf.if"(%0#0) ({
      %5 = "arith.addf"(%arg0, %1) : (i32, i32) -> f32
      %6 = "arith.addf"(%arg1, %2) : (i64, i64) -> f32
      "scf.yield"(%0#1, %5, %6) : (i1, f32, f32) -> ()
    }, {
      %7 = "arith.cmpi"(%arg0, %1) {"predicate" = "slt"} : (i32, i32) -> i1
      %8 = "arith.cmpi"(%arg1, %2) {"predicate" = "slt"} : (i64, i64) -> i1
      "scf.yield"(%7, %8) : (i1, i1) -> ()
    }) : (i1) -> (i1, f32, f32)
    "func.return"(%4#0, %4#1) : (i1, f32) -> ()
  }) : () -> ()
}) : () -> ()