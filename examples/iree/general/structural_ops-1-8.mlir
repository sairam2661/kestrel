"builtin.module"() ({
  "util.func"() <{function_type = (tensor<?xf32>) -> (tensor<?xf32>, i32), sym_name = "basicExtern", sym_visibility = "private", tied_operands = [-1 : index, -1 : index]}> ({
  }) : () -> ()
  "util.func"() <{function_type = (tensor<?xf32>) -> (tensor<?xf32>, i32), sym_name = "basicCall", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: tensor<?xf32>):
    %0:2 = "util.call"(%arg0) <{callee = @basicExtern, tied_operands = [-1 : index, -1 : index]}> : (tensor<?xf32>) -> (tensor<?xf32>, i32)
    "util.return"(%0#0, %0#1) : (tensor<?xf32>, i32) -> ()
  }) : () -> ()
}) : () -> ()

