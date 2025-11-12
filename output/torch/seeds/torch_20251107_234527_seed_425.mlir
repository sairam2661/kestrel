"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "fuzz_torch_ops"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %shape0 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %size0 = "torch.aten.size.int"(%arg0, %torch_constant_int_0) : (!torch_vtensor, !torch_constant_int) -> !torch_constant_int
      %size1 = "torch.aten.size.int"(%arg0, %torch_constant_int_1) : (!torch_vtensor, !torch_constant_int) -> !torch_constant_int
      %cat0 = "torch.aten.cat"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %eq0 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %add0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%add0) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_constant_int, !torch_constant_int) -> !torch_vtensor, sym_name = "make_quantized_tensor"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_constant_int, %arg2: !torch_constant_int):
      %quant_tensor = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %arg1, %arg2, %torch_constant_int_0, %torch_constant_int_0) : (!torch_vtensor, !torch_constant_int, !torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_vtensor
      "func.return"(%quant_tensor) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch_constant_int, sym_name = "constant_int_generator"}> ({
    ^bb0():
      %const = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_constant_int
      "func.return"(%const) : (!torch_constant_int) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch_constant_int, sym_name = "zero_constant_int"}> ({
    ^bb0():
      %zero_const = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_constant_int
      "func.return"(%zero_const) : (!torch_constant_int) -> ()
  }) : () -> ()
}) : () -> ()

"torch.constant.int"()  ({value 	.environment
        : 	( 	)
        }	
    )	
    : 	( 	)	
    -> 	!torch_constant_int

"torch.constant.int"()  ({value 	.environment
        : 	( 	)
        }	
    )	
    : 	( 	)	
    -> 	!torch_constant_int