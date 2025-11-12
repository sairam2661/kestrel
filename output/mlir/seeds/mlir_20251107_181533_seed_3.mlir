"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, vector<4xi8>) -> (i32, f32), sym_name = "mixed_types_and_vector"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: vector<4xi8>):
    %0 = "tosa.const"() <{value = 100 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 50.0 : f32}> : () -> f32
    %3 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
    %4 = "scf.if"(%1) <{result_type = i32}> ({
    ^bb1(%arg3: i32):
      %5 = "arith.addi"(%arg3, %0) : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> i32
    }) : (i32) -> i32
    "func.return"(%4, %3) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()