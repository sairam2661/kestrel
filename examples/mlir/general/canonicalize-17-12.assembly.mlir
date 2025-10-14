module {
  func.func @infer_concat_operand_types(%arg0: tensor<?x12xi32>, %arg1: tensor<?x?xi32>) -> tensor<?x12xi32> {
    %concat = tensor.concat dim(0) %arg0, %arg1 : (tensor<?x12xi32>, tensor<?x?xi32>) -> tensor<?x12xi32>
    return %concat : tensor<?x12xi32>
  }
}

