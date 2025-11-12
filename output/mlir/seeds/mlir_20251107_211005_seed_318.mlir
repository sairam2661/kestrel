"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, vector<4xi8>) -> (i32, f32), sym_name = "stress_test"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: vector<4xi8>):
    %0 = "arith.constant"() <{value = 123 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 0.5 : f32}> : () -> f32
    %3 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
    %4 = "tosa.const"() <{values = dense<1> : tensor<4xi8>}> : () -> tensor<4xi8>
    %5 = "scf.for"(%arg2) <{lower_bound = 0 : index, upper_bound = 4 : index, step = 1 : index}> ({
    ^bb1(%iv: index, %arg2: vector<4xi8>):
      %6 = "arith.constant"() <{value = 1 : i8}> : () -> i8
      %7 = "vector.insertelement"(%arg2, %6, %iv) : (vector<4xi8>, i8, index) -> vector<4xi8>
      "scf.yield"(%7) : (vector<4xi8>) -> ()
    }) : (vector<4xi8>) -> (vector<4xi8>)
    "func.return"(%1, %3) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()