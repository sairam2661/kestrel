"builtin.module"() ({
  "util.func"() <{function_type = (tensor<32x?x64xf16>, tensor<32x?x64xf16>) -> tensor<64x?x64xf16>, sym_name = "test_outer_dim_concat", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<32x?x64xf16>, %arg1: tensor<32x?x64xf16>):
    %0 = "tensor.concat"(%arg0, %arg1) <{dim = 0 : i64}> : (tensor<32x?x64xf16>, tensor<32x?x64xf16>) -> tensor<64x?x64xf16>
    "util.return"(%0) : (tensor<64x?x64xf16>) -> ()
  }) : () -> ()
}) : () -> ()

