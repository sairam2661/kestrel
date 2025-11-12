"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_constant_str) -> !torch_vtensor, sym_name = "unique_fuzz_func"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_constant_str):
      %0 = "torch.aten.slice.Tensor"(%arg0, %c0, %c0, %c5) : (!torch_vtensor, !torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_vtensor
      %1 = "torch.aten.view"(%0, %c4, %c2) : (!torch_vtensor, !torch_constant_int, !torch_constant_int) -> !torch_vtensor
      %2 = "torch.aten.add.Tensor"(%1, %arg0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %3 = "torch.aten._shape_as_tensor"(%2) : (!torch_vtensor) -> !torch_vtensor
      %4 = "torch.aten.item"(%3) : (!torch_vtensor) -> !torch_constant_int
      "func.return"(%4) : (!torch_constant_int) -> ()
    ^bb1(%arg2: !torch_constant_int):
      %5 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torch_constant_float
      "func.return"(%5) : (!torch_constant_float) -> ()
  }) {successor_list = [#"^bb0", #"^bb1"]} : () -> ()
}) : () -> ()


#c0 = "torch.constant.int" : !torch_constant_int
#c1 = "torch.constant.int" : !torch_constant_int
#c2 = "torch.constant.int" : !torch_constant_int
#c3 = "torch.constant.int" : !torch_constant_int
#c4 = "torch.constant.int" : !torch_constant_int
#c5 = "torch.constant.int" : !torch_constant_int
#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant_int
#torch_constant_str = !torch_constant_str
#torch_constant_float = !torch_constant_float
#torch_vtensor = !torch_vtensor

#torch_constant_int = !torch_constant