"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal_type, !torch_vtensor_literal_type) -> !torch_vtensor_literal_type, sym_name = "fuzz_cat_add_eq"}> ({
    ^bb0(%arg0: !torch_vtensor_literal_type, %arg1: !torch_vtensor_literal_type):
      %size0 = "torch.aten.size.int"(%arg0, %c0) : (!torch_vtensor_literal_type, !torch_i64) -> !torch_i64
      %size1 = "torch.aten.size.int"(%arg1, %c0) : (!torch_vtensor_literal_type, !torch_i64) -> !torch_i64
      %eq_size = "torch.aten.eq.Tensor"(%size0, %size1) : (!torch_i64, !torch_i64) -> !torch_i1
      %if = "scf.if"(%eq_size) ({
        %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_literal_type, !torch_vtensor_literal_type) -> !torch_vtensor_literal_type
        "scf.yield"(%0) : (!torch_vtensor_literal_type)
      }) {
        "scf.yield" 	= !torch_vtensor_literal_type
      }
      : (!torch_i1) -> (!torch_vtensor_literal_type)
      %cat = "torch.aten.cat"(%arg0, %arg1) : (!torch_vtensor_literal_type, !torch_vtensor_literal_type) -> !torch_vtensor_literal_type
      "func.return"(%cat) : (!torch_vtensor_literal_type) -> ()
  }) : () -> ()
}) : () -> ()