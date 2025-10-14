module {
  func.func @extract_from_tensor.from_elements_3d() -> (f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32) {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 1.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant 3.000000e+00 : f32
    %cst_3 = arith.constant 4.000000e+00 : f32
    %cst_4 = arith.constant 5.000000e+00 : f32
    %cst_5 = arith.constant 6.000000e+00 : f32
    %cst_6 = arith.constant 7.000000e+00 : f32
    %cst_7 = arith.constant 8.000000e+00 : f32
    %cst_8 = arith.constant 9.000000e+00 : f32
    %cst_9 = arith.constant 1.000000e+01 : f32
    %cst_10 = arith.constant 1.100000e+01 : f32
    %from_elements = tensor.from_elements %cst, %cst_0, %cst_1, %cst_2, %cst_3, %cst_4, %cst_5, %cst_6, %cst_7, %cst_8, %cst_9, %cst_10 : tensor<3x2x2xf32>
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %extracted = tensor.extract %from_elements[%c0, %c0, %c0] : tensor<3x2x2xf32>
    %extracted_11 = tensor.extract %from_elements[%c0, %c0, %c1] : tensor<3x2x2xf32>
    %extracted_12 = tensor.extract %from_elements[%c0, %c1, %c0] : tensor<3x2x2xf32>
    %extracted_13 = tensor.extract %from_elements[%c0, %c1, %c1] : tensor<3x2x2xf32>
    %extracted_14 = tensor.extract %from_elements[%c1, %c0, %c0] : tensor<3x2x2xf32>
    %extracted_15 = tensor.extract %from_elements[%c1, %c0, %c1] : tensor<3x2x2xf32>
    %extracted_16 = tensor.extract %from_elements[%c1, %c1, %c0] : tensor<3x2x2xf32>
    %extracted_17 = tensor.extract %from_elements[%c1, %c1, %c1] : tensor<3x2x2xf32>
    %extracted_18 = tensor.extract %from_elements[%c2, %c0, %c0] : tensor<3x2x2xf32>
    %extracted_19 = tensor.extract %from_elements[%c2, %c0, %c1] : tensor<3x2x2xf32>
    %extracted_20 = tensor.extract %from_elements[%c2, %c1, %c0] : tensor<3x2x2xf32>
    %extracted_21 = tensor.extract %from_elements[%c2, %c1, %c1] : tensor<3x2x2xf32>
    return %extracted, %extracted_11, %extracted_12, %extracted_13, %extracted_14, %extracted_15, %extracted_16, %extracted_17, %extracted_18, %extracted_19, %extracted_20, %extracted_21 : f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32
  }
}

