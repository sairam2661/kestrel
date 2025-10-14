module {
  func.func private @private_func(tensor<?xf32>)
  func.func @empty_func() {
    return
  }
}

