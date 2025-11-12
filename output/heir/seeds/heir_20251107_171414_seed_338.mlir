"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %const1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %const2 = "arith.constant"() <{value = 100 : i64}> : () -> i64
    %ext1 = "arith.extsi"(%arg0) : (i32) -> i64
    %add1 = "arith.addi"(%arg0, %const1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %muli = "arith.muli"(%ext1, %arg1) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
    %addi = "arith.addi"(%add1, %const1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %cmpl = "arith.cmpi"(%arg0, %const1) <{predicate = 4}> : (i32, i32) -> i1
    %sel = "arith.select"(%cmpl, %addi, %const1) : (i1, i32, i32) -> i32
    "func.return"(%sel, %muli) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()