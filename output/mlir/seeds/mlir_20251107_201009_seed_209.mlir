"builtin.module"() ({
  "func.func"() <{function_type = (vector<4xi32>, index) -> i32, sym_name = "vector_loop"}> ({
  ^bb0(%arg0: vector<4xi32>, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 4 : index}> : () -> index
    %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "scf.for"(%0, %1, %1) ({
    ^bb0(%arg2: index):
      %4 = "vector.extract"(%arg0, %arg2) : (vector<4xi32>, index) -> i32
      %5 = "arith.addi"(%2, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (index, index, index) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()