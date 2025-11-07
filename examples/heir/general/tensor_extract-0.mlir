#new_layout = #tensor_ext.new_layout<"{ [] -> [ct, slot] : ct = 0 and 0 <= slot <= 15 }">
#new_layout1 = #tensor_ext.new_layout<"{ [i0] -> [ct, slot] : ct = 0 and (slot - i0) mod 8 = 0 and 0 <= i0 <= 7 and 0 <= slot <= 15 }">
"builtin.module"() ({
  "func.func"() <{arg_attrs = [{tensor_ext.layout = #new_layout1}], function_type = (!secret.secret<tensor<8xi16>>) -> !secret.secret<i16>, res_attrs = [{tensor_ext.layout = #new_layout}], sym_name = "extract_static_indices"}> ({
  ^bb0(%arg0: !secret.secret<tensor<8xi16>>):
    %0 = "arith.constant"() <{value = 3 : index}> : () -> index
    %1 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: tensor<8xi16>):
      %2 = "tensor.extract"(%arg1, %0) {tensor_ext.layout = #new_layout} : (tensor<8xi16>, index) -> i16
      "secret.yield"(%2) : (i16) -> ()
    }) {__argattrs = [{tensor_ext.layout = #new_layout1}], __resattrs = [{tensor_ext.layout = #new_layout1}]} : (!secret.secret<tensor<8xi16>>) -> !secret.secret<i16>
    "func.return"(%1) : (!secret.secret<i16>) -> ()
  }) : () -> ()
}) : () -> ()

