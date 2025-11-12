"builtin.module"() ({
  "func.func"() <{function_type = (vector<4x2xi32>, vector<4x2xi32>) -> vector<4x2xi32>, sym_name = "vector_add_mixed_types"}> ({
  ^bb0(%arg0: vector<4x2xi32>, %arg1: vector<4x2xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (vector<4x2xi32>, vector<4x2xi32>) -> vector<4x2xi32>
    %1 = "arith.const"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = -2 : i32}> : () -> i32
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.cmpi"(%3, %3) <{predicate = "eq"}> : (i32, i32) -> i1
    "func.return"(%0) : (vector<4x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()