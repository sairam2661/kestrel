#map = affine_map<(d0)[s0] -> (-d0 + s0)>
module {
  func.func @make_empty_loop_independent(%arg0: index, %arg1: index, %arg2: index) {
    scf.for %arg3 = %arg0 to %arg1 step %arg2 {
      %0 = affine.apply #map(%arg3)[%arg1]
      %1 = tensor.empty(%0) : tensor<?xf32>
      "dummy.some_use"(%1) : (tensor<?xf32>) -> ()
    }
    return
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["tensor.empty"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.tensor.make_loop_independent %0 {num_loops = 1 : i64} : (!transform.any_op) -> !transform.any_op
      transform.yield 
    }
  }
}

