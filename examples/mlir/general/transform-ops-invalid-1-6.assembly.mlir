module {
  func.func private @cond() -> i1
  func.func private @body()
  func.func @loop_outline_op_multi_region() {
    scf.while : () -> () {
      %0 = func.call @cond() : () -> i1
      scf.condition(%0)
    } do {
      func.call @body() : () -> ()
      scf.yield
    }
    return
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["scf.while"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %function, %call = transform.loop.outline %0 {func_name = "foo"} : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.yield 
    }
  }
}

