"builtin.module"() ({
  "func.func"() <{function_type = (tensor<64xi8>, index) -> tensor<64xi8>, sym_name = "nested_loop_with_conditional"}> ({
  ^bb0(%arg0: tensor<64xi8>, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 64 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "scf.for"(%0, %1, %2, %arg0) ({
    ^bb0(%arg2: index, %arg3: tensor<64xi8>):
      %4 = "scf.if"(%arg2) ({
      ^bb0:
        %5 = "arith.constant"() <{value = 1 : i8}> : () -> i8
        %6 = "tensor.insert"(%5, %arg3, %arg2) : (i8, tensor<64xi8>, index) -> tensor<64xi8>
        "scf.yield"(%6) : (tensor<64xi8>) -> ()
      }) {
      } : tensor<64xi8> -> tensor<64xi8>
      "scf.yield"(%4) : (tensor<64xi8>) -> ()
    }) : (index, index, index, tensor<64xi8>) -> tensor<64xi8>
    "func.return"(%3) : (tensor<64xi8>) -> ()
  }) : () -> ()
}) : () -> ()