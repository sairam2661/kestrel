"builtin.module"() ({
  "util.func"() <{function_type = (tensor<i64>) -> tensor<i64>, sym_name = "insert_convert_zero_ranked_tensor", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<i64>):
    %0 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %1 = "tensor.insert"(%0, %arg0) : (i64, tensor<i64>) -> tensor<i64>
    "util.return"(%1) : (tensor<i64>) -> ()
  }) : () -> ()
}) : () -> ()

