"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, vector<4xi32>) -> (i32, f32, vector<4xi32>), sym_name = "mixed_types"}> ({
    ^bb0(%arg0: i32, %arg1: f32, %arg2: vector<4xi32>):
      %1 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      %2 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
      %3 = "arith.addi"(%arg2, %arg2) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
      "func.return"(%1, %2, %3) : (i32, f32, vector<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()