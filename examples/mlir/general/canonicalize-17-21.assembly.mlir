module {
  func.func @extract_from_tensor.from_elements_variable_3d(%arg0: f32, %arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32, %arg6: f32, %arg7: f32, %arg8: f32, %arg9: f32, %arg10: f32, %arg11: f32) -> (f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32) {
    %from_elements = tensor.from_elements %arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11 : tensor<3x2x2xf32>
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %extracted = tensor.extract %from_elements[%c0, %c0, %c0] : tensor<3x2x2xf32>
    %extracted_0 = tensor.extract %from_elements[%c0, %c0, %c1] : tensor<3x2x2xf32>
    %extracted_1 = tensor.extract %from_elements[%c0, %c1, %c0] : tensor<3x2x2xf32>
    %extracted_2 = tensor.extract %from_elements[%c0, %c1, %c1] : tensor<3x2x2xf32>
    %extracted_3 = tensor.extract %from_elements[%c1, %c0, %c0] : tensor<3x2x2xf32>
    %extracted_4 = tensor.extract %from_elements[%c1, %c0, %c1] : tensor<3x2x2xf32>
    %extracted_5 = tensor.extract %from_elements[%c1, %c1, %c0] : tensor<3x2x2xf32>
    %extracted_6 = tensor.extract %from_elements[%c1, %c1, %c1] : tensor<3x2x2xf32>
    %extracted_7 = tensor.extract %from_elements[%c2, %c0, %c0] : tensor<3x2x2xf32>
    %extracted_8 = tensor.extract %from_elements[%c2, %c0, %c1] : tensor<3x2x2xf32>
    %extracted_9 = tensor.extract %from_elements[%c2, %c1, %c0] : tensor<3x2x2xf32>
    %extracted_10 = tensor.extract %from_elements[%c2, %c1, %c1] : tensor<3x2x2xf32>
    return %extracted, %extracted_0, %extracted_1, %extracted_2, %extracted_3, %extracted_4, %extracted_5, %extracted_6, %extracted_7, %extracted_8, %extracted_9, %extracted_10 : f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32
  }
}

