"builtin.module"() ({
  "func.func"() <{function_type = (vector<4xi32>, vector<4xi32>) -> vector<4xi32>, sym_name = "vector_cmp_and_add"}> ({
  ^bb0(%arg0: vector<4xi32>, %arg1: vector<4xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (vector<4xi32>, vector<4xi32>) -> vector<4xi1>
    %1 = "arith.select"(%0, %arg0, %arg1) : (vector<4xi1>, vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %2 = "arith.addi"(%1, %arg0) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    "func.return"(%2) : (vector<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()