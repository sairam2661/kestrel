"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_2, sym_name = "torch_fuzz_test"}> ({
    ^bb0(%arg0: !torch_vtensor_0, %arg1: !torch_vtensor_1):
      %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %c2 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      
      %size0 = "torch.aten.size.int"(%arg0, %c0) : (!torch_vtensor_0, !torch_int) -> !torch_int
      %size1 = "torch.aten.size.int"(%arg1, %c1) : (!torch_vtensor_1, !torch_int) -> !torch_int
      
      %eq = "torch.aten.eq.Tensor"(%size0, %size1) : (!torch_int, !torch_int) -> !torch_bool
      
      %cond = "scf.if"(%eq) ({
      ^bb1:
        %concat = "torch.aten.cat"(%arg0, %arg1) : (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_2
        "scf.yield"(%concat) : (!torch_vtensor_2)
      }) {
      } : (!torch_bool) -> (!torch_vtensor_2)
      
      "func.return"(%cond) : (!torch_vtensor_2) -> ()
  }) : () -> ()
}) : () -> ()