"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_constant_bool) -> !torch_vtensor_literal, sym_name = "fuzzing_func"}> ({
  ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_constant_bool):
    %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %c2 = "torch.constant.float"() <{value = 1.000000e+00 : f64}> : () -> !torch_float
    
    %cond = "torch.aten.eq.Tensor"(%arg1, %c1) : (!torch_constant_bool, !torch_int) -> !torch_bool
    
    ^bb1(%cond_val: !torch_bool):
      %result = "scf.if"(%cond_val) ({
        ^bb2(%cond_val1: i1):
          %new_tensor = "torch.aten.add.Tensor"(%arg0, %c2) : (!torch_vtensor_literal, !torch_float) -> !torch_vtensor_literal
          scf.yield %new_tensor : !torch_vtensor_literal
      }) : (!torch_bool) -> !torch_vtensor_literal
    
    "func.return"(%result) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()