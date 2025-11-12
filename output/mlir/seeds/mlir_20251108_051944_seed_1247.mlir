"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<2x4xi32>) -> tensor<4x4xi32>, sym_name = "tensor_concat_and_add"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<2x4xi32>):
    %0 = "arith.constant"() <{value = 2 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 3 : i64}> : () -> i64
    %2 = "tensor.from_elements"(%0, %1) : (i64, i64) -> tensor<2xi64>
    %3 = "tensor.reshape"(%arg1, %2) : (tensor<2x4xi32>, tensor<2xi64>) -> tensor<4x4xi32>
    %4 = "tensor.concat"(%arg0, %3, %2) : (tensor<4x4xi32>, tensor<4x4xi32>, tensor<2xi64>) -> tensor<6x4xi32>
    %5 = "scf.for"() <{lower_bound = 0 : i32, upper_bound = 6 : i32, step = 1 : i32}> ({
      ^bb1(%iv: i32):
        %6 = "arith.constant"() <{value = 10 : i32}> : () -> i32
        %7 = "arith.addi"(%4, %6) : (tensor<6x4xi32>, i32) -> tensor<6x4xi32>
        "scf.yield"() : () -> ()
    }) : () -> ()
    %8 = "tensor.slice"(%4, %2) : (tensor<6x4xi32>, tensor<2xi64>) -> tensor<4x4xi32>
    "func.return"(%8) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()