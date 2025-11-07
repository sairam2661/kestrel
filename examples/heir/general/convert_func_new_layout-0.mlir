#new_layout = #tensor_ext.new_layout<"{ [i0, i1] -> [ct, slot] : ct = 0 and (-32i0 - i1 + slot) mod 1024 = 0 and 0 <= i0 <= 31 and 0 <= i1 <= 31 and 0 <= slot <= 1023 }">
"builtin.module"() ({
  "func.func"() <{arg_attrs = [{tensor_ext.layout = #new_layout}, {tensor_ext.layout = #new_layout}], function_type = (!secret.secret<tensor<32x32xi16>>, !secret.secret<tensor<32x32xi16>>) -> !secret.secret<tensor<32x32xi16>>, res_attrs = [{tensor_ext.layout = #new_layout}], sym_name = "minimal_example"}> ({
  ^bb0(%arg0: !secret.secret<tensor<32x32xi16>>, %arg1: !secret.secret<tensor<32x32xi16>>):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<32x32xi16>, %arg3: tensor<32x32xi16>):
      %1 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith.overflow<none>}> {tensor_ext.layout = #new_layout} : (tensor<32x32xi16>, tensor<32x32xi16>) -> tensor<32x32xi16>
      "secret.yield"(%1) : (tensor<32x32xi16>) -> ()
    }) {__argattrs = [{tensor_ext.layout = #new_layout}, {tensor_ext.layout = #new_layout}], __resattrs = [{tensor_ext.layout = #new_layout}]} : (!secret.secret<tensor<32x32xi16>>, !secret.secret<tensor<32x32xi16>>) -> !secret.secret<tensor<32x32xi16>>
    "func.return"(%0) : (!secret.secret<tensor<32x32xi16>>) -> ()
  }) : () -> ()
}) : () -> ()

