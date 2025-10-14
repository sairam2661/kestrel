module {
  func.func @if_no_else(%arg0: i1, %arg1: index, %arg2: memref<?xf32>, %arg3: i8) {
    scf.if %arg0 {
      "some_op"(%arg0, %arg2) : (i1, memref<?xf32>) -> ()
    }
    return
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["scf.if"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["some_op"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      transform.scf.take_assumed_branch %0 : (!transform.any_op) -> ()
      transform.print %1 : !transform.any_op
      transform.yield 
    }
  }
}

