"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>, index) -> tensor<8xi32>, sym_name = "tensor_mutation_with_nested_loops"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>, %arg2: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 8 : index}> : () -> index
    %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = -1 : i32}> : () -> i32
    %5 = "scf.for"(%0, %2, %1, %arg0) ({
    ^bb0(%arg3: index, %arg4: tensor<8xi32>):
      %6 = "scf.for"(%0, %2, %1, %arg4) ({
      ^bb0(%arg5: index, %arg6: tensor<8xi32>):
        %7 = "tensor.insert"(%3, %arg6, %arg5) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
        "scf.yield"(%7) : (tensor<8xi32>) -> ()
      }) : (index, index, index, tensor<8xi32>) -> tensor<8xi32>
      %8 = "tensor.insert"(%4, %arg5, %arg3) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
      "scf.yield"(%8) : (tensor<8xi32>) -> ()
    }) : (index, index, index, tensor<8xi32>) -> tensor<8xi32>
    "func.return"(%5) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()