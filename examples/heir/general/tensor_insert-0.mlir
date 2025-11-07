#new_layout = #tensor_ext.new_layout<"{ [i0] -> [ct, slot] : ct = 0 and (slot - i0) mod 8 = 0 and 0 <= i0 <= 7 and 0 <= slot <= 15 }">
#new_layout1 = #tensor_ext.new_layout<"{ [] -> [ct, slot] : ct = 0 and 0 <= slot <= 15 }">
"builtin.module"() ({
  "func.func"() <{arg_attrs = [{tensor_ext.layout = #new_layout}], function_type = (!secret.secret<tensor<8xi16>>) -> !secret.secret<tensor<8xi16>>, res_attrs = [{tensor_ext.layout = #new_layout}], sym_name = "insert_cleartext_into_secret"}> ({
  ^bb0(%arg7: !secret.secret<tensor<8xi16>>):
    %6 = "arith.constant"() <{value = 3 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : i16}> : () -> i16
    %8 = "secret.generic"(%arg7) ({
    ^bb0(%arg8: tensor<8xi16>):
      %9 = "tensor.insert"(%7, %arg8, %6) {tensor_ext.layout = #new_layout} : (i16, tensor<8xi16>, index) -> tensor<8xi16>
      "secret.yield"(%9) : (tensor<8xi16>) -> ()
    }) {__argattrs = [{tensor_ext.layout = #new_layout}], __resattrs = [{tensor_ext.layout = #new_layout}]} : (!secret.secret<tensor<8xi16>>) -> !secret.secret<tensor<8xi16>>
    "func.return"(%8) : (!secret.secret<tensor<8xi16>>) -> ()
  }) : () -> ()
  "func.func"() <{arg_attrs = [{tensor_ext.layout = #new_layout}, {}], function_type = (!secret.secret<tensor<8xi16>>, index) -> !secret.secret<tensor<8xi16>>, res_attrs = [{tensor_ext.layout = #new_layout}], sym_name = "insert_cleartext_into_secret_dynamic"}> ({
  ^bb0(%arg4: !secret.secret<tensor<8xi16>>, %arg5: index):
    %3 = "arith.constant"() <{value = 7 : i16}> : () -> i16
    %4 = "secret.generic"(%arg4) ({
    ^bb0(%arg6: tensor<8xi16>):
      %5 = "tensor.insert"(%3, %arg6, %arg5) {tensor_ext.layout = #new_layout} : (i16, tensor<8xi16>, index) -> tensor<8xi16>
      "secret.yield"(%5) : (tensor<8xi16>) -> ()
    }) {__argattrs = [{tensor_ext.layout = #new_layout}], __resattrs = [{tensor_ext.layout = #new_layout}]} : (!secret.secret<tensor<8xi16>>) -> !secret.secret<tensor<8xi16>>
    "func.return"(%4) : (!secret.secret<tensor<8xi16>>) -> ()
  }) : () -> ()
  "func.func"() <{arg_attrs = [{tensor_ext.layout = #new_layout}, {tensor_ext.layout = #new_layout1}], function_type = (!secret.secret<tensor<8xi16>>, !secret.secret<i16>) -> !secret.secret<tensor<8xi16>>, res_attrs = [{tensor_ext.layout = #new_layout}], sym_name = "insert_secret_into_secret"}> ({
  ^bb0(%arg0: !secret.secret<tensor<8xi16>>, %arg1: !secret.secret<i16>):
    %0 = "arith.constant"() <{value = 3 : index}> : () -> index
    %1 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<8xi16>, %arg3: i16):
      %2 = "tensor.insert"(%arg3, %arg2, %0) {tensor_ext.layout = #new_layout} : (i16, tensor<8xi16>, index) -> tensor<8xi16>
      "secret.yield"(%2) : (tensor<8xi16>) -> ()
    }) {__argattrs = [{tensor_ext.layout = #new_layout}, {tensor_ext.layout = #new_layout1}], __resattrs = [{tensor_ext.layout = #new_layout}]} : (!secret.secret<tensor<8xi16>>, !secret.secret<i16>) -> !secret.secret<tensor<8xi16>>
    "func.return"(%1) : (!secret.secret<tensor<8xi16>>) -> ()
  }) : () -> ()
}) : () -> ()

