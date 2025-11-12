"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic_with_vectors"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.subi"(%0, %arg0) : (i32, i32) -> i32
      %2 = "vector.type"() <{shape = [8], elementType = i32}> : () -> vector<8xi32>
      %3 = "vector.splat"(%1) <{splatValue = 42 : i32}> : (i32) -> vector<8xi32>
      %4 = "vector.add"(%2, %3) : (vector<8xi32>, vector<8xi32>) -> vector<8xi32>
      %5 = "vector.extract"(%4, %arg1) : (vector<8xi32>, i32) -> i32
      "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()