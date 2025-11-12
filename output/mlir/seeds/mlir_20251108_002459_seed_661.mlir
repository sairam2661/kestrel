"builtin.module"() ({
  "func.func"() <{function_type = (f64, i32) -> (f64, i32), sym_name = "mixed_types_op"}> ({
  ^bb0(%arg0: f64, %arg1: i32):
    %0 = "arith.addf"(%arg0, %arg0) : (f64, f64) -> f64
    %1 = "arith.muli"(%arg1, %arg1) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%arg1, %arg1, "eq") : (i32, i32) -> i1
    %3 = "arith.cmpf"(%0, %0, "oeq") : (f64, f64) -> i1
    %4 = "tosa.const"() <{value = true}> : () -> i1
    %5 = "arith.andi"(%2, %4) : (i1, i1) -> i1
    %6 = "arith.andi"(%3, %5) : (i1, i1) -> i1
    "func.return"(%0, %1) : (f64, i32) -> ()
  }) : () -> ()
}) : () -> ()