"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi8>, tensor<1x2xi8>) -> tensor<2xi8>, sym_name = "rotate_and_concat"}> ({
    ^bb0(%arg0: tensor<2xi8>, %arg1: tensor<1x2xi8>):
      %0 = "tensor_ext.rotate"(%arg0, %arg1) <{amount = 1}> : (tensor<2xi8>, tensor<1x2xi8>) -> tensor<2xi8>
      %1 = "arith.constant"() <{value = 42 : i8}> : () -> i8
      %2 = "tensor.insert"(%1, %0, %arg1) <{position = [0, 0]}> : (i8, tensor<2xi8>, tensor<1x2xi8>) -> tensor<2xi8>
      %3 = "tensor.extract"(%2, %arg1) <{position = [0, 0]}> : (tensor<2xi8>, tensor<1x2xi8>) -> i8
      %4 = "arith.cmpi"(%3, %arg1) <{predicate = "eq"}> : (i8, tensor<1x2xi8>) -> i1
      "func.return"(%4) : (i1) -> ()
  }) : () -> ()
}) : () -> ()