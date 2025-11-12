"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i64, f64), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %3 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
    %4 = "arith.cmpi"(%1, %0) <{predicate = "sgt"}> : (i32, i32) -> i1
    %5 = "arith.cmpi"(%1, %0) <{predicate = "slt"}> : (i32, i32) -> i1
    %6 = "arith.cmpi"(%1, %0) <{predicate = "eq"}> : (i32, i32) -> i1
    %7 = "arith.cmpi"(%1, %0) <{predicate = "ne"}> : (i32, i32) -> i1
    %8 = "arith.cmpi"(%1, %0) <{predicate = "sge"}> : (i32, i32) -> i1
    %9 = "arith.cmpi"(%1, %0) <{predicate = "sle"}> : (i32, i32) -> i1
    %10 = "arith.cmpf"(%3, %2) <{predicate = "one"}> : (f32, f32) -> i1
    %11 = "arith.cmpf"(%3, %2) <{predicate = "ord"}> : (f32, f32) -> i1
    %12 = "arith.cmpf"(%3, %2) <{predicate = "ueq"}> : (f32, f32) -> i1
    %13 = "arith.cmpf"(%3, %2) <{predicate = "ult"}> : (f32, f32) -> i1
    "scf.if"(%4) ({
    ^bb1(%arg2: i1):
      %14 = "arith.constant"() <{value = 1 : i64}> : () -> i64
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "scf.if"(%5) ({
    ^bb2(%arg3: i1):
      %15 = "arith.constant"() <{value = 2 : i64}> : () -> i64
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "func.return"(%1, %3) : (f32, f32) -> ()
  }) : () -> ()
}) : () -> ()