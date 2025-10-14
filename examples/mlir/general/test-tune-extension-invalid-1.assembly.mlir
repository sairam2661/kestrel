module {
  func.func private @f()
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.tune.knob<"coin"> options = [true, false] -> !transform.any_param
      transform.yield 
    }
  }
}

