"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_secret_op_test"}> ({
  ^bb0(%arg0: tensor<4xi32>):
    %0 = "arith.constant"() <{value = dense<10> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "secret.generic"(%arg0, %0) ({
    ^bb0(%arg1: i32, %arg2: i32):
      %2 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %3 = "arith.muli"(%2, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "secret.yield"(%3) : (i32) -> ()
    }) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %4 = "scf.for"() <{lower_bound = 0 : index, upper_bound = 4 : index, step = 1 : index}> ({
    ^bb0(%iv: index):
      %5 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %6 = "tensor.extract"(%1, %iv) : (tensor<4xi32>, index) -> i32
      %7 = "arith.addi"(%6, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %8 = "tensor.insert"(%7, %1, %iv) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
      "scf.yield"(%8) : (tensor<4xi32>) -> ()
    }) : (tensor<4xi32>) -> (tensor<4xi32>)
    "func.return"(%4) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()