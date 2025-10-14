module {
  func.func @add_poison() -> !shape.size {
    %c2 = shape.const_size 2
    %0 = ub.poison : !shape.size
    %1 = shape.add %c2, %0 : !shape.size, !shape.size -> !shape.size
    return %1 : !shape.size
  }
}

