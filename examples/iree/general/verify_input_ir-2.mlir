"builtin.module"() ({
  "util.func"() <{function_type = (tensor<?xf32>) -> tensor<?xf32>, sym_name = "check_no_unrealized_cast", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<?xf32>):
    %0 = "builtin.unrealized_conversion_cast"(%arg0) : (tensor<?xf32>) -> memref<?xf32>
    %1 = "builtin.unrealized_conversion_cast"(%0) : (memref<?xf32>) -> tensor<?xf32>
    "util.return"(%1) : (tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

