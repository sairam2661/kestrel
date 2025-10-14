module {
  func.func @extract_from_collapse_shape(%arg0: tensor<1x1x8xi8>) -> (i8, i8) {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %collapsed = tensor.collapse_shape %arg0 [[0, 1, 2]] : tensor<1x1x8xi8> into tensor<8xi8>
    %extracted = tensor.extract %collapsed[%c0] : tensor<8xi8>
    %extracted_0 = tensor.extract %collapsed[%c1] : tensor<8xi8>
    return %extracted, %extracted_0 : i8, i8
  }
}

