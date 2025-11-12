"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, vector<4xf32>) -> (i32, f32, vector<4xf32>), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: vector<4xf32>):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %3 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
    %4 = "arith.constant"() <{value = [1.0, 2.0, 3.0, 4.0]}> : () -> vector<4xf32>
    %5 = "arith.add"(%arg2, %4) : (vector<4xf32>, vector<4xf32>) -> vector<4xf32>
    "func.return"(%1, %3, %5) : (i32, f32, vector<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()