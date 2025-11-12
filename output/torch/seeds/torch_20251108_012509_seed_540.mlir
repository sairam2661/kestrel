"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_array_type, !torch_vtensor_array_type) -> !torch_vtensor_array_type, sym_name = "unaryOpWithComplexFlow"}> ({
    ^bb0(%arg0: !torch_vtensor_array_type, %arg1: !torch_vtensor_array_type):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.aten.add"(%arg0, %0) : (!torch_vtensor_array_type, !torch_int) -> !torch_vtensor_array_type
      %2 = "scf.if"(%arg1) <{resultTypes = !torch_vtensor_array_type}> ({
        ^bb1(%arg2: !torch_vtensor_array_type):
          %3 = "torch.aten.mul"(%arg2, %0) : (!torch_vtensor_array_type, !torch_int) -> !torch_vtensor_array_type
          "scf.yield"(%3) : (!torch_vtensor_array_type)
      }) {
        "scf.yield"="() : ()"
      } : (!torch_vtensor_array_type) -> !torch_vtensor_array_type
      %4 = "torch.aten.add"(%1, %2) : (!torch_vtensor_array_type, !torch_vtensor_array_type) -> !torch_vtensor_array_type
      "func.return"(%4) : (!torch_vtensor_array_type) -> ()
  }) : () -> ()
}) : () -> ()