"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, tensor<2x3xi64>) -> (i32, f32), sym_name = "mixed_types"}> ({
    ^bb0(%arg0: i32, %arg1: f32, %arg2: tensor<2x3xi64>):
      %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %2 = "arith.constant"() <{value = 5.5 : f32}> : () -> f32
      %3 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
      %4 = "scf.if"(%arg0) <{sym_name = "if_condition"}> ({
        ^bb1(%arg3: i32):
          %5 = "arith.constant"() <{value = 20 : i32}> : () -> i32
          "scf.yield"(%5) : (i32) -> i32
      }) : (i32) -> i32
      %6 = "func.call"() <{callee = @another_func, arguments = [tensor<2x3xi64>]}> : () -> tensor<2x3xi64>
      "func.return"(%1, %3) : (i32, f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2x3xi64>) -> tensor<2x3xi64>, sym_name = "another_func"}> ({
    ^bb0(%arg0: tensor<2x3xi64>):
      "func.return"(%arg0) : (tensor<2x3xi64>) -> ()
  }) : () -> ()
}) : () -> ()