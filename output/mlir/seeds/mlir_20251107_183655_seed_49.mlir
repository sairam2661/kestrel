"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, tensor<2x3xf32>) -> tensor<2x3xf32>, sym_name = "stress_test"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: tensor<2x3xf32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
    %4 = "transform.named_sequence"() <{name = "complex_seq", attributes = {}}>() : () -> ()
    %5 = "scf.for"() <{lower_bound = 0 : i32, upper_bound = 5 : i32, step = 1 : i32}> ({
      ^bb1(%iv: i32):
        %6 = "arith.addi"(%iv, %2) : (i32, i32) -> i32
        "scf.yield"(%3) : (f32) -> ()
    }) : () -> tensor<2x3xf32>
    "func.return"(%5) : (tensor<2x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()