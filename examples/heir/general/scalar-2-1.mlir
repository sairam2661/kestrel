#new_layout = #tensor_ext.new_layout<"{ [] -> [ct, slot] : ct = 0 and 0 <= slot <= 1023 }">
"builtin.module"() ({
  "func.func"() <{arg_attrs = [{tensor_ext.layout = #new_layout}], function_type = (!secret.secret<i16>) -> !secret.secret<i16>, res_attrs = [{tensor_ext.layout = #new_layout}], sym_name = "scalar_mul"}> ({
  ^bb0(%arg0: !secret.secret<i16>):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: i16):
      %1 = "arith.muli"(%arg1, %arg1) <{overflowFlags = #arith.overflow<none>}> {tensor_ext.layout = #new_layout} : (i16, i16) -> i16
      "secret.yield"(%1) : (i16) -> ()
    }) {__argattrs = [{tensor_ext.layout = #new_layout}], __resattrs = [{tensor_ext.layout = #new_layout}]} : (!secret.secret<i16>) -> !secret.secret<i16>
    "func.return"(%0) : (!secret.secret<i16>) -> ()
  }) : () -> ()
}) : () -> ()

