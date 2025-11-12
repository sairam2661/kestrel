"builtin.module"() ({
  "func.func"() <{function_type = (vector<4xi32>, vector<4xi32>) -> vector<4xi64>, sym_name = "test_vector_zext"}> ({
  ^bb0(%arg0: vector<4xi32>, %arg1: vector<4xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %2 = "arith.cmpf"(%arg0, %arg1) <{predicate = "oeq"}> : (vector<4xi32>, vector<4xi32>) -> vector<4xi1>
    %3 = "arith.select"(%2, %1, %0) <{operandType = vector<4xi32>}> : (vector<4xi1>, vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %4 = "arith.zext"(%3) : (vector<4xi32>) -> vector<4xi64>
    "func.return"(%4) : (vector<4xi64>) -> ()
  }) : () -> ()
}) : () -> ()