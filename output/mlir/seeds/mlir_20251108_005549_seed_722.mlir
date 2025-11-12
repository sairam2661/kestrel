"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "complex_select"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %1 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %2 = "arith.cmpi"(%arg0, %arg2) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %3 = "arith.andi"(%1, %2) : (i1, i1) -> i1
    %4 = "arith.select"(%3, %arg1, %arg2) : (i1, i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "mixed_cmp_select"}> ({
  ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
    %1 = "arith.cmpi"(%arg3, %arg4) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %2 = "arith.cmpf"(%arg4, %arg5) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %3 = "arith.andi"(%1, %2) : (i1, i1) -> i1
    %4 = "arith.select"(%3, %arg4, %arg5) : (i1, i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()