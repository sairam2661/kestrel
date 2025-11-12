"builtin.module"() ({
  "util.func"() <{function_type = (index) -> !stream.resource<transient>, sym_name = "asyncConstant", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index):
    %0 = "stream.async.constant"(%arg0) <{value = dense<3> : tensor<8xi32>}> : (index) -> !stream.resource<transient>
    "util.return"(%0) : (!stream.resource<transient>) -> ()
  }) : () -> ()
}) : () -> ()

