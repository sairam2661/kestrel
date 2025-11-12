"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi48>) -> tensor<2x2xi48>, sym_name = "test_all_i48_converted"}> ({
  ^bb0(%arg1: tensor<2x2xi48>):
    %4 = "tosa.add"(%arg1, %arg1) : (tensor<2x2xi48>, tensor<2x2xi48>) -> tensor<2x2xi48>
    %5 = "tosa.sub"(%4, %arg1) : (tensor<2x2xi48>, tensor<2x2xi48>) -> tensor<2x2xi48>
    "func.return"(%5) : (tensor<2x2xi48>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "test_other_types_not_converted"}> ({
  ^bb0(%arg0: tensor<2x2xi32>):
    %2 = "tosa.add"(%arg0, %arg0) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %3 = "tosa.sub"(%2, %arg0) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%3) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (i48, tensor<2xi48>), sym_name = "test_attrs_converted"}> ({
    %0 = "arith.constant"() <{value = 0 : i48}> : () -> i48
    %1 = "tosa.const"() <{values = dense<0> : tensor<2xi48>}> : () -> tensor<2xi48>
    "func.return"(%0, %1) : (i48, tensor<2xi48>) -> ()
  }) : () -> ()
}) : () -> ()

