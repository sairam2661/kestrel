module {
  func.func @fold_multiple_memory_space_cast(%arg0: memref<?xf32>) -> memref<?xf32, 2> {
    %memspacecast = memref.memory_space_cast %arg0 : memref<?xf32> to memref<?xf32, 1>
    %memspacecast_0 = memref.memory_space_cast %memspacecast : memref<?xf32, 1> to memref<?xf32, 2>
    return %memspacecast_0 : memref<?xf32, 2>
  }
}

