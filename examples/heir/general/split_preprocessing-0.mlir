#new_layout = #tensor_ext.new_layout<"{ [i0] -> [ct, slot] : (i0 - slot) mod 1024 = 0 and i0 >= 0 and 0 >= i0 and slot >= 0 and 1023 >= slot and ct = 0 }">
"builtin.module"() ({
  "func.func"() <{arg_attrs = [{tensor_ext.layout = #new_layout}], function_type = (!secret.secret<tensor<4xi32>>) -> !secret.secret<tensor<4xi32>>, res_attrs = [{tensor_ext.layout = #new_layout}], sym_name = "hoist_one_assign"}> ({
  ^bb0(%arg0: !secret.secret<tensor<4xi32>>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "tensor_ext.assign_layout"(%0) <{layout = #new_layout}> : (tensor<4xi32>) -> tensor<4xi32>
    %2 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: tensor<4xi32>):
      %3 = "arith.addi"(%arg1, %1) <{overflowFlags = #arith.overflow<none>}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      "secret.yield"(%3) : (tensor<4xi32>) -> ()
    }) : (!secret.secret<tensor<4xi32>>) -> !secret.secret<tensor<4xi32>>
    "func.return"(%2) : (!secret.secret<tensor<4xi32>>) -> ()
  }) : () -> ()
}) : () -> ()

