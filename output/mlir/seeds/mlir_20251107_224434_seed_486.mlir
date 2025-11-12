"builtin.module"() ({
  "func.func"() <{function_type = (vector<4xi32>, i32) -> vector<4xi32>, sym_name = "vector_add_scalar"}> ({
  ^bb0(%arg0: vector<4xi32>, %arg1: i32):
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %0 = "arith.addi"(%arg1, %c1_i32) : (i32, i32) -> i32
    %1 = "scf.for"(%c0_i32) <{lower_bound = 0 : i32, upper_bound = 4 : i32, step = 1 : i32}> ({
    ^bb1(%iv: i32):
      %2 = "arith.addi"(%0, %iv) : (i32, i32) -> i32
      %3 = "arith.addi"(%arg0, %2) : (vector<4xi32>, i32) -> vector<4xi32>
      "scf.yield"(%3) : (vector<4xi32>) -> ()
    }) : (vector<4xi32>) -> (vector<4xi32>)
    "func.return"(%1) : (vector<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()