"builtin.module"() ({
  "func.func"() <{function_type = (!torch,vector<5xi32>, !torch,vector<5xi32>) -> !torch,vector<10xi32>, sym_name = "vector_concat_and_eq"}> ({
  ^bb0(%arg0: !torch,vector<5xi32>, 	!arg1		-> !torch,vector<10xi32>):
    %0 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch,i32
    %1 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch,i32
    %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch,i32, !torch,i32) -> !torch,vector<2xi32>
    %3 = "torch.aten.cat"(%arg0, %arg1) : (!torch,vector<5xi32>, !torch,vector<5xi32>) -> !torch,vector<10xi32>
    %4 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch,vector<5xi32>, !torch,vector<5xi32>) -> !torch,vector<5xi1>
    %5 = "torch.aten.size.int"(%4) : (!torch,vector<5xi1>) -> !torch,i64
    "func.return"(%3) : (!torch,vector<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()