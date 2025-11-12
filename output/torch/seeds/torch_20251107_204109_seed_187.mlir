"builtin.module"() ({
  "func.func"() <{function_type = (!torch,vector<4xi8>, !torch,vector<4xi8>) -> !torch,vector<8xi8>, sym_name = "torch.aten.cat$vector"}> ({
  ^bb0(%arg0: !torch,vector<4xi8>, 	!arg1 	-> !torch,vector<8xi8>):
    %0 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torch,vector<4xi8>, !torch,vector<4xi8>) -> !torch,vector<8xi8>
    %1 = "torch.aten.cat"(%0) : (!torch,vector<8xi8>) -> !torch,vector<8xi8>
    "func.return"(%1) : (!torch,vector<8xi8>) -> ()
  }) : () -> ()
}) : () -> ()