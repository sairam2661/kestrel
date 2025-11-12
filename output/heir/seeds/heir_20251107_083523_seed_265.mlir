"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {}, {}], function_type = (i32, tensor<4xi16>, !secretsecret) -> tensor<4xi16>, sym_name = "complex_op_combo"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4xi16>, %arg2: !secretsecret):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "arith.constant"() <{value = 10 : i16}> : () -> i16
    %2 = "tensor.extract"(%arg1, %0) : (tensor<4xi16>, index) -> i16
    %3 = "arith.addi"(%2, %1) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
    %4 = "secret.generic"(%arg2) ({
    ^bb0(%arg3: i16):
      %5 = "arith.muli"(%arg3, %arg0) <{overflowFlags = #arithoverflownone}> : (i16, i32) -> i16
      %6 = "arith.subi"(%5, %3) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
      "secret.yield"(%6) : (i16) -> ()
    }) : (!secretsecret) -> !secretsecret
    %7 = "tensor_ext.assign_layout"(%arg1) <{layout = #stridedlayoutoffset0strides012}> : (tensor<4xi16>) -> tensor<4xi16>
    %8 = "tensor.insert"(%3, %7, %0) : (i16, tensor<4xi16>, index) -> tensor<4xi16>
    %9 = "scf.for"(%arg0, %0, %0) ({
    ^bb0(%arg4: i32, %arg5: tensor<4xi16>):  %10 = "arith.addi"(%arg4, 1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %11 = "tensor.extract"(%arg5, %arg4) : (tensor<4xi16>, i32) -> i16
      %12 = "arith.muli"(%11, %arg0) <{overflowFlags = #arithoverflownone}> : (i16, i32) -> i16
      %13 = "tensor.insert"(%12, %arg5, %arg4) : (i16, tensor<4xi16>, i32) -> tensor<4xi16>
      "scf.yield"(%10, %13) : (i32, tensor<4xi16>) -> ()
    }) : (i32, tensor<4xi16>) -> (i32, tensor<4xi16>)
    "func.return"(%8) : (tensor<4xi16>) -> ()
  }) : () -> ()
}) : () -> ()