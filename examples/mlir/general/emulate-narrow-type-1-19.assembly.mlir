module {
  func.func @memref_memory_space_cast_i4(%arg0: memref<32x128xi4, 1>) -> memref<32x128xi4> {
    %memspacecast = memref.memory_space_cast %arg0 : memref<32x128xi4, 1> to memref<32x128xi4>
    return %memspacecast : memref<32x128xi4>
  }
}

