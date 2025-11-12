"builtin.module"() ({
  "func.func"() <{function_type = (!torch,vector<5xf32>, !torch,vector<5xf32>) -> !torch,vector<5xf32>, sym_name = "torch.aten.add_uv$canonicalize"}> ({
  ^bb0(%arg0: !torch,vector<5xf32>, 	!arg1, !torch,vector<5xf32>	into 	!arg2):
    %0 = "torch.aten.add_uv"(%arg0, %arg1) : (!torch,vector<5xf32>, !torch,vector<5xf32>) -> !torch,vector<5xf32>
    "func.return"(%0) : (!torch,vector<5xf32>) -> ()
  }) : () -> ()
}) : () -> ()