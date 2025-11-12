"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> i1, sym_name = "complex_cmpi"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 2 : i64}> : (index, index) -> i1
    %1 = "arith.cmpi"(%arg0, %arg1) <{predicate = 0 : i64}> : (index, index) -> i1
    %2 = "arith.andi"(%0, %1) : (i1, i1) -> i1
    "func.return"(%2) : (i1) -> ()
  }) : () -> ()
}) : () -> ()