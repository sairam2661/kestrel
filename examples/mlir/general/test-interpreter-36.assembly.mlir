module {
  func.func @get_consumer_fail_1(%arg0: index, %arg1: index) {
    %0 = arith.muli %arg0, %arg1 : index
    %1 = arith.muli %arg0, %arg1 : index
    return
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
      %0 = transform.structured.match ops{["arith.muli"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.get_consumers_of_result %0[0] : (!transform.any_op) -> !transform.any_op
      transform.yield 
    }
  }
}

