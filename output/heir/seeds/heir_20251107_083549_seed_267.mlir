"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi16>, tensor<4xi16>, !secret_secret, !secret_secret) -> (tensor<4xi16>, !secret_secret), sym_name = "mixed_op_complexity"}> ({
  ^bb0(%arg0: tensor<4xi16>, %arg1: tensor<4xi16>, %arg2: !secret_secret, %arg3: !secret_secret):
    %0 = "tensor.extract"(%arg0, "0") : (tensor<4xi16>, index) -> i16
    %1 = "tensor.extract"(%arg1, "0") : (tensor<4xi16>, index) -> i16
    %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %3 = "tensor.extract"(%arg0, "1") : (tensor<4xi16>, index) -> i16
    %4 = "tensor.extract"(%arg1, "1") : (tensor<4xi16>, index) -> i16
    %5 = "arith.muli"(%3, %4) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %6 = "tensor.extract"(%arg0, "2") : (tensor<4xi16>, index) -> i16
    %7 = "tensor.extract"(%arg1, "2") : (tensor<4xi16>, index) -> i16
    %8 = "arith.muli"(%6, %7) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %9 = "tensor.extract"(%arg0, "3") : (tensor<4xi16>, index) -> i16
    %10 = "tensor.extract"(%arg1, "3") : (tensor<4xi16>, index) -> i16
    %11 = "arith.muli"(%9, %10) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %12 = "arith.addi"(%2, %5) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %13 = "arith.addi"(%12, %8) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %14 = "arith.addi"(%13, %11) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %15 = "tensor_ext.create"(%14) <{type = tensor<4xi16>}> : (i16) -> tensor<4xi16>
    %16 = "secret.generic"(%arg2) ({
    ^bb1(%arg4: i1):
      %17 = "comb.truth_table"() <{table = [0, 1, 1, 0]}> : () -> i1
      "secret.yield"(%17) : (i1) -> ()
    }) : (!secret_secret) -> !secret_secret
    %18 = "secret.generic"(%arg3) ({
    ^bb2(%arg5: i1):
      %19 = "comb.truth_table"() <{table = [1, 0, 0, 1]}> : () -> i1
      "secret.yield"(%19) : (i1) -> ()
    }) : (!secret_secret) -> !secret_secret
    "func.return"(%15, %18) : (tensor<4xi16>, !secret_secret) -> ()
  }) : () -> ()
}) : () -> ()