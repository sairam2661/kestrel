"builtin.module"() ({
  "util.func"() <{function_type = (tensor<?x3xi64>) -> tensor<?x3xi64>, sym_name = "insert_convert_dynamic_dims", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<?x3xi64>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %2 = "tensor.insert"(%1, %arg0, %0, %0) : (i64, tensor<?x3xi64>, index, index) -> tensor<?x3xi64>
    "util.return"(%2) : (tensor<?x3xi64>) -> ()
  }) : () -> ()
}) : () -> ()

