module {
  func.func @map(%arg0: memref<64xf32>, %arg1: memref<64xf32>, %arg2: memref<64xf32>) {
    linalg.map { arith.addf } ins(%arg0, %arg1 : memref<64xf32>, memref<64xf32>) outs(%arg2 : memref<64xf32>)
    return
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.map"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.convert_to_loops %0 : (!transform.any_op) -> !transform.any_op
      transform.yield 
    }
  }
}

