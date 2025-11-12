"builtin.module"() ({
  "func.func"() <{function_type = (vector<4xi32>, vector<4xi32>) -> vector<4xi32>, sym_name = "vector_addition"}> ({
  ^bb0(%arg0: vector<4xi32>, %arg1: vector<4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    "func.return"(%0) : (vector<4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "scalar_multiplication"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (vector<4xi32>, i32) -> vector<4xi32>, sym_name = "vector_scalar_multiplication"}> ({
  ^bb0(%arg0: vector<4xi32>, %arg1: i32):
    %0 = "vector.splat"(%arg1) : (i32) -> vector<4xi32>
    %1 = "arith.mulvi"(%arg0, %0) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    "func.return"(%1) : (vector<4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (vector<4xi32>, vector<4xi32>), sym_name = "initialize_vectors"}> ({
  ^bb0():
    %0 = "arith.constant"() <{value = [1, 2, 3, 4]}> : () -> vector<4xi32>
    %1 = "arith.constant"() <{value = [5, 6, 7, 8]}> : () -> vector<4xi32>
    "func.return"(%0, %1) : (vector<4xi32>, vector<4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (vector<4xi32>), sym_name = "main"}> ({
  ^bb0():
    %0 = "func.call"() <{callee = @initialize_vectors}> : () -> (vector<4xi32>, vector<4xi32>)
    %1 = "func.call"(%0#0, %0#1) <{callee = @vector_addition}> : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %2 = "arith.constant"() <{value = 2}> : () -> i32
    %3 = "func.call"(%1, %2) <{callee = @vector_scalar_multiplication}> : (vector<4xi32>, i32) -> vector<4xi32>
    "func.return"(%3) : (vector<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()