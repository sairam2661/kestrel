"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi1>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "selectv2"}> ({
  ^bb0(%arg21: tensor<2xi1>, %arg22: tensor<2xi32>, %arg23: tensor<2xi32>):
    %7 = "chlo.broadcast_select"(%arg21, %arg22, %arg23) : (tensor<2xi1>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%7) : (tensor<2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<i1>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "selectv2_pred_scalar"}> ({
  ^bb0(%arg18: tensor<i1>, %arg19: tensor<2xi32>, %arg20: tensor<2xi32>):
    %6 = "chlo.broadcast_select"(%arg18, %arg19, %arg20) : (tensor<i1>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%6) : (tensor<2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<i1>, tensor<8x1xi32>, tensor<2x8x8xi32>) -> tensor<2x8x8xi32>, sym_name = "selectv2_broadcast_then"}> ({
  ^bb0(%arg15: tensor<i1>, %arg16: tensor<8x1xi32>, %arg17: tensor<2x8x8xi32>):
    %5 = "chlo.broadcast_select"(%arg15, %arg16, %arg17) : (tensor<i1>, tensor<8x1xi32>, tensor<2x8x8xi32>) -> tensor<2x8x8xi32>
    "func.return"(%5) : (tensor<2x8x8xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<i1>, tensor<2x8x8xi32>, tensor<8x1xi32>) -> tensor<2x8x8xi32>, sym_name = "selectv2_broadcast_else"}> ({
  ^bb0(%arg12: tensor<i1>, %arg13: tensor<2x8x8xi32>, %arg14: tensor<8x1xi32>):
    %4 = "chlo.broadcast_select"(%arg12, %arg13, %arg14) : (tensor<i1>, tensor<2x8x8xi32>, tensor<8x1xi32>) -> tensor<2x8x8xi32>
    "func.return"(%4) : (tensor<2x8x8xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<1xi1>, tensor<2x8x8xi32>, tensor<2x8x8xi32>) -> tensor<2x8x8xi32>, sym_name = "selectv2_broadcast_pred"}> ({
  ^bb0(%arg9: tensor<1xi1>, %arg10: tensor<2x8x8xi32>, %arg11: tensor<2x8x8xi32>):
    %3 = "chlo.broadcast_select"(%arg9, %arg10, %arg11) : (tensor<1xi1>, tensor<2x8x8xi32>, tensor<2x8x8xi32>) -> tensor<2x8x8xi32>
    "func.return"(%3) : (tensor<2x8x8xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<3xi1>, tensor<2x3xf16>, tensor<2x3xf16>) -> tensor<2x3xf16>, sym_name = "selectv2_broadcast_tensor_pred"}> ({
  ^bb0(%arg6: tensor<3xi1>, %arg7: tensor<2x3xf16>, %arg8: tensor<2x3xf16>):
    %2 = "chlo.broadcast_select"(%arg6, %arg7, %arg8) : (tensor<3xi1>, tensor<2x3xf16>, tensor<2x3xf16>) -> tensor<2x3xf16>
    "func.return"(%2) : (tensor<2x3xf16>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<8x1x1xi1>, tensor<1x8x1xi32>, tensor<1x1x8xi32>) -> tensor<8x8x8xi32>, sym_name = "selectv2_broadcast_all"}> ({
  ^bb0(%arg3: tensor<8x1x1xi1>, %arg4: tensor<1x8x1xi32>, %arg5: tensor<1x1x8xi32>):
    %1 = "chlo.broadcast_select"(%arg3, %arg4, %arg5) : (tensor<8x1x1xi1>, tensor<1x8x1xi32>, tensor<1x1x8xi32>) -> tensor<8x8x8xi32>
    "func.return"(%1) : (tensor<8x8x8xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<1xi1>, tensor<2x?x8xi32>, tensor<2x8x8xi32>) -> tensor<2x?x8xi32>, sym_name = "selectv2_dynamic_ranked"}> ({
  ^bb0(%arg0: tensor<1xi1>, %arg1: tensor<2x?x8xi32>, %arg2: tensor<2x8x8xi32>):
    %0 = "chlo.broadcast_select"(%arg0, %arg1, %arg2) : (tensor<1xi1>, tensor<2x?x8xi32>, tensor<2x8x8xi32>) -> tensor<2x?x8xi32>
    "func.return"(%0) : (tensor<2x?x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()

