"builtin.module"() ({
  "util.func"() <{function_type = (index) -> (!stream.resource<transient>, !stream.resource<transient>), sym_name = "ConvertSplatConstantsIntoSplats", sym_visibility = "private", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: index):
    %0 = "stream.async.constant"(%arg0) <{value = dense<[1, 2, 3, 4, 5, 6, 7, 8]> : tensor<8xi32>}> : (index) -> !stream.resource<transient>
    %1 = "stream.async.constant"(%arg0) <{value = dense<3> : tensor<8xi32>}> : (index) -> !stream.resource<transient>
    "util.return"(%0, %1) : (!stream.resource<transient>, !stream.resource<transient>) -> ()
  }) : () -> ()
}) : () -> ()

