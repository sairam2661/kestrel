module {
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["func.return"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.split %0 after 16  {dimension = 1 : i64} : !transform.any_op
      transform.yield 
    }
  }
  func.func @noop(%arg0: tensor<100xf32>, %arg1: tensor<100xf32>) -> tensor<100xf32> {
    return %arg0 : tensor<100xf32>
  }
}

