module {
  func.func @fold_trivial_memory_space_cast(%arg0: memref<?xf32>) -> memref<?xf32> {
    %memspacecast = memref.memory_space_cast %arg0 : memref<?xf32> to memref<?xf32>
    return %memspacecast : memref<?xf32>
  }
}

