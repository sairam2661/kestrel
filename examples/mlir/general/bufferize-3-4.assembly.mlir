module {
  func.func @bufferize_while(%arg0: i64, %arg1: i64, %arg2: tensor<f32>) -> (i64, tensor<f32>) {
    %c2_i64 = arith.constant 2 : i64
    %0:3 = scf.while (%arg3 = %arg0, %arg4 = %arg2) : (i64, tensor<f32>) -> (i64, i64, tensor<f32>) {
      %1 = arith.cmpi slt, %arg3, %arg1 : i64
      scf.condition(%1) %arg3, %arg3, %arg4 : i64, i64, tensor<f32>
    } do {
    ^bb0(%arg3: i64, %arg4: i64, %arg5: tensor<f32>):
      %1 = arith.muli %arg4, %c2_i64 : i64
      scf.yield %1, %arg5 : i64, tensor<f32>
    }
    return %0#1, %0#2 : i64, tensor<f32>
  }
}

