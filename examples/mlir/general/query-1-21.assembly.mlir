module {
  module {
    func.func private @f()
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
      %0 = transform.structured.match ops{["func.func"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.dlti.query ["CPU", "test.id"] at %0 : (!transform.any_op) -> !transform.any_param
      transform.yield 
    }
  }
}

