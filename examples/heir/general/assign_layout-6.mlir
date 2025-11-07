#new_layout = #tensor_ext.new_layout<"{ [i0, i1] -> [ct, slot] : (-3i0 - i1 + ct + 8*floor((slot)/8)) mod 16 = 0 and 0 <= i0 <= 2 and 0 <= i1 <= 2 and 0 <= ct <= 7 and 0 <= slot <= 31 and 8*floor((slot)/8) >= -15 + 3i0 + i1 + slot and 8*floor((slot)/8) >= -14 + 3i0 + slot and 8*floor((slot)/8) <= 3i0 + slot and 8*floor((slot)/8) <= 3i0 + i1 + slot and -39 + 8i1 + 9slot <= 24*floor((3slot)/8) <= 8i1 + 9slot }">
"builtin.module"() ({
  "func.func"() <{function_type = () -> !secret.secret<tensor<3x3xf32>>, res_attrs = [{tensor_ext.layout = #new_layout}], sym_name = "conv2d"}> ({
    %0 = "arith.constant"() <{value = dense<2.000000e+00> : tensor<3x3xf32>}> : () -> tensor<3x3xf32>
    %1 = "secret.generic"() ({
      %2 = "tensor_ext.assign_layout"(%0) <{layout = #new_layout}> {tensor_ext.layout = #new_layout} : (tensor<3x3xf32>) -> tensor<3x3xf32>
      "secret.yield"(%2) : (tensor<3x3xf32>) -> ()
    }) {__resattrs = [{tensor_ext.layout = #new_layout}]} : () -> !secret.secret<tensor<3x3xf32>>
    "func.return"(%1) : (!secret.secret<tensor<3x3xf32>>) -> ()
  }) : () -> ()
}) : () -> ()

