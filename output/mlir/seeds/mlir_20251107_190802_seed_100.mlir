"builtin.module"() ({
  "func.func"() <{function_type = (vector<10xi32>, vector<10xi32>) -> vector<10xi1>, sym_name = "vector_cmp"}> ({
  ^bb0(%arg0: vector<10xi32>, %arg1: vector<10xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1) {"predicate" = "eq"} : (vector<10xi32>, vector<10xi32>) -> vector<10xi1>
    "func.return"(%0) : (vector<10xi1>) -> ()
  }) : () -> ()
}) : () -> ()