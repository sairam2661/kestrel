"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, i32) -> tensor<4x4xi32>, sym_name = "rotate_test"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = -1 : i32}> : () -> i32
    %2 = "scf.for"(%arg0) <{lower_bound = 0 : i32, upper_bound = 4 : i32, step = 1 : i32}> ({
    ^bb1(%arg2: tensor<4x4xi32>, %iv: i32):
      %3 = "scf.for"(%arg2) <{lower_bound = 0 : i32, upper_bound = 4 : i32, step = 1 : i32}> ({
      ^bb2(%arg3: tensor<4x4xi32>, %jv: i32):
        %4 = "tensor_ext.rotate"(%arg3, %0) : (tensor<4x4xi32>, i32) -> tensor<4x4xi32>
        %5 = "tensor_ext.rotate"(%4, %1) : (tensor<4x4xi32>, i32) -> tensor<4x4xi32>
        "scf.yield"(%5) : (tensor<4x4xi32>) -> ()
      }) : (tensor<4x4xi32>) -> tensor<4x4xi32>
      "scf.yield"(%3) : (tensor<4x4xi32>) -> ()
    }) : (tensor<4x4xi32>) -> tensor<4x4xi32>
    "func.return"(%2) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()