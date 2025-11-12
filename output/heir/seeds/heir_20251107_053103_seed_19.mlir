"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret_tensor, i64) -> !secret_secret_tensor, sym_name = "tensor_insert_extract_fuzz", sym_visibility = "private"}> ({
    ^bb0(%arg0: !secret_secret_tensor, %arg1: i64):
      %c0_i64 = "arith.constant"() <{value = 0 : i64}> : () -> i64
      %c42_i16 = "arith.constant"() <{value = 42 : i16}> : () -> i16
      %tensor_insert_0 = "tensor.insert"(%c42_i16, %arg0, %c0_i64) : (i16, !secret_secret_tensor, i64) -> !secret_secret_tensor
      %tensor_insert_1 = "tensor.insert"(%c42_i16, %tensor_insert_0, %arg1) : (i16, !secret_secret_tensor, i64) -> !secret_secret_tensor
      %extract_index_0 = "arith.constant"() <{value = 1 : i64}> : () -> i64
      %extract_index_1 = "arith.constant"() <{value = 2 : i64}> : () -> i64
      %extracted_value_0 = "tensor.extract"(%tensor_insert_1, %extract_index_0) : (!secret_secret_tensor, i64) -> i16
      %extracted_value_1 = "tensor.extract"(%tensor_insert_1, %extract_index_1) : (!secret_secret_tensor, i64) -> i16
      %tensor_insert_2 = "tensor.insert"(%extracted_value_0, %tensor_insert_1, %c0_i64) : (i16, !secret_secret_tensor, i64) -> !secret_secret_tensor
      %tensor_insert_3 = "tensor.insert"(%extracted_value_1, %tensor_insert_2, %arg1) : (i16, !secret_secret_tensor, i64) -> !secret_secret_tensor
      "func.return"(%tensor_insert_3) : (!secret_secret_tensor) -> ()
  }) : () -> ()
}) : () -> ()