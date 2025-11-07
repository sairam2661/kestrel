"builtin.module"() ({
  "func.func"() <{arg_attrs = [{shape.shape = [42]}, {shape.shape = [44]}], function_type = (tensor<?xi16>, tensor<?xi16>) -> tensor<?xi16>, sym_name = "mismatched_shape"}> ({
  ^bb0(%arg0: tensor<?xi16>, %arg1: tensor<?xi16>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<?xi16>, tensor<?xi16>) -> tensor<?xi16>
    "func.return"(%0) : (tensor<?xi16>) -> ()
  }) : () -> ()
}) : () -> ()

