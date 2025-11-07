"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2x2xi32>, sym_name = "canonicalize_insert_after_constant"}> ({
    %0 = "arith.constant"() <{value = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %4 = "tensor.insert"(%3, %0, %2, %1) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    "func.return"(%4) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

