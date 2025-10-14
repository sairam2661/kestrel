module {
  func.func @get_vector_scale() -> index {
    %vscale = vector.vscale
    return %vscale : index
  }
}

