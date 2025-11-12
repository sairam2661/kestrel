"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {}, {}, {}], function_type = (tensor<4xi16>, i16, i16, i16) -> tensor<4xi16>, sym_name = "complex_rotations"}> ({
  ^bb0(%arg0: tensor<4xi16>, %arg1: i16, %arg2: i16, %arg3: i16):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "secret.generic"(%arg1) ({
    ^bb0(%arg4: i16):
      %3 = "tensor_ext.rotate"(%arg0, %0) : (tensor<4xi16>, index) -> tensor<4xi16>
      "secret.yield"(%3) : (tensor<4xi16>) -> ()
    }) : (i16) -> (tensor<4xi16>)
    %4 = "secret.generic"(%arg2) ({
    ^bb0(%arg5: i16):
      %6 = "tensor_ext.rotate"(%arg0, %1) : (tensor<4xi16>, index) -> tensor<4xi16>
      "secret.yield"(%6) : (tensor<4xi16>) -> ()
    }) : (i16) -> (tensor<4xi16>)
    %7 = "secret.generic"(%arg3) ({
    ^bb0(%arg6: i16):
      %8 = "tensor_ext.rotate"(%arg0, %0) : (tensor<4xi16>, index) -> tensor<4xi16>
      "secret.yield"(%8) : (tensor<4xi16>) -> ()
    }) : (i16) -> (tensor<4xi16>)
    %9 = "arith.addi"(%2, %4) <{overflowFlags = #arith_overflownone}> : (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>
    %10 = "arith.addi"(%9, %7) <{overflowFlags = #arith_overflownone}> : (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>
    "func.return"(%10) : (tensor<4xi16>) -> ()
  }) : () -> ()
}) : () -> ()