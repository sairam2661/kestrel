"builtin.module"() ({
"func.func"() <{function_type = (!torch_vtensorliteral_dense_tensor_1xi1, !torch_vtensorliteral_dense_tensor_1xi1, !torch_int) -> !torch_vtensorliteral_dense_tensor_1xi1, sym_name = "torch_aten_where_ScalarOther$complex"}> ({
^bb0(%arg0: !torch_vtensorliteral_dense_tensor_1xi1, %arg1: !torch_vtensorliteral_dense_tensor_1xi1, %arg2: !torch_int):
    %0 = "torch.aten.where.ScalarOther"(%arg0, %arg1, %arg2) : (!torch_vtensorliteral_dense_tensor_1xi1, !torch_vtensorliteral_dense_tensor_1xi1, !torch_int) -> !torch_vtensorliteral_dense_tensor_1xi1
    "func.return"(%0) : (!torch_vtensorliteral_dense_tensor_1xi1) -> ()
}) : () -> ()
}) : () -> ()