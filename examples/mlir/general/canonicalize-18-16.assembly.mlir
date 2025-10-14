module {
  func.func @tensor_cast_to_buffer(%arg0: tensor<4x6x16x32xi8>) -> memref<?x?x16x32xi8> {
    %cast = tensor.cast %arg0 : tensor<4x6x16x32xi8> to tensor<?x?x16x32xi8>
    %0 = bufferization.to_buffer %cast : tensor<?x?x16x32xi8> to memref<?x?x16x32xi8>
    return %0 : memref<?x?x16x32xi8>
  }
}

