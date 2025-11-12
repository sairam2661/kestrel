"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xf32>) -> tensor<3x3xf32>, sym_name = "fuzz_spirv_func"}> ({
  ^bb0(%arg0: tensor<3x3xf32>):
    %0 = "arith.constant"() <{value = dense<0.0> : tensor<3x3xf32>}> : () -> tensor<3x3xf32>
    %1 = "arith.addf"(%arg0, %0) : (tensor<3x3xf32>, tensor<3x3xf32>) -> tensor<3x3xf32>
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %5 = "scf.for"() <{lower_bound = 0 : i32, upper_bound = 3 : i32, step = 1 : i32}> ({
    ^bb1(%iv: i32):
      %6 = "scf.for"() <{lower_bound = 0 : i32, upper_bound = 3 : i32, step = 1 : i32}> ({
      ^bb2(%jv: i32):
        %7 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
        %8 = "arith.mulif"(%1, %7) : (tensor<3x3xf32>, f32) -> tensor<3x3xf32>
        "scf.yield"() : () -> ()
      }) : () -> ()
      "scf.yield"() : () -> ()
    }) : () -> ()
    %9 = "spirv.ReturnValue"(%1) : (tensor<3x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()