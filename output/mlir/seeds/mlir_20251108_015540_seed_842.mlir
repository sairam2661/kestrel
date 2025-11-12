"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32, vector<10xi8>) -> (f32, i32, vector<10xi8>), sym_name = "mixed_types_test"}> ({
    ^bb0(%arg0: f32, %arg1: i32, %arg2: vector<10xi8>):
      %0 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
      %1 = "arith.cmpi"(%arg1, %arg1, "ne") : (i32, i32) -> i1
      %2 = "arith.cmpf"(%0, %0, "gt") : (f32, f32) -> i1
      %3 = "tosa.const"() <{value = dense<42> : tensor<10xi8>}> : () -> vector<10xi8>
      "func.return"(%0, %arg1, %3) : (f32, i32, vector<10xi8>) -> ()
  }) : () -> ()
}) : () -> ()