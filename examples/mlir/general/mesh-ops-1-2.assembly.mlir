module {
  func.func @set_mesh_outputs(%arg0: i32, %arg1: i32) {
    spirv.EXT.SetMeshOutputs %arg0, %arg1 : i32, i32
    spirv.Return
  }
}

