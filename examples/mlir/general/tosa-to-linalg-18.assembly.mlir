module {
  func.func @test_simple_i32(%arg0: tensor<1xi32>, %arg1: tensor<1xui32>, %arg2: tensor<1xui64>) {
    %0 = tosa.add %arg0, %arg0 : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
    %1 = tosa.sub %arg0, %arg0 : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
    %2 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %3 = tosa.mul %arg0, %arg0, %2 : (tensor<1xi32>, tensor<1xi32>, tensor<1xi8>) -> tensor<1xi32>
    %4 = "tosa.const"() <{values = dense<2> : tensor<1xi8>}> : () -> tensor<1xi8>
    %5 = tosa.mul %arg0, %arg0, %4 : (tensor<1xi32>, tensor<1xi32>, tensor<1xi8>) -> tensor<1xi32>
    %6 = tosa.intdiv %arg0, %arg0 : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
    %7 = "tosa.const"() <{values = dense<0> : tensor<1xi32>}> : () -> tensor<1xi32>
    %8 = "tosa.const"() <{values = dense<0> : tensor<1xi32>}> : () -> tensor<1xi32>
    %9 = tosa.negate %arg0, %7, %8 : (tensor<1xi32>, tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
    %10 = tosa.bitwise_and %arg0, %arg0 : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
    %11 = tosa.bitwise_or %arg0, %arg0 : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
    %12 = tosa.bitwise_xor %arg0, %arg0 : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
    %13 = tosa.logical_left_shift %arg0, %arg0 : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
    %14 = tosa.logical_right_shift %arg0, %arg0 : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
    %15 = tosa.arithmetic_right_shift %arg0, %arg0 {round = false} : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
    %16 = tosa.arithmetic_right_shift %arg0, %arg0 {round = true} : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
    %17 = tosa.clz %arg0 : (tensor<1xi32>) -> tensor<1xi32>
    %18 = tosa.greater %0, %1 : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi1>
    %19 = tosa.greater_equal %0, %1 : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi1>
    %20 = tosa.select %18, %0, %1 : (tensor<1xi1>, tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
    %21 = tosa.maximum %0, %1 : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
    %22 = tosa.minimum %0, %1 : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
    %23 = tosa.clamp %0 {max_val = 5 : i32, min_val = 1 : i32} : (tensor<1xi32>) -> tensor<1xi32>
    %24 = tosa.clamp %arg1 {max_val = 32 : ui32, min_val = 4 : ui32} : (tensor<1xui32>) -> tensor<1xui32>
    %25 = tosa.cast %0 : (tensor<1xi32>) -> tensor<1xi16>
    %26 = tosa.cast %0 : (tensor<1xi32>) -> tensor<1xi64>
    %27 = tosa.cast %0 : (tensor<1xi32>) -> tensor<1xi1>
    %28 = tosa.cast %0 : (tensor<1xi32>) -> tensor<1xf32>
    %29 = tosa.abs %arg0 : (tensor<1xi32>) -> tensor<1xi32>
    return
  }
}

