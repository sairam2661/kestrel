"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arith_and_control"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %1 = "arith.select"(%0, %arg0, %arg1) : (i1, i32, i32) -> i32
    %2 = "scf.for"(%arg0) <{lowerBound = 0 : index, upperBound = 10 : index, step = 1 : index}> ({
    ^bb0(%iv: index):
      %3 = "arith.addi"(%iv, %1) <{overflowFlags = #arith_overflownone}> : (index, i32) -> i32
      "scf.yield"() : () -> ()
    }) : (index) -> ()
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()