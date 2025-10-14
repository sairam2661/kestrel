module {
  func.func @dont_fold_rank(%arg0: !shape.shape) -> !shape.size {
    %0 = shape.rank %arg0 : !shape.shape -> !shape.size
    return %0 : !shape.size
  }
}

