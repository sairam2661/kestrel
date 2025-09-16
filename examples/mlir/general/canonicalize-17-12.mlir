"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x12xi32>, tensor<?x?xi32>) -> tensor<?x12xi32>, sym_name = "infer_concat_operand_types"}> ({
  ^bb0(%arg0: tensor<?x12xi32>, %arg1: tensor<?x?xi32>):
    %0 = "tensor.concat"(%arg0, %arg1) <{dim = 0 : i64}> : (tensor<?x12xi32>, tensor<?x?xi32>) -> tensor<?x12xi32>
    "func.return"(%0) : (tensor<?x12xi32>) -> ()
  }) : () -> ()
}) : () -> ()

