module {
  func.func private @no_interface_no_operands(%arg0: tensor<?x?x?xf16>) -> memref<?x?x?xf16> {
    %0 = bufferization.to_buffer %arg0 : tensor<?x?x?xf16> to memref<?x?x?xf16>
    return %0 : memref<?x?x?xf16>
  }
}

