"builtin.module"() ({
  "func.func"() <{function_type = (vector<4xf32>, vector<4xf32>) -> vector<4xi32>, sym_name = "vector_logic_combine"}> ({
  ^bb0(%arg0: vector<4xf32>, %arg1: vector<4xf32>):
    %0 = "tosa.const"() <{value = dense<0.000000e+00> : vector<4xf32>}> : () -> vector<4xf32>
    %1 = "tosa.const"() <{value = dense<1.000000e+00> : vector<4xf32>}> : () -> vector<4xf32>
    %2 = "tosa.add"(%arg0, %1) : (vector<4xf32>, vector<4xf32>) -> vector<4xf32>
    %3 = "tosa.sub"(%arg1, %0) : (vector<4xf32>, vector<4xf32>) -> vector<4xf32>
    %4 = "tosa.mul"(%2, %3) : (vector<4xf32>, vector<4xf32>) -> vector<4xf32>
    %5 = "tosa.div"(%4, %1) : (vector<4xf32>, vector<4xf32>) -> vector<4xf32>
    %6 = "tosa.sqrt"(%5) : (vector<4xf32>) -> vector<4xf32>
    "func.return"(%6) : (vector<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()