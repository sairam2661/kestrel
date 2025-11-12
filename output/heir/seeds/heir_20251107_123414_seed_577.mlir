"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<4xi32>) -> tensor<4xi32>, sym_name = "process_tensor"}> ({
  ^bb0(%arg0: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 4 : index}> : () -> index
    %3 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %4 = "scf.for"(%0, %1, %2, %arg0) ({
    ^bb0(%arg2: index, %arg3: tensor<4xi32>):
      %5 = "tensor.extract"(%arg3, %arg2) : (tensor<4xi32>, index) -> i32
      %6 = "arith.addi"(%5, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %7 = "tensor.insert"(%6, %arg3, %arg2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
      "scf.yield"(%7) : (tensor<4xi32>) -> ()
    }) : (index, tensor<4xi32>, index, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%4) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()