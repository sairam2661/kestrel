module {
  func.func @bar(%arg0: i1) {
    "another_op"(%arg0) : (i1) -> ()
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["another_op"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.replace %0 {
        "dummy_op"() : () -> ()
      } : (!transform.any_op) -> !transform.any_op
      transform.yield 
    }
  }
}

