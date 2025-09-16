"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (i1, i1, i1), sym_name = "different_attributes"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 2 : i64}> : (index, index) -> i1
    %1 = "arith.cmpi"(%arg0, %arg1) <{predicate = 1 : i64}> : (index, index) -> i1
    %2 = "arith.cmpi"(%arg0, %arg1) <{predicate = 1 : i64}> : (index, index) -> i1
    "func.return"(%0, %1, %2) : (i1, i1, i1) -> ()
  }) : () -> ()
}) : () -> ()

