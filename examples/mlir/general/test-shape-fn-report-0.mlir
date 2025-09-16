"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x20xf32>) -> tensor<10x20xf32>, sym_name = "tanh"}> ({
  ^bb0(%arg1: tensor<10x20xf32>):
    %1 = "math.tanh"(%arg1) <{fastmath = #arith.fastmath<none>}> : (tensor<10x20xf32>) -> tensor<10x20xf32>
    %2 = "test.same_operand_result_type"(%1) : (tensor<10x20xf32>) -> tensor<10x20xf32>
    "func.return"(%2) : (tensor<10x20xf32>) -> ()
  }) {shape.function = @shape_lib::@same_result_shape} : () -> ()
  "shape.function_library"() <{mapping = {test.same_operand_result_type = @same_result_shape}, sym_name = "shape_lib"}> ({
    "shape.func"() <{function_type = (!shape.value_shape) -> !shape.shape, sym_name = "same_result_shape"}> ({
    ^bb0(%arg0: !shape.value_shape):
      %0 = "shape.shape_of"(%arg0) : (!shape.value_shape) -> !shape.shape
      "shape.return"(%0) : (!shape.shape) -> ()
    }) : () -> ()
  }) : () -> ()
}) {shape.lib = [@shape_lib]} : () -> ()

