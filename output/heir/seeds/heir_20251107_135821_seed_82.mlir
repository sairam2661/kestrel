"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<16xi32>, index) -> tensor<16xi32>, sym_name = "tensor_index_fuzz"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: index):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "scf.for"(%arg1, %1, %1, %0) ({
    ^bb0(%arg2: index, %arg3: i32):
      %4 = "tensor.extract"(%arg0, %arg2) : (tensor<16xi32>, index) -> i32
      %5 = "arith.addi"(%4, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %6 = "tensor.insert"(%5, %arg0, %arg2) : (i32, tensor<16xi32>, index) -> tensor<16xi32>
      "scf.yield"(%6, %5) : (tensor<16xi32>, i32) -> ()
    }) : (index, index, index, tensor<16xi32>, i32) -> tensor<16xi32>
    "func.return"(%2) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()