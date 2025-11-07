#new_layout = #tensor_ext.new_layout<"{ [i0] -> [ct, slot] : ct = 0 and (-i0 + slot) mod 16 = 0 and 0 <= i0 <= 15 and 0 <= slot <= 31 }">
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "repeat_vector"}> ({
    %0 = "arith.constant"() <{value = dense<1> : tensor<16xi16>}> : () -> tensor<16xi16>
    %1 = "secret.generic"() ({
      %2 = "tensor_ext.assign_layout"(%0) <{layout = #new_layout}> {tensor_ext.layout = #new_layout} : (tensor<16xi16>) -> tensor<16xi16>
      "secret.yield"(%2) : (tensor<16xi16>) -> ()
    }) {__resattrs = [{tensor_ext.layout = #new_layout}]} : () -> !secret.secret<tensor<16xi16>>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

