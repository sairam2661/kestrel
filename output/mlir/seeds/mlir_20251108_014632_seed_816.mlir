"builtin.module"() ({
  "func.func"() <{function_type = (vector<4xi32>) -> vector<4xi32>, sym_name = "vector_reverse_test"}> ({
  ^bb0(%arg0: vector<4xi32>):
    %0 = "tosa.reverse"(%arg0) <{axis = 0 : i32}> : (vector<4xi32>) -> vector<4xi32>
    %1 = "arith.add"(%arg0, %0) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    "func.return"(%1) : (vector<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()