#new_layout = #tensor_ext.new_layout<"{ [i0] -> [ct, slot] : ct = 0 and (-i0 + slot) mod 1024 = 0 and 0 <= i0 <= 783 and 0 <= slot <= 1023 }">
#new_layout1 = #tensor_ext.new_layout<"{ [i0, i1] -> [ct, slot] : i0 = 0 and ct = 0 and (-i1 + slot) mod 1024 = 0 and 0 <= i1 <= 783 and 0 <= slot <= 1023 }">
"builtin.module"() ({
  "func.func"() <{arg_attrs = [{tensor_ext.layout = #new_layout1}], function_type = (!secret.secret<tensor<1x784xf32>>) -> !secret.secret<tensor<784xf32>>, res_attrs = [{tensor_ext.layout = #new_layout}], sym_name = "main"}> ({
  ^bb0(%arg0: !secret.secret<tensor<1x784xf32>>):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: tensor<1x784xf32>):
      %1 = "tensor.collapse_shape"(%arg1) <{reassociation = [[0, 1]]}> {tensor_ext.layout = #new_layout} : (tensor<1x784xf32>) -> tensor<784xf32>
      "secret.yield"(%1) : (tensor<784xf32>) -> ()
    }) {__argattrs = [{tensor_ext.layout = #new_layout1}], __resattrs = [{tensor_ext.layout = #new_layout}]} : (!secret.secret<tensor<1x784xf32>>) -> !secret.secret<tensor<784xf32>>
    "func.return"(%0) : (!secret.secret<tensor<784xf32>>) -> ()
  }) : () -> ()
}) : () -> ()

