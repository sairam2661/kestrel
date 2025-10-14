module {
  func.func @execute_region_with_conflict(%arg0: tensor<?xf32> {bufferization.writable = true}) -> (f32, tensor<?xf32>, f32) {
    %cst = arith.constant 0.000000e+00 : f32
    %c7 = arith.constant 7 : index
    %0:3 = scf.execute_region -> (f32, tensor<?xf32>, f32) {
      %inserted = tensor.insert %cst into %arg0[%c7] : tensor<?xf32>
      scf.yield %cst, %inserted, %cst : f32, tensor<?xf32>, f32
    }
    %extracted = tensor.extract %arg0[%c7] : tensor<?xf32>
    return %0#0, %0#1, %extracted : f32, tensor<?xf32>, f32
  }
}

