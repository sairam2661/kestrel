"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_2, sym_name = "torch_fuzz_test"}> ({
    ^bb0(%arg0: !torch_vtensor_0, %arg1: !torch_vtensor_1):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.str"() <{value = "test"}> : () -> !torch_str
      %2 = "torch.prim.ListConstruct"(%1) : (!torch_str) -> !torch_list
      %3 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch_int) -> !torch_vtensor_0
      %4 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_2
      %5 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor_0, !torch_int) -> !torch_int
      "func.return"(%4, %5) : (!torch_vtensor_2, !torch_int) -> ()
  }) : () -> ()
}) : () -> ()

#torch_vtensor_0 = tensor<4x64xf64>
#torch_vtensor_1 = tensor<4x64xf64>
#torch_vtensor_2 = tensor<4x64xf64>
#torch_int = !torch_int
#torch_str = !torch_str
#torch_list = !torch_list

#loc = "file.mlir":(  )
			->
			!torch_vtensor_2, !torch_int
			#arg0
			=
			!torch_vtensor_0
			#arg1
			=
			!torch_vtensor_1
			#0
			=
			() -> 
			(loc)
			#1
			=
			() -> 
			(loc)
			#2
			=
			() -> 
			(loc)
			#3
			=
			() -> 
			(loc)
			#4
			=
			() -> 
			(loc) 
			#5
			=
			() -> 
			(loc) 
			#func_return
			=
			#4 
			#5 
			=
			() -> 
			(loc) 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  )
			->
			() 
			#loc
			=
			"file.mlir":(  