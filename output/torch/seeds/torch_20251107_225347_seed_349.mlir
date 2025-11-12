"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_constant_bool, !torch_constant_int, !torch_constant_int) -> !torch_vtensor, sym_name = "torch_fuzzer_example"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_constant_bool, %arg2: !torch_constant_int, %arg3: !torch_constant_int):
      %0 = "torch.aten.view"(%arg0) <{sizes = [2, 3, 4]}> : (!torch_vtensor_literal) -> !torch_vtensor
      %1 = "torch.aten.slice.Tensor"(%0, %arg2, %arg3, 2) : (!torch_vtensor, !torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_vtensor
      %2 = "torch.aten.index_select"(%1, %arg2, %arg3) : (!torch_vtensor, !torch_constant_int, !torch_constant_int) -> !torch_vtensor
      %3 = "torch.aten.eq.Tensor"(%2, %arg0) : (!torch_vtensor, !torch_vtensor_literal) -> !torch_vtensor
      %4 = "torch.aten.cat"(%3) <{dim = 1}> : (!torch_vtensor) -> !torch_vtensor
      "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()

#ssa_id_list
  =#torch_constant_int
  #__torch_constant_bool

  =#torch_vtensor_literal
   #__torch_vtensor

  =#torch_constant_int
   #__torch_constant_int

  =#torch_constant_int
  #__torch_constant_int

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
  #__torch_vtensor

  =#torch_vtensor
 