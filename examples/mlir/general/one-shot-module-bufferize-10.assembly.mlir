module {
  func.func private @f0(tensor<?xf32>) -> f32
  func.func @f1(%arg0: tensor<?xf32>) -> f32 {
    %0 = call @f0(%arg0) : (tensor<?xf32>) -> f32
    return %0 : f32
  }
  func.func @f2(%arg0: tensor<?xf32>) -> f32 {
    %0 = call @f1(%arg0) : (tensor<?xf32>) -> f32
    return %0 : f32
  }
  func.func @main(%arg0: tensor<?xf32> {bufferization.writable = false}) -> f32 {
    %0 = call @f2(%arg0) : (tensor<?xf32>) -> f32
    return %0 : f32
  }
}

