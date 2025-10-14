module attributes {shape.lib = [@shape_lib]} {
  func.func @tanh(%arg0: tensor<10x20xf32>) -> tensor<10x20xf32> attributes {shape.function = @shape_lib::@same_result_shape} {
    %0 = math.tanh %arg0 : tensor<10x20xf32>
    %1 = "test.same_operand_result_type"(%0) : (tensor<10x20xf32>) -> tensor<10x20xf32>
    return %1 : tensor<10x20xf32>
  }
  shape.function_library @shape_lib {
    func @same_result_shape(%arg0: !shape.value_shape) -> !shape.shape {
      %0 = shape_of %arg0 : !shape.value_shape -> !shape.shape
      return %0 : !shape.shape
    }
  } mapping {test.same_operand_result_type = @same_result_shape}
}

