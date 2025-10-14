module {
  func.func @execute_region_test(%arg0: tensor<?xf32>) -> (f32, tensor<?xf32>, f32) {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 1.000000e+00 : f32
    %c7 = arith.constant 7 : index
    %0:3 = scf.execute_region -> (f32, tensor<?xf32>, f32) {
      %inserted = tensor.insert %cst_0 into %arg0[%c7] : tensor<?xf32>
      scf.yield %cst, %inserted, %cst_0 : f32, tensor<?xf32>, f32
    }
    return %0#0, %0#1, %0#2 : f32, tensor<?xf32>, f32
  }
}

