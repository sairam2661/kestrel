module {
  func.func @use_of_unknown_op_2(%arg0: tensor<?xf32>) -> tensor<?xf32> {
    %0 = "test.dummy_op"(%arg0) : (tensor<?xf32>) -> tensor<?xf32>
    %1 = "test.another_dummy_op"(%0) : (tensor<?xf32>) -> tensor<?xf32>
    return %1 : tensor<?xf32>
  }
}

